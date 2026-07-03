Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5666D1A267
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 22:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783118914; cv=none; b=m+o39FJrR2Gi2ow24Ssg3i4i41x7qTaYiUvSukxaNwM4IIBMTZ8HvTztaOD64pR74PNAhV9J82yFtujAR5VdzdxY06U1eOcroYzX6YRmBsGKlRvDArMa5gemFodkYVbL8qZvQSUxZ2lUaAnQL+kHqyLh1kJDiTUne9xZD2EtBVE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783118914; c=relaxed/simple;
	bh=yV2hxELUa1xKfaPUdALeri1c2bvuHDtR9iQpNpbEyQA=;
	h=To:Subject:From:Message-Id:Date; b=dgZSV+i9tTdmKCObZtxhQ92CFLdwgbXpageF8+49vorGgLYgPkUDtQDSJk717hmHtGLCbrNaIvcfBCcautNaJJD1CRX87/iaVw3ULlaHB++oYxhbkAoPsRPGx4CTK8QX6aOQYUCS4SbdepLOylWb4g6Al8O5R/Tz2xOm5gcFNsk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rNGL3E96; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rNGL3E96"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D151AC2BCB8
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 22:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783118913;
	bh=yV2hxELUa1xKfaPUdALeri1c2bvuHDtR9iQpNpbEyQA=;
	h=To:Subject:From:Date:From;
	b=rNGL3E96SsgKKfOQOEtTndDt+Jx5Xje8itDql4l8c9EvG7kOI39g8UOqyw50ucyT8
	 SQXwvKpEzQLbSfuVqKbb9gSuHUwaE6vGnuCDZuIm3Y0fBpIrpSVD5bzoq0HRvk6tFJ
	 b++yGgdUBVGb2oxhZNOxKwt06yX0mu9zRmTrgKAQ8/+pFE61BlTZiPIDCZRpDST0g0
	 Da3UhELp/mY331nGpLHE5AhJ1xo6ShX9idiCIq0jsARSobDBx8/EAJ2VHstHhzJUr9
	 o0AQnV5/ITqIIsCdc7l4Mrh7ZFRpfXFlJfWMdOVZhuLON9NfN6JwHim9Wx49MI/GOf
	 ypf8xeBuCq8BQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC81AC43458
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 22:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178311891368.17892.15028103036263335901.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 126269e06813ed0cd150fcc8657112554a42406540f526d21be7bde6950ac72c
Date: Fri, 03 Jul 2026 22:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783118913
