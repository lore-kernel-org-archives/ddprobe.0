Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55073310652
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 01:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790212834; cv=none; b=gKRxlG5D3iCBPhLXtyiHKSeZoFm1G6mFCHLfe2IwSbVUFRE7yj9slzc5IcQOSCpDsIqyHNP9sloHWyYWwncc5GbpVlOXymMcbwHieaXdkuA5Yf46hm+1FhjiAs3JLXm7Yu5373O2DakJ5mQelreho+lSC6wjAI/TnMm6k7WtN9A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790212834; c=relaxed/simple;
	bh=UERhmOdMZk799a7Oy9bT3VLjt6yzrUVm6fW6FL5Pk1o=;
	h=To:Subject:From:Message-Id:Date; b=kH8M1Elk2JB7yR1Z/kmTFv1xjgAu8OtL8H4VIsLwvApbETWFC7Rq0jCgPNJOvnCk+PQfYhjPGLxgZ7M6B5VzmxRbjgiNrK97NnH3M77Rd9RSTPMYqvYz1aYE5zGRQXbI88mYHdibZtTLjBKF3abnilSm5Ai+VBmV7g/dLAANjzs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W5vwwXL9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W5vwwXL9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D907BC2BCB8
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 01:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790212833;
	bh=UERhmOdMZk799a7Oy9bT3VLjt6yzrUVm6fW6FL5Pk1o=;
	h=To:Subject:From:Date:From;
	b=W5vwwXL9/IHllL+2pURnEwDfZ6fp2507CHMygCR2DJ9nXHMFF9F+jfWUp2poDmWn0
	 7BbzljX9UvetAU9laVoWCzxuCuIlRChD4MrD1ooLPqLznknQFxj3V+SRX1/VQcZTZK
	 tW4b+PKL4+aXbKsPl8uQOhgyBtgW3B7YjTZCaCmOglipi2LRbl0FCEDGiCiHRu2e5E
	 NjxHfQ3/9F08cPvG6tZOnhufU+jdwOzApc0bcfWGKN/KeMG/cTud7LR2WUSOmBbc0k
	 aQjlpz/XgggrlSsU9evlpvi/ZQsW1idk3kbmNM1wc8YHANmEImv5uYnu1/b4wDBAOD
	 s5k6moRDFx83g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3295C9830D
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 01:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179021283372.30112.9738680601158754389.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7a2b5dda00c3449bb88ad166da8999d912b2c300500b378afacff5ca81481c3d
Date: Thu, 24 Sep 2026 01:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790212833
