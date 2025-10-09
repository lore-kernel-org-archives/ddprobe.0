Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C02C20330
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 05:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759987194; cv=none; b=c0/gex/BI2wVxVbNW1ynmtYeKmQ2NLgLezQO5hplhHolN5WOeo4LdkZKyOdtETw2Cm7cRwdPqs6QnKdh4EJfFgtHrir6gW42ynjMXuOAgg8oETNUF/jKaDw0C0LLarcm1QBouvIN3Vq4XID9Pmu2pUJh7kpWLwxkp+ntmF6Mlgo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759987194; c=relaxed/simple;
	bh=tTYeEE4uHvdlviBHZiXwqszTndk2TqId5NhDuwPANfc=;
	h=To:Subject:From:Message-Id:Date; b=XxNxay4gi8muczciQZiTIIyBkZ4xzZ6QEUQZxCJENSWXZQEFdKo+TUGpm3LMAsxA+fpvAHQgtLLT4aSCAkvEd3LCsHaI7EgiW7OHsPkBx0eJ5Ut+B+Ju/hmnZXCEHZF+aqKE1SAQp+lL/M7kZVaV8yjlfQVbRlG84ExGDJS1g1o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sw8V7qxH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sw8V7qxH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0667C4CEE7
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 05:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759987193;
	bh=tTYeEE4uHvdlviBHZiXwqszTndk2TqId5NhDuwPANfc=;
	h=To:Subject:From:Date:From;
	b=sw8V7qxHAkFdJH+LkHs2qBQi0qGppWx0l3fa5dbSVXRUb19B7+s68UQ/xETguuJvB
	 FLwQ8KPI2UbGuIOCYDHHrwPx3+IFqB7zfKq1n3as+CPB4/TI8VyGC4s3MVbQR4HrFL
	 TNMlss7HD1esZglKN5ZOM3wq2U2GdYqwDh5PsXRSjbrQCWTjZ4qRRfRWtflBebS0mS
	 OBj8Xh6jZJIGgMDvq9ORCwPTOKMrAsRE3GnFxqONkZ0ji7tgNWSzxu21cB79eq3i09
	 9BhAMfRmqX7ximQIJdd521jVoGG9HLIQ7AVn1ezD0vwk28YXw2+sXVyCYSmyAeFaW/
	 VTzQvBGw33Wxw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D344CCA471
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 05:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175998719360.28276.13201828324354890221.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b100991793c1c0ad84d0cf0a4c52dfd10988a4398a99408f84888870b11253a7
Date: Thu, 09 Oct 2025 05:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759987193
