Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2002C3A5430
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 08:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783930114; cv=none; b=VZuWzbbr2paCuGr8BHC1AE0C50bPolT41xLxRGNguqIFPLvBxpbgSbFL7cRdB73H2aKaA6BnE8mg/I5XAbeZUEN01NP2fO9kyVdnEIU2a52z6bmsTpXiL4D3x0yIVxWDWPxmV2Dow1xlXYwaNdAb3qskcrfENV4kOe65rC+VgGM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783930114; c=relaxed/simple;
	bh=vY3bJlzZyZiljVF7ql5c4xvvb5sLb1DQejfEB/e+yvU=;
	h=To:Subject:From:Message-Id:Date; b=ne0C3THTLib85ZxWiQ3nCurpQy1KMoT3CA0Wyzl0uSmYVPlEwqUVK2/eYC2sL7NjXIlTLysflMOiYIxeU07dM6z9HF2ySBCWDC2UzpUYWyqxhL4700C9bCyU9vwrb3VBv+aR1Vo/upJggUcTOy6Wyj0y2q60CY9+9kwe5/w055s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l8g2MrqW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l8g2MrqW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7F92C2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 08:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783930113;
	bh=vY3bJlzZyZiljVF7ql5c4xvvb5sLb1DQejfEB/e+yvU=;
	h=To:Subject:From:Date:From;
	b=l8g2MrqWsjUiF6DyiTMP+X01TkYFA9/RXev2za9MdbtE5/9GWPs3IWFMHuWMx+SBX
	 ewvsVgmM9CLOYefOZ7oua1R74H5VELKBvAoOhZyg6p2UTTOEcoamrtRziS6LGG+Vfk
	 DI/ian08pYf4LmkMwDOnitgxvmB0kWDSNWa1/0bH/ARLJHRyV6f2tMqNkMzmOfdiED
	 LTb8n3+YzHS2EkLogte8jr4WRj5p+n05JbpL1jZAXdufszcDiepDkF1mjhaZPFfQWa
	 EHHHKoyYfR/9OrQm+Ns6zAt6nSVTFUGb83ZQeKWE6qwGdKRc6XJG4/3Cc0I3jnDcX+
	 j1xkGk4A6RoQA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B304DC44501
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 08:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178393011372.25278.16900031496049260273.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ed91d074e9d36a7b97da7f2b3f4bd5d84e15c2643a212cae77e3538849452207
Date: Mon, 13 Jul 2026 08:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783930113
