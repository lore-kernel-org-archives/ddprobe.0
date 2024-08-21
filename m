Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 74B9122619
	for <ddprobe@lists.linux.dev>; Wed, 21 Aug 2024 01:45:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724204754; cv=none; b=oWoGyBKVZDVx8oTwipcAONnZ/NV/cNzjRp2UAvVnpbNNiAjcIWP6r+Szb5rdC+wRdV0wCA+T/1rv16GJdsHEOQ+iQmbA2UM9J1vYBD9ck5nzVvKEokUqxH07qfS8jG4HC2FnOcyur6ja/NpTG4F+LFT02OauInNQzU4BNLfl8iw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724204754; c=relaxed/simple;
	bh=hK8xF9cQybj9Qu3EyxZNIlEaKXUokE0rq2j5C4/l/dM=;
	h=To:Subject:From:Message-Id:Date; b=RE0zGMIY/ISdfUaWldiRBeC32rb0LONes7w9nf5x4nPJwKo+s9ayWQxswI03+FikE9boHqIVAXpr/MY31AsflCja0LzLdDoybF25KPW5chsOBVpfnzYhgEBsgO1sQzaWNfomLBY28JuduDJFtWwy2mQI0s+favj8B1dLvY5QeYQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=owiGz2QW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="owiGz2QW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2826C4AF0F
	for <ddprobe@lists.linux.dev>; Wed, 21 Aug 2024 01:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724204753;
	bh=hK8xF9cQybj9Qu3EyxZNIlEaKXUokE0rq2j5C4/l/dM=;
	h=To:Subject:From:Date:From;
	b=owiGz2QWVu3fMXzPazkUZFMGD/LprSLUK4L/my5ch06t/roF0roiKvc0ont6bpGj4
	 vRdRLaCplBsO5sLPg6SFGJqL5xzHKtZskBW3wwMC/MpbemOITkv+nllC96LtLM6STz
	 I7vP+/EYat336gX2r+n4T4CssxjkrpuTwx6aUzmEFsKEJ+ubaOlKVedA2DL0OGsisK
	 78nrkOjgNrCJCksSkBRIVHHy8OURBI6OeUrBgye/Z85uaKJ5Y1zYt9uGX0LfSliBhA
	 r8EgqFwQB+xg97c6LMt/VOFZRPTHB2hTNNpMPFHvsXPqTAWMY/GrrP1krbiLz5/5FD
	 DwVVIG0ZdWuSw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98410C3DA4A
	for <ddprobe@lists.linux.dev>; Wed, 21 Aug 2024 01:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172420475361.5491.845992959989117167.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9ef3d10586d7f3ab254d084a67b918d75ab79edbfd9f1385b67373ee9c720ef4
Date: Wed, 21 Aug 2024 01:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724204753
