Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AF501A3157
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 20:15:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775333734; cv=none; b=XveL52OEAir5EcuiVbGk7y03+S9eAgqRnxvMaOUjtr8moFbS75bOPvUraIVKjmi+In66+qV+0pcSdxBOCFFp357KELJ9NpcwUtguDZ1rcRc0YdT/9QySbZdK3pat6b2nDNkJx6fW3epExrE6IywGqYCQmGSVusKETt0pJScjppg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775333734; c=relaxed/simple;
	bh=OUtNTOj7NSgMFYM7PADu4xW3VZ5zq+woU8tR22p07YI=;
	h=To:Subject:From:Message-Id:Date; b=C3DQV/VkCvAoB+nDeONPwdFmjUeMhdb6h5mpIevsaLQDpIPwKfaeiS120/gpURy2JkVJozzsM9up5iaqJpXbfSTBhGgLreZITWtEzEgcZQFiPvyeEykM9zUdI+RbrycM64yVTEVTPlaaxPQEcejem6GXoi5M8x3wbyabALT0Z9M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IAahh2Bn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IAahh2Bn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2786C19421
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 20:15:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775333733;
	bh=OUtNTOj7NSgMFYM7PADu4xW3VZ5zq+woU8tR22p07YI=;
	h=To:Subject:From:Date:From;
	b=IAahh2BnRDIbklr/w0rvSxIEXnHkawexLYLVSm1RE2k/DKR4AFBn31cdU+kuXcY7A
	 nwvQEz9rAT5MlvEwHIHDOfsu3TSqtdm63bmDAqx17HuuND58vNWAF1LBtSb+OGiMd8
	 nIMsYyJGOnuFCL3W/4qdVdHhDAMguUxeGeL6I6IGco4q+m2/x5Ms/WJqkbmR4kBwfx
	 zIBTGWNvePcnjMFJeF+bcex/vjUh6HB/OjOZXvA+y8BSBEu36+jhNBizsjpW60mvlB
	 ZKo7mGm7Z4fRBAywIQd0a3u+76I7x/264lOL3Bcw+SbwwX1QEtEoD+6RdE6WEu7BGl
	 PCO0FY4eUiDhw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0CCCE63FF8
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 20:15:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177533373371.10972.3882818660506003019.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 08d8e1158e5e3a4cced3a3755a2177513fefc1cb766d0386998229eb138e59eb
Date: Sat, 04 Apr 2026 20:15:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775333733
