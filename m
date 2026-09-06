Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 739763624A8
	for <ddprobe@lists.linux.dev>; Sun,  6 Sep 2026 09:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788688234; cv=none; b=AIvdH2ewWA1okF8gHLyzW7sGzHblyCBX4u6u+B7lWCcSWW/D1iHXEOt4mqAJB0OKh0iprxKtlwBHHKUx0JWrT0LyfBgJjsPIEn8eBXUUwKni/nx9G8kllsylajZfQfXrZvrcxLJoS4fnezE+/iItO3P8AqntzMu29JkpH/P4lTI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788688234; c=relaxed/simple;
	bh=ioD1QIP74cSfezTCYXL7tL8rQcvLZWUb/PFSOXqX1SA=;
	h=To:Subject:From:Message-Id:Date; b=HKuHGom6OQZI4BLxUbtSk8YzdwSIMoGCTf9rTPbKs/V9e1X/9IA0uClDdkViIHNqucAXQ9ihFX57K4tdyon0evXFk6Lr5LbqvsSNSMGpe96ZDjOJ2iGrHUO+ILDRTeBRmAJDpYbycBnddloF8nF3gYfDDT+IPLpD8DIJkO9VaVA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sJXAiGVJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sJXAiGVJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD621C2BCB8
	for <ddprobe@lists.linux.dev>; Sun,  6 Sep 2026 09:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788688233;
	bh=ioD1QIP74cSfezTCYXL7tL8rQcvLZWUb/PFSOXqX1SA=;
	h=To:Subject:From:Date:From;
	b=sJXAiGVJPAZdyr/U2ampAd+oSLczPagonfgAH7wG2NsJda2lTN+5gf9tDK8mhxSyD
	 pcH1KHteoBLtCptetjDaBSvemuIGG1yS4PXo7rF8gOQJu0GWyzWDvsKIHAVckb2Osq
	 jRywShdxRoM39OvEErAzvBBiuhLPSG9l7Vd85nAeANeYyS7ojWTsYHSR+53mJDB+V1
	 fejZy+H0ERYK1b/lB/uHCrhL+I4PZU11D+oHzf8C83TqoEZzrtRz5VcwMF8pJJDI+X
	 +1awmi6EIshgk153qdEGYf/Kiqh2BN2U7Qk8UiaUdFDTuizuSw7ZdLvIS/5nkau/wx
	 UJ9BoPfnBiisQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA908C79F85
	for <ddprobe@lists.linux.dev>; Sun,  6 Sep 2026 09:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178868823368.4953.10911145177182092789.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4cfbe81a59de6f0ddd850d39905b82841b8a329893fca6b95f7f4c2bded4b125
Date: Sun, 06 Sep 2026 09:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788688233
