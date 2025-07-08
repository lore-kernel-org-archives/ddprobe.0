Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AC3E298CD1
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 07:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751961595; cv=none; b=SFBTrjXDuQAxVtGZloBTO7Bzril9dpCs3I6EI9E+FgRotGjESliar/W9rQXtaDTWVEzpTr9YKzJs6x7/kAo051SL8OwSLA601uTIE45YZ64FQMMSTGliEFd8LseMHEuR+KZiGzIfTCmDK6Lzuh4Bug3IqSClgQR2QhyZGHV2O84=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751961595; c=relaxed/simple;
	bh=ISjFDtpptBUXoYr2G3lGpug6PgMkXd2WwA3vGpq9ue0=;
	h=To:Subject:From:Message-Id:Date; b=IFRFsrDx1rhVffZG3ElFKlWMRuivEesQvD20eNSpIMlBUdhcL+KVUhtzQQ/zLCgGypxl3/IIUZWH6Vcj4xndxuVSivzyeuLt1NsPzPlfwii7Bz4vcnfh5oHDR2qlmLeIap5MGxpChH7CYAgvntpFINMYS3ibk0XQ8utbqGlQr3M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g1bv9f7m; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g1bv9f7m"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E0ECC4CEED
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 07:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751961593;
	bh=ISjFDtpptBUXoYr2G3lGpug6PgMkXd2WwA3vGpq9ue0=;
	h=To:Subject:From:Date:From;
	b=g1bv9f7mKI3YZ0tvvAz9ku72pU4ltszJiPjWCrfsTiedP+Qh50lDFTYg1EL20XT2e
	 QaOqxSGSaqL9p2s0ydcierkKW2PfusJgLGK9EYtNOazG74NgPWJKe63jCkUcu9xG5D
	 tny6/7IF2r9ZDHruHucRn8TGyPBRkXeNIkNJnWpnEPRSLCJSWi5C5HCYp81d2VYpTj
	 s9lRhaazdmHD54QAGnqeY/zLTVOJ7HV2L2/g1TP+XZUibOR+G9toM8R5McQfvErgwe
	 ts0QjlSlGhAaoWvLFlz2PntBSRZodi4gwVNt261E1bl/5VYsSW7J4Q3SXkA433bG+A
	 xgtRF03vmTbTg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EE28C8303C
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 07:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175196159357.4807.7514035531099135063.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 83e40b46e07a80c9b88c23b5bab648095deed8c143e5657c99f6a74b2bc2668e
Date: Tue, 08 Jul 2025 07:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751961593
