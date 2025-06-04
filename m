Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A74E28DF1B
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 14:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749048594; cv=none; b=eDdLWR9TeosgzwwXGvPd9vGPm2dFw4mBg1V0F2Vj9g45FC03ts36wuu4WD/H1PSBrAW89/UEtkGTDL+mbpD86BUIZDVAgwrdt+sOSd1nNhP33nPLmdzTSTNfW+ty2wlWsnETVpEntskPRRHVAB9KAcqM1nKxzCCMW3v+tAmQ6WQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749048594; c=relaxed/simple;
	bh=67hxyVbeJLd2iCzKUBoKRALOg8jmN+9L5ObZX/46Aew=;
	h=To:Subject:From:Message-Id:Date; b=Rs4263w9Dyx2b27d/ejdaqZk3rtb+r/t8ir7t3iMaAZ2qdFODCuWv0PLXyqTUPhQ3Xl8JAmicOWklOIfBMm2kZ4tXl5JQRxzlYEPZOSYx212VIvUyKjSSGBn5WOnyGDsHILTDg7X9Kq+VqSgS9JHXSAfmFM0j5f524Dh6juuoNU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iJ2eBqss; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iJ2eBqss"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC82EC4CEEF
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 14:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749048593;
	bh=67hxyVbeJLd2iCzKUBoKRALOg8jmN+9L5ObZX/46Aew=;
	h=To:Subject:From:Date:From;
	b=iJ2eBqsslavS2qlCILZIDkBnXdkZafWDLFxuyP812qIMY15c2PGUT/XnYKotqC2p7
	 j7JNakriKw3S8ubrPMfAoXH3+kNVSckgJWcQJq/lnH8jVvrdYtMp+uy8Y9mTZ642Cq
	 +DRvL+lBdYiasp9iwW4fhJMN+Af0jkvE06XoirfOMHZiK3Wy8iDcv427uXzkzIVsxY
	 77OfJhM7x5vLF/WTc60H7EGW2SFXJ7tZ9ixAf3j1wtvO5EmQAkhxIffooKdN9mQPGC
	 p7ankeGC/Lhp63Kvg3laVkozUrkU/o8XqKT66Iz5SWSMNCG4B5ed0hwv9NnP7avahC
	 4Gw/3HcKzRKQA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92B11C5B549
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 14:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174904859359.9434.15981572970240658827.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6df8078eeba4271ab5e35343000005a6d937e389d427f426e71cc160df2030e0
Date: Wed, 04 Jun 2025 14:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749048593
