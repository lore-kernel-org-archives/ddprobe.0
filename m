Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5BE6C481D5
	for <ddprobe@lists.linux.dev>; Tue, 16 Jul 2024 23:45:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721173523; cv=none; b=kTrXo+B8QDJaFeEORTD+/ETgoy88zd75XrTRyXPr+KWTLV5apE5QJa7p0Tjq3WokuoVSRNMCNMi2ZrcLAuCFHD7zKjl5eM0pSypNvAI8IdD5323NLCgrg6OIb0Pa1GTmixV2MlRwUW0jF7ctNTSRmJYGBLADJ8cF4eARTZhZ5X8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721173523; c=relaxed/simple;
	bh=xMxES0JSHIF87oOYU7UaFlq8bUH8MH8n5HWw0O0Ojhk=;
	h=To:Subject:From:Message-Id:Date; b=LP6/ehYDbbAScBht549xH23PnLYj49xF8R+AE+i1h7Zz+FfknjqSM82dO/hWSxjypZxVHTmoQrM2nsnvk3tMJROM0N9wzNSBzN+2ueaMc1qHbA87wjjZjcvQhiaRVu+8Zw7agu/kiRNrnRe5ZVtErPSLzw62WC5pfgyHcGR+lpc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PZMMPopA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PZMMPopA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DDC92C116B1
	for <ddprobe@lists.linux.dev>; Tue, 16 Jul 2024 23:45:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721173522;
	bh=xMxES0JSHIF87oOYU7UaFlq8bUH8MH8n5HWw0O0Ojhk=;
	h=To:Subject:From:Date:From;
	b=PZMMPopAGtz5xXN0qnLpx8pHEARMMjUlA36Hu+n6UvPr9VkgNBEU2WxTMUbAuGnkB
	 bmJyr2SNpkJAwavNLlx7jaRFBU81uhUFFG2fgy0QGKKLxNEIVvL6NNNlNHR1fBz8KW
	 fcwl3HW2EX1wtCEXNWjKu/G1H346RO8avuV6gme3DwCPtPt1Lh4v0KUY98ZGSU6rHO
	 HRQSMh+bpA7oucC8hL+txdReKCMVUYazofX2i0XC/KwO7dmZ2GFnqXV2d2TYhZNur0
	 41p9Ahf1Vkba8q155z/cH6jyIc1e20A37aRy2Vx7QO/6s/kMWCbDE9+vUYOGxOHmfC
	 lOcEBbDYLrmew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2098C3DA59
	for <ddprobe@lists.linux.dev>; Tue, 16 Jul 2024 23:45:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172117352278.6089.12730344788943079324.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fc6e933f92d7b1fb572931d2757c5cdd58da1ffad01e4955e8395693192a8192
Date: Tue, 16 Jul 2024 23:45:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721173522
