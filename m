Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C06DA937
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 12:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750595994; cv=none; b=ppvcAoof1Yoww1rgby/xyBl1lDIJV1NIui6ibymt98GtHtoYx+EFfyv9CTrLHrGak+innl6StWDlyK1iy4USFV09kj/rC3nDp0bcJeCRZi31dmcdbyl4uvz7ybblgxUlbLHGoND65QdcYCZOL7c3U2+cM4Py57P/TfPm53UfD2c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750595994; c=relaxed/simple;
	bh=hCAjsVKx+Tg8zGG0quGH6FVzksY7HiShmMuOThB2GAk=;
	h=To:Subject:From:Message-Id:Date; b=rmCJ2t0F9zHASGMB3Ob1eabdQVVP/Fv9iJHbL+lQjdi6cgoIZGy6PHNPmUKyPNHStU/CzlUAvY6Hz0fjMC+38mq5h3JjXxd5Lrdhg/4qD43h1kBodyDWChmpfsd9EaK/dMmiZt46SS4h0/vIXbw3V4fft/TSByrON4WYfnGwgrA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dPxmq7Sd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dPxmq7Sd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7762C4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 12:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750595993;
	bh=hCAjsVKx+Tg8zGG0quGH6FVzksY7HiShmMuOThB2GAk=;
	h=To:Subject:From:Date:From;
	b=dPxmq7SdgHtBAjdCjpK6cWDy61jLQv06x5P4wSz4n2D1ifYokDbUc6+kvaLOBM8PW
	 BnQmw7DCb+HRtGrbiK/VCETKt5s5HDQ1I93WBvAnssz3S614C/NK7ssQlvig+WtHff
	 AWUE1KjeBkb5IAsCaxwkZtamSkBp82jYUqMdprEN0dynu9Tj6MrZZc4RR+dzsuhg6V
	 PDFNT0BNrvTEcAdRkYnZRGts+duGpCJO+1/s7popew3KiI4TvkihCCD0RmE+wLyWyz
	 hH7RGuCFt94JvWkTTA3noDZsuCgYWIFZUm/rzqxIU4ktTTUW7t5s3Tm7k/K8WO8VGB
	 hED2vtoLoNZOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95024C7115A
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 12:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175059599357.15423.7152538317335378091.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e9f21cf4392eb6e922d51f0a5926bb4359660f4a09fed80e1f14052c5b72cd73
Date: Sun, 22 Jun 2025 12:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750595993
