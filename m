Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D9711DEFF8
	for <ddprobe@lists.linux.dev>; Sat, 21 Dec 2024 09:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734772554; cv=none; b=UjWZqAdBUPyRIgvubu7PV8uED0HcXDGjYKWpLNSkHFAzooBhcAPeg+IYRdI4U2PRZxK7aAh1C1Oay2/S1HcZ2O8MCFM71pKq7kZDkmSoeTBY95HsUBil+jAVsvdHqRGYMP708aA2IhNU08SXo18q9q0wapJKkE0egvOCuIAD6Sw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734772554; c=relaxed/simple;
	bh=VbvyaY11UMBpWyLT9DNhnv99D8nkfAGQ6bunMDZ15fQ=;
	h=To:Subject:From:Message-Id:Date; b=cOOzWayrKv8htq4/2Ph1xCO80sT/OgaSr6qdmE1Wn7KTUC/Dgf6+/nJyOk+vH0uZT1ZC/yOZoZZC+h79ZVFUlgciRfROujoV5xkqveDzXy8L87IinIosRAOknYuO/WXFjOMsGF6LakiySi120A4q9MkwIGm3fBzymh1u4x8oF/Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QOQRUPVU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QOQRUPVU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA6C3C4CECE
	for <ddprobe@lists.linux.dev>; Sat, 21 Dec 2024 09:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734772553;
	bh=VbvyaY11UMBpWyLT9DNhnv99D8nkfAGQ6bunMDZ15fQ=;
	h=To:Subject:From:Date:From;
	b=QOQRUPVUi7TZZToWYncosZjCCIXrLMGIlzT9XAALZ0lk3HMUsEfPm35ANODa5eani
	 zPltuFB7DHBrMl9OYrBfLoUww0efoyVCswKDIwwjK1G/CbdCgq+sEWZbAdJyGEiEiF
	 2EFM5ZPXkdlYSpkPhq0LYbkPkfcYpm72GoVOAbtTPEWaOiKzefUd17BwES7bF1/UNr
	 ow+rCvPFi77Cu2Sw+9zewJRU+Fd94pIVUeyqvf/x61SyTz06uaK8dW0bopOXegExag
	 KHIL729OTEbiKttQEcXCByrTwafTUl0r8xQ/Ss//U2kFLaIsYCodLkDA0FP9/Fl6G0
	 7TIWTjKJzc8tQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 981D9E77184
	for <ddprobe@lists.linux.dev>; Sat, 21 Dec 2024 09:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173477255359.31362.18225663781836185452.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b4eedd5043bd6345f047af22b8acfaf53eed706b4fdfc1cdefcc96e1622204e9
Date: Sat, 21 Dec 2024 09:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734772553
