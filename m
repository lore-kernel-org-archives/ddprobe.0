Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DA4D1175553
	for <ddprobe@lists.linux.dev>; Fri,  5 Apr 2024 22:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712355496; cv=none; b=kpnv3Dg+6wRfBWti90kh2c8I3YUk+ZDcLnEbqGYmFwDeMY5AcOwdgdnQfDMlOuR4+5POInSM3A8RFlazbRC6ZoDyDSCJffLr3rlTpRHxncKO0ZPh00/lnkpub3W5kci+tFxOaefXwTQe6MEVrY/Am/N5+YJkwedHaMcD0C2ywsc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712355496; c=relaxed/simple;
	bh=6qAfSQpGiKWyLoIw5ChFn3UxWJRokiwNeo93P6Adin0=;
	h=To:Subject:From:Message-Id:Date; b=DHhtUENls0i2h0LMlSHYlHzumK1zTIT7JIVRfawpsYq5b3GN7UAKye7xJDljq7utWXWzkXmJwmXy/Ox1doeJnA8XqELQuQt0BTqVjNaRbjrvZ72UdhA1evhOR+oPDdEcs8qSpmyQ6+FIH3CwrAmmu26E0ywMre6qADf+m6FRiU4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Sstfizgt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Sstfizgt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7B11EC433F1
	for <ddprobe@lists.linux.dev>; Fri,  5 Apr 2024 22:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712355496;
	bh=6qAfSQpGiKWyLoIw5ChFn3UxWJRokiwNeo93P6Adin0=;
	h=To:Subject:From:Date:From;
	b=SstfizgthxaNLiVLZz2aPn3Y2nMbwW/oPi3kJy7H8pfFTwwyT50iJtCqpShrXLBYW
	 2j+zP8Lhwnv95e2vmzc0Jk+gBHxkr6vk99NxIwXwLiI/w37XNBj9luO4bhdd5Ljx90
	 Y0caFeEe1wDEg6WAjK7Gj5cyYsXmEhgnGBdhzV1PMvbMjQRWYmEFPDexjyXDz1QwPR
	 dXBhp/mba+p+X9A8TeW6UpEyTHAySkcJM7Ok4sm6t7V9OMY1jT/kaZ98N9+OjDiJo1
	 zC3OsIdlTCuWSxh6MTlMkP6q2mzEpMoLzsitG9EaHCK6xi7/GSMvUKMOe9CKi7MyJo
	 FTuuTWvu5gCmA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 69800C3A59D
	for <ddprobe@lists.linux.dev>; Fri,  5 Apr 2024 22:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171235549639.5006.456685726629823239.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c882943b4bd561afff4fbe4417c4f0e1be7314f2ce879a586c8d4cf2023b62bd
Date: Fri, 05 Apr 2024 22:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712355496
