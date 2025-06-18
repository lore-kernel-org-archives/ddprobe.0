Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B318212FA2
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 20:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750277994; cv=none; b=Zd7c+kgbzwovVeK+l2psF7AnoAqPzXCGc/l4t2QA1aoXK2kpdQe73nJGm0QneV1reDU4s+zTmMYKY34Ulwfpjl9KcrJ1lYSf/lvF87rftBjzaWfxqS82sNIGtwljj11+XB+RjOCjEgS6D0Wd0yzU1Y4fCtav/5RYd0nHiTE2hhY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750277994; c=relaxed/simple;
	bh=elNrN5F3f0JnjG9BO60e4gBvA730JSqsPHPU49ODTgA=;
	h=To:Subject:From:Message-Id:Date; b=gctJ1M8SmzAUjpGKAIiEMA+3iqZ18o3Jn/4ac+JE3eKNmBxfuH9fA9AtN4WglIJUPC6bNFdjM1UuyDwqz/RwyPSpTWkXdEcMMYKe4tX6EFZ+aaGG4S/8hJqwTHe2I9VyZ8ppGNTRjU6EbLRfWMvJni4WK2aHgqfHQpe+a7MKAtk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ATK6FkfA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ATK6FkfA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A30C0C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 20:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750277993;
	bh=elNrN5F3f0JnjG9BO60e4gBvA730JSqsPHPU49ODTgA=;
	h=To:Subject:From:Date:From;
	b=ATK6FkfAZQyDZrPknwvOXsduZRUjV3l3RtbRvckoCOlMyQbnn96zaBktF9/ZeZru9
	 vSB4Pymu/N+ilbW9XkPyzzK6naVBoZJqbyrhWzaZGcRGvxTrMQ2PxPOb0NZQymORzg
	 7N7vN4BFS9Aio1wt+C8ddkOxFeH/IWA8JIfgO9+vWpSivLsbwvs/PwFIurdcvqD5ih
	 ZGXLNQfUaXXPmxy12hNHUvfQnevaozIvSrZyiTX5jrfySv3q6syVnydVU/rSNsPVfY
	 3A+Dn7iA3ro9mShA6Xjj15VGTPDw4fBKzrdG0piONpS0dpLf76naWrSo9/s02a4RwV
	 wlEXxkGWhFoUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91594C71157
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 20:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175027799358.18480.9247792221578563464.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eea063cd0522c815606c91b0cd66807ab7e619123e4b9de4a18678901b88979b
Date: Wed, 18 Jun 2025 20:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750277993
