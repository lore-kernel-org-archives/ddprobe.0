Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 74BF518E28
	for <ddprobe@lists.linux.dev>; Sat,  6 Jul 2024 20:26:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720297583; cv=none; b=N0TjgR7J+krLcLoxe0M2WSIkRrDlrGb4nTmRQBjR5Xb1AJ+OGT8LJvIk3AN3BORibphSTAWeXYzM/qMXtPNWjnzCTAC+inev9612NuwRsEe8Qlh9nSzAFI9xyqFjP2w4lIy1M4eghFgIE8MF4YQE+jYN55xz/DXDjyuaPtEIc9Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720297583; c=relaxed/simple;
	bh=Q+SYzLCDHcDC0XYR9JHkCxubkB/C9+a0Jz2sJAkeXH0=;
	h=To:Subject:From:Message-Id:Date; b=HwWB8h2uftEJP3cYwtbeTQJDLfWpi6YHHN2OR1rwei8kWYNIYGAimzf4kAp43nBpc29SCI1R/w7XDNIdt2i0BdFj89BNYF5uAxcu4M5lSYNMl3N0gR/bJ/NfXVro7b6OxKDJLrBQ2zlsmD0W0ZS0aDFrsY8q4RWRY2OxlEvRbAM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ppyVzSdW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ppyVzSdW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9163C2BD10
	for <ddprobe@lists.linux.dev>; Sat,  6 Jul 2024 20:26:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720297582;
	bh=Q+SYzLCDHcDC0XYR9JHkCxubkB/C9+a0Jz2sJAkeXH0=;
	h=To:Subject:From:Date:From;
	b=ppyVzSdWcgi/CITwp7L2xCULtMycprR1IWquVtow8DaCDeoXRrJ7lpP+FXGgGSEV7
	 Sn9xh3o/Gr5JxYXDmrbWeEZETB1+ZdhGHyQ9/9xUpOxHX7loA/CmXmYh6upAjy5C/f
	 rm0yI8J28PE03u13zi87PD61WAm5wsz5gvPQVsWx5ho3cObM1fhXH1Y3+wfQ3QVUYZ
	 VieVw5uZQ+CuWgjZfjrDm1UNyX2IsJJCVc55cdPy+pN5RzUFSdxNGy4oCUaZL1J5pu
	 gDk6tXTVA55/3KpAp4GZ+h58j9YZ44RLyaVEDGFZaStPRimRdVeEXkIPXXLyZIRUHH
	 +Ry4VkZbheCig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4411C2BD09
	for <ddprobe@lists.linux.dev>; Sat,  6 Jul 2024 20:26:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172029758277.28479.8236706036506684394.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 88f6edbcebadbe181abf140c069cc06ebfb8f31144acd87265d07ce8aee46fad
Date: Sat, 06 Jul 2024 20:26:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720297582
