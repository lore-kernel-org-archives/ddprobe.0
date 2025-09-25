Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 207B7277CB8
	for <ddprobe@lists.linux.dev>; Thu, 25 Sep 2025 09:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758791394; cv=none; b=anJFZ2DDtRVDz5X+wRTibWwyn4U7KiEWMLo4eKAnv6fwjlrkrc656QhMJ+AxxV2QE/La96SBiWajShNESdBn2fOO3/VJ6eCVx2kY+hqzB/dmvKlfHNUly8AmM/8YWd1VDsp8b4zKeYMUowYkrOh+M2L2EpJnaF6AAAgQ40I7m9w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758791394; c=relaxed/simple;
	bh=Hswob7uHPiK2gfqqYCm5q8EgUS1CYqt+6NVf/K9tcSU=;
	h=To:Subject:From:Message-Id:Date; b=nFI+A/CdcwLNXD7mz21doFbGxSvg26zLb4JvRJU47kIfe5A9ZG8doCyknG/ynJTrM5f4ojhoVQfOaSm2ssc1XCv6T48ggw9FAFpijnSta60ATuljkga9TC5D8GWTVYQiRkwELGdeMabChECgFtcKNeaZuyx6pNShJ4sdSObIjlw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=frDHWUn6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="frDHWUn6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A918BC4CEF0
	for <ddprobe@lists.linux.dev>; Thu, 25 Sep 2025 09:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758791393;
	bh=Hswob7uHPiK2gfqqYCm5q8EgUS1CYqt+6NVf/K9tcSU=;
	h=To:Subject:From:Date:From;
	b=frDHWUn6qQXYN1U5y5C4n8rDXc3X5Yt/sKeycwARQskNZfGcxaX40S15rnXEaX5yZ
	 r+mQnPDG4e0irVORFagrqLLO0/3ibJWsPfx5G33TQ5N6fiHK5LuF2+XQTPqH1iCEPF
	 aHGcZzMMLR0WkVKfggacwIehKLXXQXEWImTMPeUOqQ4X8WrB66nccC9o74NIdPVocX
	 3Xy5ATtpneDkWPiCgyrzRJrypCBXD7tqNmWCo/XlP2Ta/FEqzkYSlx/Xz2xdMsaeKz
	 jDsXfUY9jWqTZzzGLSn70FWpL8PhwkF6OGjnKYCCq8jYly9YuxgBU1JB/Yzt1S/ioh
	 E0n0OXTG55aAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 976BFCAC5A5
	for <ddprobe@lists.linux.dev>; Thu, 25 Sep 2025 09:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175879139361.20487.7077117002365460390.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9b5fab54e2582d08b71289b8ef32d3291211fb0a2041e89383143240af2bdf66
Date: Thu, 25 Sep 2025 09:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758791393
