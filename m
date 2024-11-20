Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 542562F2A
	for <ddprobe@lists.linux.dev>; Wed, 20 Nov 2024 19:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732131354; cv=none; b=MEDp/oUx/kNNaUdPoI7CrKigdjVqAFzHiPcVwKe7CpDBiOFgPPnBu/8sNEWUFCeGmgTzpUwsRThKxAm/C7Wa66xA2FRQFPmrHmch2kOWig/eVW23TDmekoxVlsqejPKZXKx3fNI3DHpdyA42JDvCRe2BWs/5aRogjpYC74AzdGE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732131354; c=relaxed/simple;
	bh=RUYsmwCU3kiljUqWg/Jw34hnvq96F8TshUPTFZA73BE=;
	h=To:Subject:From:Message-Id:Date; b=fWFIFg+SE91J+kpnRjb9MdUTsEsuc68M9laU6NuLiPI0qwZeIwul7lTfHBIzIx0SVKvzTPDlYiu3hnVEpNSwq/UJWqLfyQxYLL14yaZI+lBm0Xb/RcT5RLA5MLbBmOJa+wgELQfs6fwzZZgN6mn5ce0L6I8XRqEMmG0Cf3MTQCQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BUDwr/So; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BUDwr/So"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C863CC4CECD
	for <ddprobe@lists.linux.dev>; Wed, 20 Nov 2024 19:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732131353;
	bh=RUYsmwCU3kiljUqWg/Jw34hnvq96F8TshUPTFZA73BE=;
	h=To:Subject:From:Date:From;
	b=BUDwr/SopOm4PyB3WK/aY6MSDmrv6F449uLrcxNkD5n0AGs9FCHpQqFPWbxpFC2BW
	 Rz19a3GqrctynMYrdQsgd63DuEB+qSyVnWkKnE6t7BbtiEnKp3SnpZEcqxg6OWVeX9
	 4cXZ2IcQe6CnkmpBdpLGUMAY1s6WbNwZyqByNwqINio4w/8qkrv5V6M0uRf7NgxQmJ
	 vSRx+/rb48mLZ01Cs6mVNaUc7yV3oauMcA0zH3z72GrxSbOKo9WSYfhikrCpscZKCC
	 9AOttrca0oZxvzv481NHfKVFzJWMuGR+rcHeRXf5dzSbi86eZKDu3va38RKH/P9p5E
	 2V6I628HKqaYA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2BBAD743C6
	for <ddprobe@lists.linux.dev>; Wed, 20 Nov 2024 19:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173213135368.15789.6218963177355723331.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a243d36a229220bd47d9909f54788ce717458486a81a9c344b3be87f4c811c1b
Date: Wed, 20 Nov 2024 19:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732131353
