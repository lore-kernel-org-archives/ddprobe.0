Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25D2B194A60
	for <ddprobe@lists.linux.dev>; Mon, 16 Jun 2025 19:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750103994; cv=none; b=j8UTMXbyI4ZMX/8jtvM9JrGN+cCAC0kFrHx6p7cxL0BA4ufs5IVA7hjKnWrkRJ6QKyhtxq4/FZtsRO+0UquCCn/NE1R2dCCG55W/g4mQcFcgrylZR7dDyT2H+ho4gYffhxzOT1kC+mZS1WGvfCloOZAXVpGc59u9VXYtrrNxKZA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750103994; c=relaxed/simple;
	bh=mclz5oq8uuUgz3d5GE9veTurOKGey/qpfxk6ET+OcqQ=;
	h=To:Subject:From:Message-Id:Date; b=k8nok1QY/GoPpNoqn7CuXHit5FvP91nz8mm+BZFE0nHoK4Bk+RGaSHvcPYny39UbJkUXNKeF41iVjAJBXJChokyUwUgxFQjLrs6IyBFYWZdBGO+EhT1e8nnWD/Ek1+P/xYqahmBUx1aRcP2wH0bYj81cf0WyH4CUpxdX986wTf8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ryoMu1Ob; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ryoMu1Ob"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A99C3C4CEEA
	for <ddprobe@lists.linux.dev>; Mon, 16 Jun 2025 19:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750103993;
	bh=mclz5oq8uuUgz3d5GE9veTurOKGey/qpfxk6ET+OcqQ=;
	h=To:Subject:From:Date:From;
	b=ryoMu1Ob4FhCzErWRehWWPIEGgWSWCtkFCRNAApl9DpPqQAhyDQ5C6C9PPd5tv2yu
	 kBCQbMFZyfxJqDlNNkL2S2p2fya7Kgo3fFmglk13JxP/88SoA2o0E+H1fZ8k5XzDe5
	 CzUIoAXAu2N2Q8Jbz6uSXjDgPz3vJi++LGaV5Q9QDpOAXdfgGZrGf06SZOiJW8TgHY
	 9MjM+j0sFa0IkRj4zjaJGVnzUTXWOuo+TrK5UR2I4sC+TfyfKkrot+ysj+00xgNU5S
	 J42afv5JpWQ69HpTScZBCHjbGjbiGFglt1IS0tYXWA4NUat2Q6YRvbW3KeL7LgTNO/
	 eD4qvEg5TjOdg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9208CC71159
	for <ddprobe@lists.linux.dev>; Mon, 16 Jun 2025 19:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175010399357.14602.10225787855312573783.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 28e4bf46569c299c3c404ff648c378885e9e29e754afcd8c092d01252b247589
Date: Mon, 16 Jun 2025 19:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750103993
