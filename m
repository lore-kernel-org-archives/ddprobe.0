Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 411402F5B
	for <ddprobe@lists.linux.dev>; Sun, 10 Nov 2024 03:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731210354; cv=none; b=ci5vEhaDwc+Un/PDy+wn60i+xWJhxqxHeoX64oXB5WJzvCbkwehqX86KKpsiRuKtUa+oBBl0W34/uDxlKpALzU6akPGlTyGRK+QNsddsDcB1481cF7VMKIcfoXlgr4Rm7ayMXJ5w1aCRrYvs65FwmMBlYdtEnA7bSLk/KiNp7tI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731210354; c=relaxed/simple;
	bh=pAcHombCq+exHIiOcx379Nj7prGCH+y+nNacVZptZkw=;
	h=To:Subject:From:Message-Id:Date; b=QVSZovTSQXb9TkRxRa2pzAPhb07FrmZxXVJv9m/cbBtHD/IyFjkH/J/KbdhsQeB6rdXoYJAkUTR8C9KK92iR6hNo3fZNkDR0n4luYuLAR/BJG2pv/R6YPcCxEPjkE0kHrb72tElSmP9z6g2M4cSnTV8c02v/LuVzIhtYEc3g07s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Gq9aVmsd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Gq9aVmsd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFA17C4CECD
	for <ddprobe@lists.linux.dev>; Sun, 10 Nov 2024 03:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731210353;
	bh=pAcHombCq+exHIiOcx379Nj7prGCH+y+nNacVZptZkw=;
	h=To:Subject:From:Date:From;
	b=Gq9aVmsdZR74fnPDYsBHI+zvGT4NYdcnerbrAs7sU4TrbgLzS3gp5QIx1Tf8NbrTc
	 HjZNucCz89J3YSRQ2K34tXez1ebbAicye9idHqJOnJuw5Yfz0fyg2YYHvcEq2r/9Y2
	 rxKvxxkhYVNaMfQCu1DV+BcCopOW+MIoUfJxes/ZNqCcwiOw9vkFem0pRfc04mbwqY
	 wjRChJPvaqQWQefFWkqrmP6OYzSoaA+pWzEADpvJpWgRXjJW+hLjzczPqTF2RRDk2B
	 Hl9NZuHB41iNjXIrBB+NW6Drdt0BOBJ5uqdlJkA6u4JltoeRUTpWTY6HUtmsBP/BBR
	 k2X2G6AChCR1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98463D5E399
	for <ddprobe@lists.linux.dev>; Sun, 10 Nov 2024 03:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173121035359.12126.6892358193339745738.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e0f0d4f862aed5a0a7e44128bcbe6c454078494ca9ab64af75f39d61b2050525
Date: Sun, 10 Nov 2024 03:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1731210353
