Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 571D31096F
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 06:06:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782108394; cv=none; b=WVrjT5UuHPNaSp2OzDrCC2bP5+jpj1gqa5TKJ+6crLcrhPxXY5ILMBydyTTgh+OqJORPU1zbzmzxclFOAZymS9UT0T67bbdlbw9LSl+QaQG1ln9qhKevKqiulVpRRcCsFEXXEE7EN0R8VWrQp8uff08NEMJkX8+md80rxQcuQOw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782108394; c=relaxed/simple;
	bh=ytp1GXLmaHspGXR0savCmeExN01oGRo1O/WuKJwXmoE=;
	h=To:Subject:From:Message-Id:Date; b=R572LRIXmRe8RBwMZn2zcQI8NSYqiLDDGIUY8hHY+Vpdz2TNQsK3Cqpu5bTdq00DcZSyKEau1wqyiji2g/a0FfQnFh5Iwwt5w0rq1JVzhV01iwhBNTnIe/pSx82FLn1+SuAik+RMeMKLkwJdS/HyY3Syq/3HOFTBio+czaNQriA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qNVKNKkK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qNVKNKkK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9E53C2BCB4
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 06:06:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782108393;
	bh=ytp1GXLmaHspGXR0savCmeExN01oGRo1O/WuKJwXmoE=;
	h=To:Subject:From:Date:From;
	b=qNVKNKkKG47hu5Mv1Zz/SuEtg9Z8tgX7Zaq0nZK07Q+NuRn7zaoAcsxxh32zfiyV/
	 vGxpJpzRxODLfr1EOwjzjkAXSpBas6BnZNoz3ouyz622no5Zfyix8ADBRKMl0de+RU
	 CsK/uFjio0c5Yt+rmNM3EGjld5kMPNnerlL3hI4vleoZkJ6ejQa4cpNJauXuMr4HsG
	 aT1AubBhWuO0Wbm3YcFLyPvgGG4JgBpK9/bmFGk/aazF6n3O2kZfxmsb/QqIyeVDwS
	 EprElySLjTjTNM0/LRSuxTUnKwoXl92RZ1g9o+OtU3/H6+tGfubek8UmnZPXMiSpOZ
	 w9diCq0UUXyFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC201CD98F6
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 06:06:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178210839369.17944.411775302946489893.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7a3a40fe498b55e951d49df56bda2ba846fcb5b813c50036bb8500fded4d14d9
Date: Mon, 22 Jun 2026 06:06:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782108393
