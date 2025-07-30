Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 364602D94B5
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 18:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753900795; cv=none; b=mADfsFQj2Cc5bFpP861E6oOSqkNw0Wqnb66etY7I43xUh0Xrf3m1f3s3UOxc16+sP2QPy6VLCFjP+tiGIyCrPUEOnsK34xW10NeCi9+qGJCynhX1Sv8MUxWIP7yyOUUJ0ST04X3wW4bbG44B4FhPfGr8poYTSTc2AQq9s3ZuDTU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753900795; c=relaxed/simple;
	bh=wHVJV3r+/tVXNRuz3XgVoaAr9kE5YlDfHYnGorz8ZL0=;
	h=To:Subject:From:Message-Id:Date; b=r+HyNRwhP8UyOoMfJPMH31FK0TOK0Skigcd9oHsSGpypY0toT5hzp93Rd2zWEp9ePlyoPuqyX0Pze6Bch3RyKceEot/Td7CDaoPYrl5Zc9eY2/6+Hc8FRrwfL5CwTIzKAyXfnG6ZrsFZRz49h5s8752bbFSZT3jvAx7ovHIxKlQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hlTjRDvs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hlTjRDvs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6F76C4CEE3
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 18:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753900793;
	bh=wHVJV3r+/tVXNRuz3XgVoaAr9kE5YlDfHYnGorz8ZL0=;
	h=To:Subject:From:Date:From;
	b=hlTjRDvsZFPeYFGr2W0L4Dvxq3ccnJLTL50eOXgBmKHYs/FkZb+9B2kp8PYDeydEg
	 qJ1sQCuRbvZB7U0BV33mUoa26XVX5td7u+gywvRNKWoS+UhRZ2gq0PFfo2arC4+DDE
	 UU3lyDRFX9RU/tGdn9SpL2Ey8EOKRHYQ1p0gE16WQQFl+Y/z2+5AxwH4x3BXzS8dJL
	 wFWDI7mcSWV4oSco8GNu5rIAJKd1OCXHm+kdyWcLnGXr3TJngbe9DalrF3+TePtj6v
	 97Q6yT7e6tSFGcidjPDNZiGXWk93t0cq3sHbZXCCozKcJnw6RHdlasaV0Db0xdiqOS
	 doD2/IYDYgj0w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92AB1C87FCB
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 18:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175390079357.14718.15479105919840437184.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8aac52f21d4fd41f6b2c4976d6d00c331107a13501adc1384c3eed46de988ac9
Date: Wed, 30 Jul 2025 18:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753900793
