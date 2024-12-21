Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 250AC25949E
	for <ddprobe@lists.linux.dev>; Sat, 21 Dec 2024 12:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734782754; cv=none; b=RCv/91OWKLllSkfmYoMrCJ+Otfc4fgFf7Pb3NO945hMhF8awPfr2Qv7BwFBCMTCWmBgTVgo5h4Unr9g7Z78Ft2zKZ4ul2KAiauViip7YBbd0iIW//GlxAaVN7rE6SnWfv6LxO7IDdDpRDk2QHegnLWQJyp9mM9+N4Ksp1bLKwxk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734782754; c=relaxed/simple;
	bh=YmsxpKLb60C0pEM0FZLUcabt9WmoFu2nPpt6ya/LIpQ=;
	h=To:Subject:From:Message-Id:Date; b=e9jtiZ0FozKX1nj5mqDaUo9aztFroFvfYGbN3rtsqnWBucst9087IHbmgVUbKD2P9vW66DkqnrQTHFsEgpJr/os4XKx9R3X/AXHhc0VoEJtzRyKM6hZrU+dpVOEOR3ceD31N11UG00hS92zALW+0+woosgkUQU93KMkUne+K9Hk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HjNMbQ8i; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HjNMbQ8i"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9F72C4CECE
	for <ddprobe@lists.linux.dev>; Sat, 21 Dec 2024 12:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734782753;
	bh=YmsxpKLb60C0pEM0FZLUcabt9WmoFu2nPpt6ya/LIpQ=;
	h=To:Subject:From:Date:From;
	b=HjNMbQ8i9DUcrhEdBQdRwVEf3k+goVOMQouwWZzF7xvK1S/Zo3SIfTycGL4kbkWwH
	 F/Xbkq585RbihCGx6T7iwjlaGZUdSKKCpVuyw35dMiJ2tcuWXgo4whLELNsTmt3boh
	 RlTSMf7Pr9U27StsR8b5WhkhnNKoX3Q5UhigGp11T+ZiVXbnvG+lA0vSzSe2W4BHJu
	 qNoLEE+31wHu8CDocUmMVRr27gP/ie1gcs7nj20sARbVBDVwNXmf5FoT0Co6jr9fNX
	 sH9MQivUc35XhtdsniQITRYT+90+FfZ4v929wckDu8fPH26u5WS7kW+UO3Xn1/PMFi
	 jwVPxTZN3M8kw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93C4CE77184
	for <ddprobe@lists.linux.dev>; Sat, 21 Dec 2024 12:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173478275359.19325.6709850973680530137.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c092ba1f9c8df5ba1a292d073e8a2e0fcc69bced1ab3cc6a445761060dc1a447
Date: Sat, 21 Dec 2024 12:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734782753
