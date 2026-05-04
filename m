Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A58C1391
	for <ddprobe@lists.linux.dev>; Mon,  4 May 2026 00:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777853254; cv=none; b=qWkrIdDrMWFjRMZTzIksP/4o4OqmCiJBDA0xmE7iylhSuIg9qoBaRz0L8PEOvizhehW8sgtkNw9RZL03/gaa26jrPrxlNuQPP+rW/3Gb9HQbF4s4TxbtNyo6PeUvldCZEq6jt1d2w6L52wi25jPRytXhQFahosskEk1s/wpsm6c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777853254; c=relaxed/simple;
	bh=x1N0boa1jcNO7DMR21Kw2pXXswfDPm6ZGfssJnEnwoc=;
	h=To:Subject:From:Message-Id:Date; b=BUXmAOOqj+zRfHdfkRa/qLNlNg//i0HzhTVky4Y+CV7d06Z6lAYYzQZFGDh8hu3sYuS3bhZj4FDkgZiTO5oPQYcPLPfoR2ngltlIiFOnj20vikAQ2BfExi1xSjvtJuvDgKJ1MU8aYIw81y6xSEv1t+QVNYJLeV3dLWxjpvl7V7E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oF1rkfSw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oF1rkfSw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1B45C2BCB4
	for <ddprobe@lists.linux.dev>; Mon,  4 May 2026 00:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777853253;
	bh=x1N0boa1jcNO7DMR21Kw2pXXswfDPm6ZGfssJnEnwoc=;
	h=To:Subject:From:Date:From;
	b=oF1rkfSwCh4fQY0tMWQ7A9sj8ehuPCb2saXnfMuOgpIuYSLk4SATz95yhfTfayuvf
	 rq3wLkhTtMfrI2ZBWIZ4RvUc4toHei1Lj/JAgr2h5tkT2aqGvL8kwGCyGKLuEOIecR
	 2Lo0ybTJ2ZRceEIgXP6hGTRTzeh5bBnlnXAbM66MHLCLtUraCCN/OAXKVvbTJHd1Pi
	 SKN3DIqQh9ZxRN8+COp/NlfWJpM9ZwjhQr6dQ8UExCAzeMdj7eEb+z2m6vWyVxtNA5
	 mynthmhCTgq/IhwIp5nXkC4nz2GcTwA1izvxQR1SgKcK21npaLRxnLv9ZvX7LW4VEF
	 FbVcwGqqmClCQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFB55FF885A
	for <ddprobe@lists.linux.dev>; Mon,  4 May 2026 00:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177785325368.14219.14186864301198059018.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 75502bf26f002bcefc6d25787120562d3cbccf6ac520e87e90002f3ebada7b9f
Date: Mon, 04 May 2026 00:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777853253
