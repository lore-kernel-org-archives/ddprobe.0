Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BD1C368D6B
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 08:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786090834; cv=none; b=p5aoJsizzLpVdtTDU/7KjCpTHjfs6sy9Qo/fbXSdgvS+GUFRoILRbUL/1xQSy410TDKVSufQXXsItZaulzNndQiGUBb0V+sw919DOrrvDpuFBloT47/ACiBMzaiQN6RXFprl06jLFli5w8cbxg0cFs8le6MD2XYdgOVHlWvNQNs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786090834; c=relaxed/simple;
	bh=vfL+Os4iGMadtzlnzZL/Plrw8agx2Mm63EpD2Q131uo=;
	h=To:Subject:From:Message-Id:Date; b=pwQ09ltxkIv51MhlRI+heC4W51Md/lIQ2Izi5tkTOxKHzJP12Q/D7XxXbUPeZWLw+iDMnb2rx5Jk7AShRgvJmvTXtHtwxSpMGPqwXUxVNTvFsZa4SSHr+T3qRJusF3MBHYB3PjYvXPIhSdMGl7eVWWNBmKjzlL2izB8m9YFCyxs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Fs1BOzPl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Fs1BOzPl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE1C8C19425
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 08:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786090833;
	bh=vfL+Os4iGMadtzlnzZL/Plrw8agx2Mm63EpD2Q131uo=;
	h=To:Subject:From:Date:From;
	b=Fs1BOzPlDtSf+OZVjxsoNZtXE/wucQLYcnc2De8nuY64KlCoydb9Ex5v8rvt9vh/O
	 9ehdU/NIpMOq+jZ2JozcsI4nCIuUA9xKMzgF+45dZXU7cXzB2KTsmnB4spKzPAs31R
	 bA6Ft5xfVwIwn8PVgXOstj7KxW3hSfMpiGOKlRyEgxLOwVx5vX0lE+kBuGfA5nfDm8
	 5ND0JBlm+F5JZrnmYUldX3SYG1U3Jz73fhnAG0GWbcFTxdYOKhvW1VwbEQC2yl54Uo
	 HJcymVxxHuxS3grQ3GunYELPQZr7QSZVGkYOSibzsOahZuFUOv4jdGgVIA8Ma/IiCM
	 vwETFXaouymVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA356C5AC82
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 08:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178609083368.25021.7391587368600819366.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 794f57868756d64ddcb02ebf5c4b2302197809ba14f00318efbb12aa3020b6dc
Date: Fri, 07 Aug 2026 08:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786090833
