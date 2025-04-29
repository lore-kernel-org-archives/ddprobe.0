Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 300EA1F4199
	for <ddprobe@lists.linux.dev>; Tue, 29 Apr 2025 13:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745934594; cv=none; b=IrDox5ZZ43zEOLUgOV0surCFJ/4LmrsQcj4R9MAOWhszmgOlejfUgHoOJ6GkxxdVZwk6PVAb7RW5Grwwv2RKn8yPkGF43xIuQiK9x6qDORszlPZKeG+7mQ7OHOpXw2g6ypv7sptgEdHr1eSkD0x3VqK6s957810Jd4y+ZKxWBto=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745934594; c=relaxed/simple;
	bh=wlzv64W/zMWNKz4qmjXzNSLDGcjD5wMKHFeYYPOjQwQ=;
	h=To:Subject:From:Message-Id:Date; b=lEtgDFgWNNz89VBW8aDKZay9tMKqH+5WoK5txXc10NjUOwEg6SPy3oBP7DKUiwLxMUaQF8Swy28UkQiWqBBcQFmY1Ypd53SmqK3bpjG4zgHsk3E779lM1FGMUUVxLt/fCOGf+yjDt32M5ZFP3rx1rYfvjTgFH+RCYXoWpCiHfLU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O3Ec4GMl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O3Ec4GMl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F1A9C4CEE3
	for <ddprobe@lists.linux.dev>; Tue, 29 Apr 2025 13:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745934593;
	bh=wlzv64W/zMWNKz4qmjXzNSLDGcjD5wMKHFeYYPOjQwQ=;
	h=To:Subject:From:Date:From;
	b=O3Ec4GMlR+gBdAKbbhl6f+A/6Z/uksqHkSUZjqimxGowiXoZKF5+XlCVKafolQyjM
	 U/5ykX4KY0IlS2KcOfU4BeEsjadtSRNfGPiIMKjbYbrm6hnu3+Q7fUlQuhs0ePxksW
	 Z+xV9r8E9N8Swe9kBH2PRn8XivYmkGvcRF/xg3CTJ2uj7aqRXbLR+BrfZiZrATeDCX
	 cy61ajlx4oorTkMCAhL37i6vEFyBJwwEvZB8Vc7RWpZLADSU08Khcb+g6phu/9mDy9
	 toLdGMwgMVg9TnfW490yQSvPI8/Th6+0E4ycY57SoQh38eGaFx6n6DBjbDeGXQHgQL
	 BhQ/EZz7X+P/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FCE2C3ABA5
	for <ddprobe@lists.linux.dev>; Tue, 29 Apr 2025 13:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174593459357.22713.7646713842214778435.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2e40edfb6e031bbff669f9f77d67e02cf401c347baabfb5097978fae1b44ef0e
Date: Tue, 29 Apr 2025 13:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745934593
