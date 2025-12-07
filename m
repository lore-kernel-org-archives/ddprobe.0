Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4174016A395
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 12:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765108974; cv=none; b=Ghynlpp36J5+Hpz3sIwMFU16wo+D6WFAsMW2v9lOQKbFbvlqf/x3cW6Hs0bVatIWmJrFcKnk7W622H3CPaHgcN8Vm+unDSJzv2eGD5GGg9MLIiS3n3Ez+geu4D/+cA1nVzZepRDGL/9veZl8I33DaDXKD2a0pJzTEfLKVVo4GgM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765108974; c=relaxed/simple;
	bh=BT76dKs809A4OEcqlHNWumFLkonpmXUCX5MX+ErI3O4=;
	h=To:Subject:From:Message-Id:Date; b=RCO0qROpcCg6t4WalP6ZoglS/AGDgYULkZ/xK25YYPQ7aC9ugQ6EN39y9MHTad3GPWk85nvjrg5qUfd4KUwg8Ora5XLYqzyYQhzz4yXd0vkXSGYjNM+z3RQ4BcFYnRUeV0eWWuAzbcBBqxlMglBXXMJwYIRboGygEmHwqmMAxIc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uIgfL553; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uIgfL553"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2792C19422
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 12:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765108973;
	bh=BT76dKs809A4OEcqlHNWumFLkonpmXUCX5MX+ErI3O4=;
	h=To:Subject:From:Date:From;
	b=uIgfL553tlJF4orFlcgvSv9WpZaqHsWBSRZxJsKy3ODJHKlIV3e/t109pbi8PNUIa
	 PJT5/zaMvhWbISGYwwM8SDfci2tRAX9eCPo0ibyv9AUNw+9Ff84IBbamJZVW5LRjT8
	 Am643NkgAQ66w1gqriiFQ/yKOSeKBftEsIO29+/mfX4HSLU55ZaWWqAfEOPkfStzuD
	 DmBQQODd2HlCzXZIXAjdXjOVRv3FVnkEEu6mhGjid/tK4CqnT85VhC50Tw293W/D7V
	 WAuwMvgKvP/i4c+ja5SrzYVKd4Tt2r2Xt+r0YUu2B7lKM/jMxstQKk3GO3cL0jqohY
	 mLFsNie/Mx+pQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D8ADD2CE17
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 12:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176510897360.301.3944747178834755427.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c0b6d663a4ee833d2bed4215bafd5eb8195647fa8478e5fb0d2c0858dcb00d1d
Date: Sun, 07 Dec 2025 12:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765108973
