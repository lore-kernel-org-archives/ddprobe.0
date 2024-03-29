Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EB142126F3C
	for <ddprobe@lists.linux.dev>; Fri, 29 Mar 2024 18:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711736297; cv=none; b=OoyiSsFdR6i5OosGgoN4YNGk9uDNI5K2zsYeYn/94v08o8Gtm9bIY504WG44JmvmZ89tH60gwJE2Vn6JTKfDFkGcQn1444li3XOxpNMm04TJdyRsMZfgP7oRtTr9KNUy6MfbMdoUIOCgySw2WHqrok+llhUDMoRckM/kEpYlEgE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711736297; c=relaxed/simple;
	bh=wVLY6zau1akfunViEeN02Gz0F8q/n8oeMThMQ4F3xKM=;
	h=To:Subject:From:Message-Id:Date; b=M9fkt0BiA4lYobm8txfmSvAb0xNWLh/5Nsg7EaKoWI2cI8IQl6aiXUKYr5gGZ4FLWhze2WQ/8d4h/PXWG0dZnYar4j26m9vhXZ2vcPRXFPSiSiJRVZkkwr2n+2CNR6NfrfkunRMe6WTFV5lmvrv/kdUHZGvZw8RIeGFjivIu2y8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WudJgaIE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WudJgaIE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 75B80C433C7
	for <ddprobe@lists.linux.dev>; Fri, 29 Mar 2024 18:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711736296;
	bh=wVLY6zau1akfunViEeN02Gz0F8q/n8oeMThMQ4F3xKM=;
	h=To:Subject:From:Date:From;
	b=WudJgaIEF7gjn41HNkuVthf8qDOalkdJcFzuLNRMjo51UbjRsf6PoK70tiBJr15/Q
	 iL8KOfqwJ4/b5yBCu9Fng+US1H4t2Ngy8iIfaYbFtTX2FacFUozoutE6jhrJwUEaQ0
	 OnTAhDDUmvZbD2GSYQAKHbjMDT0hnmLCTmyWLs9VjqZq3tPQM6BKt9Y9Ar9fk2NDLZ
	 JbvcSCcaUqOfJNB2ZKm/MDx+8f2ITjH6CMGVpsSPV9izO7VReDtyp7zsI82/4/xabR
	 aBpqPs1gZMoPsR1FBtFfuA0bfGG8Cv0axNHGbr7pIKEbJCq4pIs1V/g6AP1IaOozyN
	 ZbH2I4q+SASfw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 672DDCD1283
	for <ddprobe@lists.linux.dev>; Fri, 29 Mar 2024 18:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171173629641.20817.10290580150685740187.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 775cd84df37b8e36d4f0a6e8472c96d8ea40e3d7f8050d21ac7a7533d70d53af
Date: Fri, 29 Mar 2024 18:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1711736296
