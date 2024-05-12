Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 71F61BE6C
	for <ddprobe@lists.linux.dev>; Sun, 12 May 2024 05:02:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715490143; cv=none; b=s7BfGOqkkzjcrpx3CwRr/k4frICAqd4jn9pBQVvcyDpOsup4MnPcM9xI0WJCLw5XehyDKsZKMtNXj5MgJ3AN0f+QmteNK/K0/vGMsO6qkErwNdX54i/p/RRfojmC0dogmUig/osXmtrDogxUhiR+6v7lT3HwkqcwH4dasjkPsdY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715490143; c=relaxed/simple;
	bh=CvGqvmeFycaCqzMwruxCcvCgjrkjcmzZI448iLJzeHI=;
	h=To:Subject:From:Message-Id:Date; b=mc+tkrDcZMpN2401fEG6GeC/LuOwQZvx6i22Td4c3iB3c0gEtZkdet+VOmhn8imXp7IyqHqg/G34RkOpSyApVgGUl0uOcqdpxvEIr8w6FB/UHXItSOUfX086DNcSSRpNj494m2LBqfS3mQwC9mHVGQfpqMnuZZBElk/K85Zt0Ac=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rfGcQ/Jk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rfGcQ/Jk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E1D36C116B1
	for <ddprobe@lists.linux.dev>; Sun, 12 May 2024 05:02:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715490142;
	bh=CvGqvmeFycaCqzMwruxCcvCgjrkjcmzZI448iLJzeHI=;
	h=To:Subject:From:Date:From;
	b=rfGcQ/JklM5n3+bdpWWpOEKpSxAZ19/Yw+1PUoCXDiz7ETUZcmjjshIu5PxP95J8i
	 4+0leilreMI/V4z1xtKwLP+/kfpNnsEBntlRQMjq3N3MpUg2heYstvYom2mXMDbKDq
	 rg9Gr26R7c2deqeRG6F8vU3t26bTuow1YzawRfN0lgyz6VqOa5OggDGqvWkRgwkgA7
	 y18zCI/DrUTc5c3u/yLerxWMKSLOX1noXH8+d4MJUJmgQOhw+OFIzZTXUVnOtl0uqc
	 Zzbi52dSxa5pLwJTuvu/zV9L+MpAi/XkQxIdxQiRoPFcB+YkVZwZbEKc4bgOOWDyXv
	 HL0DVvu3/Ltzg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C8F59C10F1A
	for <ddprobe@lists.linux.dev>; Sun, 12 May 2024 05:02:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171549014279.6213.16680013589581216629.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6c92fced560f9ab43828b51a07e5222014c03cd94501a0a5c97163309d3be19b
Date: Sun, 12 May 2024 05:02:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715490142
