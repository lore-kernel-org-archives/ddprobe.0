Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 456E6BA3D
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 22:31:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763418714; cv=none; b=rWI9r1cvmjJS3B0jCngr33+pDQ5uTqRF/dSGPhHBqlUpdkPEkwKvhvCsMh9S8aHbFvj3Zi6Mtf3ke79CTbpSy1zf/G2Ug/gb+dM1ZJbUO95uBlzys/ZMAS+y0qoH6Yb7UFDtsBis2kvnLXiscbnY6Y+Obu3rrE94Qh7S/YYHnUQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763418714; c=relaxed/simple;
	bh=V1zjkBMLn2rqosVJmHHh7KDkrV59JEl0rdobXBI4WeQ=;
	h=To:Subject:From:Message-Id:Date; b=GSnDBwuxOCrIDjgSYWUEIbletBDSvwUmn6IG/OEvjlkPzFVqudogc6SHSvPL+PwFqxlfrC/jvffB2tD2kep4Tn5mv8jKPsOxSLiQwIC4hOIDwTB2AozxWDFgjbTEL1+ov2nNmO3V//7fN+dDwBJ273+/YiwYJZnyMRzjYzjdtLk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qvkWDq8r; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qvkWDq8r"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9790C4CEFB
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 22:31:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763418713;
	bh=V1zjkBMLn2rqosVJmHHh7KDkrV59JEl0rdobXBI4WeQ=;
	h=To:Subject:From:Date:From;
	b=qvkWDq8rRZsCQCyedXtFhp5clFiHuLwkjFj2tdKoiJbKz2zQsjdwtDt2skIFTePuG
	 WriOI4SMlGINTEo7Ne/4oaiO384xDxmRBLRyaQfR4MPkuoVgVqPMWzI88WO0HUYxeq
	 ASlbyqD9qjg0poEITJSqgL9rX5jTACGAT6pWGuTmvqosfGzdbePxaky/ZAPSOSepez
	 8ivjN5TJ6cHVe8B675vrANVkPvZKGyHzZDkTT4wlur2qrgMKba37g36OTsLpxtHa2R
	 WiICMUD5aimMoTwQSa5bEUpicBkN9H9l9SRHzG79cxUG2/YiwKTK2VtzQr9qGS6IJ6
	 XKLO8TEXK5r/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93D71CE8D6B
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 22:31:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176341871358.2347.8647631214885155883.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 89a60c836d3705801fc0019d58d978da1cfa199c99d31d4089410207d3c6a4e4
Date: Mon, 17 Nov 2025 22:31:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763418713
