Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D253DDBC
	for <ddprobe@lists.linux.dev>; Wed,  9 Apr 2025 03:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744168794; cv=none; b=R2wXcL8Dnvb42tjobDTcqQsy3K+GTOnoWLplnUAzI0BYg0QmJ4O3pFAaYbvZImj7HJq++qwanfQsiMrKnJpbeDaVLEHu18XIo76JKA81XHUcXOi3VZH1CkA6x0+LtfNjWIfpegY3/q4dT3ZRICz5+kp4eg7bjwvh4Rq41o8YwUo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744168794; c=relaxed/simple;
	bh=oAIZPvOy67hR0g6ycOM0BpWHarkPp25wQhASteWqT7k=;
	h=To:Subject:From:Message-Id:Date; b=S7Ac4mKxnvgTPL9p0PDTP3D5tATcIoGecsSQfaFJomAfnwVqZ8WdD00PrYPhpJc6OahtDOByskXBQF8RQIxjJY90erjrsapLmByJDV/wIKIYX0pqN4diC++d0ty1JFUmxXfvuZz6ueX+Kmrc0+QWkIoVmklC34+XYpdnRu2gbL4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ew563Kwr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ew563Kwr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8B8FC4CEE9
	for <ddprobe@lists.linux.dev>; Wed,  9 Apr 2025 03:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744168793;
	bh=oAIZPvOy67hR0g6ycOM0BpWHarkPp25wQhASteWqT7k=;
	h=To:Subject:From:Date:From;
	b=Ew563KwriCSDl1Lvn6LOujBe0ifFKp75q4znX1Q0mPSPwNzMYostNUEoUVOHfEDMp
	 nSZNsvkBYrcaGU/kxmw8HwG/0sb33jo4Rh+0uy9wYeymFdx8q05zQEgRM2V8wacdkv
	 8IbnZ0KPBSb28+V4KuueNk4O7J6is6RAvVjw0EKKPtyCrJ8fg2qKZooXc+Ni6lhm0U
	 oc3KO/ZVdoLC3jkTZ1oaHJcroKAQ64qH7ndZrgr3jAzwTZnUSpY7IMBQ8HmK8NbDMw
	 T6rsN3XtwvcPxuSokcr1m48O1oqxxDpz7M4KJejvD/Cq7PB8WXKqbjqmH5iuA9FPz9
	 YVOYUG32PRLQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9706EC36010
	for <ddprobe@lists.linux.dev>; Wed,  9 Apr 2025 03:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174416879358.10207.2254640786565563141.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a1d2d295c0a254740b2f9b4cebf0c1dea4dbc465da1c99351d734873e4feaad8
Date: Wed, 09 Apr 2025 03:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744168793
