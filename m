Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FA1D1A3179
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 16:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762531794; cv=none; b=ChQ9pZoJRxV+L4vswHPgy5w8XembLL9S1kBOa8uHM0g2qCejdrvYb9IvUdgvfNIOH+0pcuOWpKpG5w2y7Kj0vqXv4TomsYdl14wqOatfBj/rZaLKC2QYeXzcGloHAbWOrLdnVxUx5zKO4GY16ZOC5+cZdBlFMJsKnr61/NqXIrY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762531794; c=relaxed/simple;
	bh=p2hhiGI5kmeFUPWifMFo0+Dg/i5y4b5i/bPJVHVX2MY=;
	h=To:Subject:From:Message-Id:Date; b=qSdFCgLG7BnawjwXm83DQx4UXC++Vsmce1dSVyGK8eczR3+/afIhaxDAunmuR4VWggobeWbrCecxmVMUmNQbb8r9RDptTkjfexQT07UpLfaLiRmsBp0xA+aplDpsFmoRM5iB4uaCkImFbPHqSbTJyhJcaW0SBt9TGkhPUHzXHl4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VMs1LPdb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VMs1LPdb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DB4EC4CEF7
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 16:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762531793;
	bh=p2hhiGI5kmeFUPWifMFo0+Dg/i5y4b5i/bPJVHVX2MY=;
	h=To:Subject:From:Date:From;
	b=VMs1LPdbW4MuqybvV6SnSFPeSLMd16KFsnX5rA264JnqdN/w8JciErRDzA4VLjr19
	 lz6NAbFrkgfn8zfAGixayeR5u03lO+ZHCmASKjn2yp+d7vOduoOHggc8s/O4pHUGrh
	 U384h2sm4GrMsUO8bZyP6GPaQuW+oOHf7fgKT7vudWelAlM6geksrIIRoXBCDKLhvO
	 wCtdN6kEYLhZZ+2112YNwi3zRppN3+rgZbdcUsGuuHPss0bzTP+cJlRB8lOA5j39RD
	 ZRE2d1KmZA4sS/pcdzuP+7n08L2SEnLS0BjO/L8AtzaJvu5pMZPMCyXEEusAoLl4RO
	 zSMN6EcV/lWdA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FFC4CCF9F8
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 16:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176253179358.19110.9657813937133291867.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 73c9ab2d29b17b192d99c5ee84427cea454977522bcaa408b587039107ff532f
Date: Fri, 07 Nov 2025 16:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762531793
