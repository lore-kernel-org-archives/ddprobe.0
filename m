Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6529E322A1F
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 20:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785616834; cv=none; b=MZ7rsMX7/tS2+BLO8tRa0812QYnBzOK+vi2d90g69iqsJe9GQ7f1F6Yqhad5SrxYSRRInGIv6qj/3xQFrKPSYqQL+EjHjDkHrlSxoq84uBTyfoYJY8heM083hGQnEeQz94A3MT/gNPhWF71isBywkHHgUYSY286aTt+LsaD4xCQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785616834; c=relaxed/simple;
	bh=TckY/6S31gJcmGiuLDg+SekV7GA8xH/o8Mvi8Dizr6g=;
	h=To:Subject:From:Message-Id:Date; b=u0RvCuyFWbqdWcGrvA1wE/6dIx0PHogbhNzvoyhjw3cfztAYLMzgXCm6vX7N5F3sI6OR48O0VEaLKNev3bf8wKVokEJC61DKLmZVXkyUP1t5650QVqiW8OSFXh7kf7uE15Uzee/YeVb3w1KYzWjTiCCAnGByTGOCE/ksh0S3c4A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=paipzsBs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="paipzsBs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD25BC2BCB3
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 20:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785616833;
	bh=TckY/6S31gJcmGiuLDg+SekV7GA8xH/o8Mvi8Dizr6g=;
	h=To:Subject:From:Date:From;
	b=paipzsBs6BvZuAUZqdwNKUSwztnsCaPFg7YhNRWBWR/ROkKXsWF5PfjI/erzGM4dm
	 mcphAQx9bYl/w7e3vp9SE0XU2XrEXP0PKgbq2LHrOmpxvAWfxwOHTMENc/p5WAUQKC
	 YWSGoCa1JtPglR4Jy3KVO4UqM+0XZEoX6WSnqEuFvXCM0+4eO6Cpq3GDYizJ2yFZ9I
	 tzGDsFeuZgIQq4b1cRjR15B0uX8bAfPTqyPmJrpJC3GwWbf63PoLOP/xEyTUynWv5W
	 xe8XDQeSmQcuw88Plpoqt5BewdLR5/JWDnE/jzumOKbUQKgw5b+IxvAPxhQiqKViZT
	 hAonvnNx8jfDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B279CC55172
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 20:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178561683370.14870.18291553038278339120.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8837b86f6a6db0725ef69569f1dc518ed5db105acfb967ce69bc8e4dc255e557
Date: Sat, 01 Aug 2026 20:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785616833
