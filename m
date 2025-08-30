Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D0D1F2E2F13
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 20:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756585793; cv=none; b=ZGDu2soMgePz159pLcLqvEq6mbQ3gI/9jCFGyfZAoB6ROrKXp9gXP0PdhJbVyw8Utr0+Fldw7qDlO3+y9dXsD4XdqU7RMtmGwPPGqeKMpqmNE50hfh6muUSyDMmCjpqt6qaVjFEqRgtXN6RfAlfVkD7axN03sBEdAsgQ/+L2CiY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756585793; c=relaxed/simple;
	bh=sW3cV2ByF9PLG03vBIpdwf296uCYn6ydKuw1NwtI3fg=;
	h=To:Subject:From:Message-Id:Date; b=N8Ra9NMA/GXNbLEkivCFwldZac7vaYmXRLjgvM4h/FIoT6AwJYy1eeagYojvI/hVoLT2THmENPE336QJFU5zGQmXCJBp6ZlEXsqttYYzwWXA6vrAagcj/h6gkyXwfnCnzgTrmob6LO/KNSLq0LiKq3+KhCSDG9e0raNwlX/LIWw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P/Bruh15; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P/Bruh15"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A76EFC4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 20:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756585793;
	bh=sW3cV2ByF9PLG03vBIpdwf296uCYn6ydKuw1NwtI3fg=;
	h=To:Subject:From:Date:From;
	b=P/Bruh15ZmffqiPm2XXkr0GZ81hfxSIcwrSg3TclBQg+v3X4j77PZsnhw+5ZL4JTy
	 I63kQen1DbBMzwCsU8nylIghfW4Od2zNpiD9ueC8ppjZ4OFWxh0sIV59C+qv7Lf9tC
	 5DKgh0aKKP4DEFIQ2+5W4VfI8wghyWTnJ00r4EDVCIkXDHdWTraDo9/2sL7VBZ0Ih4
	 lf2JDHEenK+JPg+5+KOuoXKR0NwxPwOllCBHqiVQxsE3J9F57cWxlY18roMFCcTQHn
	 Jg7Kqv1RkOicrOAlr+dzQKJRYSOwWMJ6O+FWzQI5iETrMby1PaA3ZZOE1vxgrLZbw/
	 IeZSA2SCQaDkQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9272BCA0EFF
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 20:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175658579358.5585.17669317432350819256.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9dc8596f0f76fa27e69325b3fb2ff16f836b4594b28942558fe018dcfe767d7b
Date: Sat, 30 Aug 2025 20:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756585793
