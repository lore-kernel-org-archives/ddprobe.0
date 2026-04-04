Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C93A1C695
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 11:05:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775300734; cv=none; b=FhMuntIFQ/IkXDqqo7BgfvkK6YWAfSUPchbZUDBmHGocgC1KUsUKt17UNvhDriuHHdMv+PfkR2jSo4G4+mXUrL6EQ+S15WZw4haI5n1PmKqlJJGZa2swtCAwWCCLrusr0FoKXHtc85gGLrnz5aJx7RIUU7Z7jxdAIXFNznjK1aQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775300734; c=relaxed/simple;
	bh=5Sr9O140982Dve7uz5Pw7x79v9+cvXcYHoG8HI1IAqY=;
	h=To:Subject:From:Message-Id:Date; b=Z9ZwVja8sR3G6+1t4YhhrC9QQ8zrrXuj6wFaTY/T/ZjOpxW25Zxjh5wvWGWrWh8WVqIksI7VnLAkqJQs7vSYaPznGSZJBb0cbx2kYkIPI7vuqU9FdV4u7EFa79q0/hpvhfxRN5U5JWou9FY1A0YqWjX4c4uiJ1D8RAgOIkXv/Rg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r2c2kGDB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r2c2kGDB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1573C19421
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 11:05:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775300733;
	bh=5Sr9O140982Dve7uz5Pw7x79v9+cvXcYHoG8HI1IAqY=;
	h=To:Subject:From:Date:From;
	b=r2c2kGDBDISYi4zsdJdpn/TMeB8/4yE5SDepkkDBzChEAfsqfZB/Aa9F8HMCWEU4S
	 FRCC/yvHwLRK/FHpSXrBgG7WiU08Dja47WeDFvKSPiOxoXxfm6HSqtXvMCjii9leco
	 FQEEwW6+HWI4QDIkLuTr06jy3j4Dbgyv2bC416gcAmxFDOThLApatMG/qquebZ7w9N
	 W/rjQ6sl0Cm+DKoSrjJUOarDpQZrsSNxT7ztS12kESp/vPLPIUpIhd6Q8NUlhR0spX
	 ynNMuK/8yhmQQRnnpqam1SLJ9LV1IhH3lBaHlnGvCPaw14JvD1SD1N1IBaeL5x4dQO
	 8nu44/oEEXJhA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB605E88D66
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 11:05:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177530073369.24620.14495387142692849529.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 177fe0f9ee242bbdd1aa4540bd8185ada7e9613789cc9da7cc04d5d4b4a644ba
Date: Sat, 04 Apr 2026 11:05:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775300733
