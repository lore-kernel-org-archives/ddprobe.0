Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D75B645
	for <ddprobe@lists.linux.dev>; Mon, 30 Dec 2024 00:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735517754; cv=none; b=Dr3v8cU4oRBN790KPx+ggZJpQJEZ/JpUbHJiwxawwrpyYEK1BtJ2P7V2C0AUIWEIK3Oz/jxzd9zCBHaOeiwhWbvOj+v7XTKDtxW0Swg90TJip4i94Bpt1Ox5NdcgE4wZwD5+L6PGwpaZDKV2QKFX4hOl9j78AZ5+3ySwYWKFOCA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735517754; c=relaxed/simple;
	bh=pWgRLFIajj+K/NoQMjzE7bC140Iw5rEt1adZzvY5JxM=;
	h=To:Subject:From:Message-Id:Date; b=pjigQR0dgsZ/kdRronJjayxjsGOI/uD7/8zE/3qD8vUYIkeluL83gjq3Ljfx6b7aRaSTytVDAunUQeGB3Y3FBQYb7gcMthEXsQlBex5XydkR7QEk5L/Zys/MY6Cgz8SoH9SNkn/HrDY7gNBoWmgAKrLoqxbPvlxH0H3M/gTzhVo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PTmHUcG7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PTmHUcG7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7DA0C4CED1
	for <ddprobe@lists.linux.dev>; Mon, 30 Dec 2024 00:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735517753;
	bh=pWgRLFIajj+K/NoQMjzE7bC140Iw5rEt1adZzvY5JxM=;
	h=To:Subject:From:Date:From;
	b=PTmHUcG7lYFNWnHBDyQTwc+PvAQhQDS6nGEZTH6oRvIjyPtT8NUHfLXpL35V64Fs/
	 o8lTUkY0EV1b+SDL+dwrntA2J/8c2rtDxwPJE5qNcFouRWHuBy4pwAv/pBGO2l5yia
	 XKpEgy21ofuiVRYOVJVjbqTi998By5wmun5LSQX/yzqqBmG6mTg3X7YC7Hr5BKZUe4
	 WN4emtL+xwDzvyy/FncyFn3+DmkAZvMDkkc2yOK9psOzPnJv/dBMn9ryb+LHAfKIOT
	 arsXtr1hDw0UexJnhut6N2FgTl3zKkxRdaA36fnzoTjW0G9GKrV7VKdya9y5TYyV3/
	 396QTqiViboBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 990EFE7718B
	for <ddprobe@lists.linux.dev>; Mon, 30 Dec 2024 00:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173551775361.10788.8226264883397333313.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 45ee03a6e646db56b9784411a4655be347919a3771e64571edcb3fb0dad8c795
Date: Mon, 30 Dec 2024 00:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735517753
