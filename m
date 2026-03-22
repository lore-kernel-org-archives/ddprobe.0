Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 158A237FF58
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 04:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774152894; cv=none; b=MaxQ3sMV/FRP6WRVy7nPsIj2gqleJiXdNmHLI9i9oshXY5X35JLh3SuNlrCKAWj3RTKSZOdk/1H5gLwhNIQpQ+EEN86hwzT8xZRDBb8MzeUVF8baFNZsvF4Wa8t18357p8b52wnXZnXOYcy8syo7pU6lnxsmHuvm/7gBu8gBf2I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774152894; c=relaxed/simple;
	bh=Fj5a1DjcmgWJGue1/uuNhJWAaDJVKs2sCCYF04iK2DI=;
	h=To:Subject:From:Message-Id:Date; b=rYke0vmJLPfW1Iq1uatvUo7/wpHPUqJzsic2kVoZErikKjiRX9qF/ECBQBxvufJUInKGEsFvQihKOA3DVc5BWNMkwYwPEnkDe0ndYdVGqyhuPf7U1kpHTZ2cBuzcGN7eeQChdcg/KAwzcH7dZEqfoZjJ9wjyW7sWySYRSySnP6E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b7TXGfp+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b7TXGfp+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A791CC19424
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 04:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774152893;
	bh=Fj5a1DjcmgWJGue1/uuNhJWAaDJVKs2sCCYF04iK2DI=;
	h=To:Subject:From:Date:From;
	b=b7TXGfp+Q+gLPP1Y+yY3vdP2unJ11RzyCdZWENSrPa5KisR3KYQ7kjHGZBWy36Xrk
	 +D/8R98fm7wRA0Pt+0vjiObTve5aptZ7/PcVgkWiIzDhE5wdMRQMqe/o8bU/mEY5Aq
	 QjkfUpjExHSriIEUUk+Up9qayAK2dapBRqZqzncJUD5MN/u22fsT7x4sypDVqU9Otb
	 NPNWArHaVh28FZ0Z1Aolc0DSkz4vOkEUpeDLEFGmYsekWbObZlWEOIB76B4WE1RAsk
	 CsL6RYX0asNS6cOaWoFXpElABdNm1everq6SS4TD8cgQpPoa0Sm3mfnYA+2Ce9fAFI
	 Icbh5UpdNp+WQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93A00FC72A6
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 04:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177415289358.1994.1722708460116507842.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 710836d19f36a8a6d89e29039b77dd842591209dadcaf73df496dd7426f7f6e9
Date: Sun, 22 Mar 2026 04:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774152893
