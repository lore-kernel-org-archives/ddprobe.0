Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C4DB7F8
	for <ddprobe@lists.linux.dev>; Sun, 10 Mar 2024 00:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710029897; cv=none; b=f6At3fRlxi/ZOLbsohj+7zF1OlbzAy/n7cBd4k2KjMa4u+tX7QSTIEXJjgs5B1b7Eijsx2xOhq9ygNDObbrGs5hwFQLK60ujuR4YMOEm0qAxqSmtRfli9TU65FRay9Fe3ax9NnO1sz7KzuwGocH92KqHfQLcUahkWCXbn01r0JM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710029897; c=relaxed/simple;
	bh=k94Crv1aWWYJPimVqMEglHcyEqYJGPag3c31fPkSaKw=;
	h=To:Subject:From:Message-Id:Date; b=YvosuhCqY4uz+8agHWXL0OJGfJEIWpEwJ/f3n1UJc13Vg+QsSABbvYZ8nG4xP7tseLWF4m5WRBrScpGKBD3gM9SY6iZej7hncRk2Oty0XQWF8FZ9Ch67EbcIcH5cx9pMGLpKjvJjsJfbRAfOcRllesbmSb6/cUjDEQoYnWiHvDE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s54RBDEJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s54RBDEJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 88F13C433F1
	for <ddprobe@lists.linux.dev>; Sun, 10 Mar 2024 00:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1710029896;
	bh=k94Crv1aWWYJPimVqMEglHcyEqYJGPag3c31fPkSaKw=;
	h=To:Subject:From:Date:From;
	b=s54RBDEJm5Vnd5/Vh31bo4UoKiKYdS4QtTsos7HCP8enE2kTvT9g0TxoZfL6eMGHz
	 4VxYotIm9SZRoQ8klFFISIpBWYiXDvjchZu4LsL6iHCOSy3PViwS3JRBbghZmmA7LE
	 7qkyAopcAg1iBcYRyMmN4v7Yr0xPtXvw7Yzlj11hOv7IxdYTQyzqtq5VnK6KNCB/lv
	 jPf1DbWqAigjOHRw9/Stem6Y+jhtttUGWBBDMBOCLVlvLKD9AG8X6CzRE4ixEYGtBZ
	 hsnPDagM0+zxiTMeaywCKH7W27vxSIZIQYOqPk7JdYYe/LJaG7eOSxp6mXM9d44ENV
	 1p+JUHCJs9avg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 66E39C54791
	for <ddprobe@lists.linux.dev>; Sun, 10 Mar 2024 00:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171002989638.23823.5336998958266332194.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 86a7cffe2aed68fa727e604a07447be7afc727e2cb565aaf9227d8e48d89b37c
Date: Sun, 10 Mar 2024 00:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1710029896
