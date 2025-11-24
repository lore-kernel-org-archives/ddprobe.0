Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30FFE4A21
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 05:31:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763962314; cv=none; b=bSLQ9UgqzgDhH4PasYyuLB1F69zP9qZLeyVWSXHPNX3EFRPesA4WIsKYUMmMyqTepTU4WddT7XK1LuyOQ0guhh6chUJLG9XuMWulyVDsz+DyUzkzKYD+BVSk6ELWgo/SlRIxryXgmx3KfOy+nHU1H+uL3HdEKInyYn6YnwAySsc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763962314; c=relaxed/simple;
	bh=Q8x37Lz7JaOOgvHamBgxnznYfLPalyoNsWvZ0AnVqkQ=;
	h=To:Subject:From:Message-Id:Date; b=cuigGjHM+mfizTwb+YG/R5csoeJ8e0aw7vZneVxQD0RB6KlNuxAmcm5TYKoohr5ezmb5sO0gaFk3Xpe6geEC4OV+czn5pnhnK/ZQlakNrms68CERSaXKva1eKma9MiQZx/mNdoA61ntl7L4NofY6DHs9RiGb4mazxJCUU0Fh/XI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WrWvu5Cr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WrWvu5Cr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7C53C116C6
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 05:31:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763962313;
	bh=Q8x37Lz7JaOOgvHamBgxnznYfLPalyoNsWvZ0AnVqkQ=;
	h=To:Subject:From:Date:From;
	b=WrWvu5CrXI81afv5NBr3+xaBvXLuO0wF3e169K0YqKBrnCOtsZxpCoYaX85uu7M0m
	 5HUsgELUMpV64QqN6IK2aqLUvP/GJ/K9LVRwtuhrdmG8WD0uJdbG30WdExeEqbJqER
	 JdIUSzJDuD0HLViYG56aUkGO4JF1V56OudO8VZg1E3dgvow+XjHPZ/DLeyIo8cgoAs
	 nyWxiwwXsG6Gxvm3aNjtm+9kgLvt5HELLznqdVBZVXa/EYf2Gv/PiLujsGT0oJlCBM
	 bQPUw15AQLTjvE4H9451RS71faImtlFUkTwcjck7hpQRJ9X7EibGSRptgTiRgNJYW7
	 7ezFxQdsY8hoQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92520CFD318
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 05:31:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176396231359.29156.14405547095380357326.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4cbb1e04759a111ec381d2136ee1c4e3561d6a4c6a4c863a7044e33bb6d1078e
Date: Mon, 24 Nov 2025 05:31:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763962313
