Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44CB343F4DA
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 14:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791295834; cv=none; b=UmKMzaHmerh/Zz4V1fHl3JhroArOgPvaAX4IAvsYvo3IfxD2XTEd/fl7LJLgGbaTHMs7PBj2mnuEaP5Rmk7YdHV4+/VNwu9b+n5lOD5HqV8bil0PBanMz2fsu4NBTcT6BA21RACfAdj7TQohiI48rh5lRHOag0/WJgKeqffxiIc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791295834; c=relaxed/simple;
	bh=PJk8NI8Uy+O6X1hcS6JXcVkn/CzaZIzfK70ZDBEm4/w=;
	h=To:Subject:From:Message-Id:Date; b=Lcxcg9y/KDjsEUQ7dn0KSRh0TaXF2By/UwUFYmFjjV65PAcbHnvDJI6axukSpJvBvQ8EYG2hpg6zkHceF7XU+B6DW443j8lZzsAx2bxdjiUbZngI7UIwY8iDG0F32gUN1H/Swuw7h3Nt3xJaeDobzKL/AFtZDwUhvMMMiHse5FU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Osa2SSZO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Osa2SSZO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D32DEC4AF0B
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 14:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791295833;
	bh=PJk8NI8Uy+O6X1hcS6JXcVkn/CzaZIzfK70ZDBEm4/w=;
	h=To:Subject:From:Date:From;
	b=Osa2SSZOpBUlY1jZpt1hTimNxtO1k9X+jSEuttFDL/t3+0L7h9g+3UF5VpZ5nIabc
	 AiyiTN5nnEbFT6cTXH00qkDU6eTPw0G1xZ/w4XiQbsPyaRbFCTxwe/m8zt0cIjzpgh
	 N6/oOZDd29NJI/+NpL6L6AxwVCk8jH52n1Fmq7zc6sR2zGGMc/ZubeYsYrEjv2jGtZ
	 vRfmyqKHt6vg2D/EGfE7vupjFzjlUb8uS5wpcJhZ2uZTKcgGhUjmbivhOnW1OH6tm2
	 yQ/ij66R7GwbxjUZa6Ypp4RPJnHvZ5HRMsMdSYxP6UUuUyVwKQt4GJ1B4dL+o5Voyu
	 3HLCOIYpuZ19w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0542CA5FF0
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 14:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179129583368.17126.7606273797200339800.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f97ee6ca0ccfb15e5d2c6788b75e8e5497d2102feedd0ed330bc685cd2a9ebc9
Date: Tue, 06 Oct 2026 14:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791295833
