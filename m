Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DDE033C520
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 21:43:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765921435; cv=none; b=LTnXDImInJ7ZUV3ZUT+V8U4faL3D+KKUV4UGi0eY2iRYW+sBBIl2OH4BgM7n/HfVWy4y8T6rFzFLzqr1dtmvseqi3mIwVl4X1UnxbfNriphl4E/ymtDYjKuW/ExC8OUfr4o65sPTbjKitC7113cr0PzGCReVrDkgFZVYbi5WgaE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765921435; c=relaxed/simple;
	bh=KBOmcrYc4jp3HykkoSdRmmxG77JMDh9j8XZsJoIa8Z4=;
	h=To:Subject:From:Message-Id:Date; b=TjFtNDsDxF8f1aW484SHSjxdJAz6VekPaeav4tF+RqCFjWxU9+MScS286NEXitMYjm2qF82/pjZSoQFJsD8JpJpm8bDN8xVc+wdgzWzaXf26HmDvlkI0uxgtK4fRGSfTV+G1BWZ+URXCW4cXHgZubKhCm+5yVBZCgiwdoqyT3Fc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jnxFj3l0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jnxFj3l0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5BDCC4CEFB
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 21:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765921433;
	bh=KBOmcrYc4jp3HykkoSdRmmxG77JMDh9j8XZsJoIa8Z4=;
	h=To:Subject:From:Date:From;
	b=jnxFj3l0q3LBfjJkUsrv1+DXMuSgKLwn2Ib9yB8geB2EmoZUO4h63ywQ12FwTNJON
	 01U3tP7/fczdj+N2LKO3NyQG/8cTA/Th8yccDA68zCO1xWLXb6kJZ8HrszxXucpmRk
	 CZIuJ5ZwX8/RVrNnGYlRevc4S+CK+vZgDx46vBRK65sY2H8s6Fgq5BDs3UVQAaRQRw
	 ZeHhw1rz1pH8mok1rWyHac0tBBgts7zahTP76Bo9lHtjEdXmpzhCqG1eC6yO3A4q2j
	 LAE5zrlzmLlXAJHF0PKXdnRb+5ob+5ngKG06ykC5VyEun4u6gcBYFTUH/QAlQEj5ZV
	 bFS+wNkQU94Fw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91BC9D637DA
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 21:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176592143358.14410.13021949174476246111.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a245c639274082efe897861b8d8da86edf468abea8b6394eec7e7f1a117b3ec5
Date: Tue, 16 Dec 2025 21:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765921433
