Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EC07C2D9484
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 16:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767890034; cv=none; b=P+N6ooRRozY10hnx+rm2pHBySV6/NIwPm9n82JuV59EA031Q5e3aeWB5gTwFne4Tib86o3TksHV3cNOj0C+KTJF84texOpRnwIGDdsOGl9iRkJYQ5NehTTN1JITSuuGOVWXhMQS/+iv0xK1kqCqergzntykxs35a/VTZ0f1JNEM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767890034; c=relaxed/simple;
	bh=Mcs45cNtSfoFsPsKW1aC4lX5LdCuhkWB1MTfFX8gnBM=;
	h=To:Subject:From:Message-Id:Date; b=iboTyIJEn/+Uf8IUYzI0eL0KP0q+JzQj8T9szdO64fdu/5krbIoUh3uSqfgrcLGmFgl0Zb4GLc4VfARzism9vm4Z/GRbLrZKsdK/ZpYTpDp/xInbF1Wo1GBYV7oXLGT8FKoJZtAzOoG7NbUF/tlYwG4EcioNETyj7ExkApg/wZc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CTHOlttt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CTHOlttt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9ECA3C116D0
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 16:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767890033;
	bh=Mcs45cNtSfoFsPsKW1aC4lX5LdCuhkWB1MTfFX8gnBM=;
	h=To:Subject:From:Date:From;
	b=CTHOltttqys24FEaUcwXrwACm5EHURl8uxsUrrMNQecOte9lj45vtv2gaHvnXVgeg
	 mGT9VRfgZFe4nz+Lr+u4CKHx/IXZquJoynSJHE4Mm4I51Vp6CoKs5IjL5o6lA0CJ6o
	 byLgZx9xn5OcmGRVg8n7lceN5AQS4vyK8LR43IpMIxWJlP+UOaR6yQVRrSc3NOxfMP
	 LO5V66Ze70cyt7OhqLK7KPxqoUJEVqmOmiq9j6wVOh/B7T+n73Tl1QBBBnhGqfwzDF
	 jxj+R7cHlL9vJBR17N2h4cakQhVnd6eQ7+yL1+nxdhe+ryA7+udJgu8PUMWxlqsEvF
	 g31klXSRRFUaA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90F62D1D480
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 16:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176789003358.2425.2507691501335971414.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 02785a409c112edfcdb2bb309914f3e63e4b016c05d24eeb48a3757c3725ebd7
Date: Thu, 08 Jan 2026 16:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767890033
