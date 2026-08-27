Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 581323587DE
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 03:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787802034; cv=none; b=plpt/zkV+xG71ppfIW/KGkt2NztolKZksQm6cLPsONTBtJ4LnS6j9pGswPeiWobHa2vPr3+nYUoEbWtjCNfJgEv9i9upFlR3APwWUxxOvKVcE+CFXQ6CVi4y1jKFZleE8KauvsbbmnxB1Y3HSVQF0KI6O3TcdNlJHZhaDX0e8jc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787802034; c=relaxed/simple;
	bh=y9/zd5LDHdUCtZu3th72zzI1C0GJBXlmBI5Yg4Cb25I=;
	h=To:Subject:From:Message-Id:Date; b=OLirnRrZkz+8BXlfUgU6nCKEGdH8nm83Ju7XUEcx4kIoiup1PWHHMRTBqQei0vawQFQi052RaYa9RUmOrQbDfzf+p6LWkKj+2HHvUJPXoLw9dEajZK7juEXiTmGMeCAOLw9cL3ARHaTZBu0s1gSizgh4NH5J7uA3T3p70jrzN6M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LzRHe2SF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LzRHe2SF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE687C2BCB9
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 03:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787802033;
	bh=y9/zd5LDHdUCtZu3th72zzI1C0GJBXlmBI5Yg4Cb25I=;
	h=To:Subject:From:Date:From;
	b=LzRHe2SFbmLElJkdQvuGHlFtSzS04xvP+AOceZBha2pMqe30KeoJyaNqR/hRP20Pc
	 xqcHqS59T0gYZxJJnXXA2MnoPQLh7gF3vvOQr1nqGC/7+oIu1BgpYvYFBSImYqYaZQ
	 gAQmv+3OWUriJxtNknrZxHxbzuznPRKtK2WHHmUMZ4OeeSCLLIvwFd9rtxrEXaFd3s
	 XROfMKtlww8Hv2hQKgm0pc1N3v96vZPkppPUIz7jb29XYlLC3IVnkKTiCGA+pSrKqD
	 QYG71nS9d40eUlDY5ZtKxkWYstMpxPGSxtt0VlTMLyo0zbAKMcQvPiF2VtWtVbcD4O
	 f0K3UbIOtOoAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB5F2C5DF9D
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 03:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178780203369.23899.15705536062206611080.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c5de71ddf078f20f4857608410a6af3285f170f0f6c6300a29103def799d7d35
Date: Thu, 27 Aug 2026 03:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787802033
