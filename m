Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 248B672634
	for <ddprobe@lists.linux.dev>; Tue, 29 Jul 2025 05:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753765794; cv=none; b=qWjTtGAx92I36SmFI9+zoCJF86XOtEMBcZVkvYggXo52haMDvq+VG4Izc6b2xj+Q6ORbDM4/NDpkYAX7QOzR+VwlbEvFQP9h3QwsbBneC2FcnoBkzr4F8tE1i3SLX0/p6O4jX63t3t+3gI4BEy1DJRwtPzVx+5EVh6MTd3MJ40M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753765794; c=relaxed/simple;
	bh=Fzwk+tx0zHDNE/OV0uPGZJHFH8DxEFPty8kX1SJ4Upc=;
	h=To:Subject:From:Message-Id:Date; b=OGHHSJu0LGf108FanGXLpBSweEwLNckU5Fc7iDo/y0Vfg3qwkdmcTjTEgjtgh21csfiBfApFUyTf41jxIE4y1FXEqv3ebGCSFgCVSeiCpzXX6oyvc1gwHK2RQcC8j3bUjDxjltaoTckVfPUDw7IOKMhcOeiDOh/0lHEtDr5k5Rg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Vdv/pI9S; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Vdv/pI9S"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5D51C4CEF4
	for <ddprobe@lists.linux.dev>; Tue, 29 Jul 2025 05:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753765793;
	bh=Fzwk+tx0zHDNE/OV0uPGZJHFH8DxEFPty8kX1SJ4Upc=;
	h=To:Subject:From:Date:From;
	b=Vdv/pI9Sh8iiJFGowyfKlqFHWNPfgVQmZVkLPnoMsLHAhQ0R58Y73E69GWUYYmO/9
	 4BjqxfybTZsrvbmwaPeSCM8XhKKv5dAv2ukNlRkZjBdH6EnMDNEQngtSradvIytPdX
	 7zn7RIT/8vDND/s57LBA1BaLid05702uBg9o6IakWCI44MRUJKncTuBipv6fQ3T4jw
	 gikSaw2cmQ3fJLq+otALWoz0/hfJhJ4wbM7GLp7TtjTeNz5xdizmn3fdFOknDgNecl
	 6gzPpDyNpuCdqOwwhjqbeQich83vS7I1mfPhcyF12CUpYHOIIdF5cCyiyvloopRucW
	 BUxW8haTT35pQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 919F9C83F26
	for <ddprobe@lists.linux.dev>; Tue, 29 Jul 2025 05:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175376579358.7035.13998313012148702864.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 066ce6d7376a7eb8255f7ca5616bb3c274dce0c8860b37ae28b3db166074f2f9
Date: Tue, 29 Jul 2025 05:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753765793
