Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FCB01F8720
	for <ddprobe@lists.linux.dev>; Tue,  4 Mar 2025 10:18:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741083534; cv=none; b=JpFworUxKaojtONTX6PWLBM2syLVRx3kAyQjwwReKVIC/55fVd2ulPWdbqkDrwNDxMfkyI4ibe0arM6sq+O+OtBxG7HST8f6AL6uVwE+3zrcrZTT3lR7IjbiaDGRiObCFm3evZpu7PySkk/RZ5zn2TxE1IKmjFA1WxB1gB1EBF0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741083534; c=relaxed/simple;
	bh=rsp0pWsOSvtRGo97H/vy5yYYU90nxOHPXaZLUwFoW3s=;
	h=To:Subject:From:Message-Id:Date; b=YA84d/INLitSvbh34v68+bEZboF9gQZn0Tz6exMHVL7vZMZjX/6L0N9l/MxuMi6oJABvqo58maW3X2KYsfc0a6/1Y+CKnmaEeD2Ohf9fR8ZYONx6RcecwQbosq0iUr1Fv/ZjCcSFNZmVs9TIDxn+UEVLj5iZ9c/Il+uHV5hEWzY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tCCtnWU0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tCCtnWU0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7106C4CEEA
	for <ddprobe@lists.linux.dev>; Tue,  4 Mar 2025 10:18:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741083533;
	bh=rsp0pWsOSvtRGo97H/vy5yYYU90nxOHPXaZLUwFoW3s=;
	h=To:Subject:From:Date:From;
	b=tCCtnWU0OuOIaRYxTjBFmefrAaEhOs1jVmyvB96zHM9xR8X1VXzaPpYT43mb6Ztag
	 eXz+un6VyNeZuU72ge+KupSKcTVrc1SKah7G2Ejmtulypm89qT08h05iP4xpwjBbxN
	 hR/eju3NSZepFM5jEkvQCMAxj2YQSCOmHKsi+TolfQ958HVbKUCgEzuLadymQhp/A0
	 ShJYmtLHONbb8wvW2DjDVZVED7LNg6vze2N841RKqI5rYokM5xeMrM3UCdtG52NlYw
	 3aMX5rDelW12oCBRHt0IlAxMUQsy3zrlkOXOhUmNbkN+SPJ4yor3HvNOTKRd4IaDLX
	 xD2Rs3HzT4Zkg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93130C021B8
	for <ddprobe@lists.linux.dev>; Tue,  4 Mar 2025 10:18:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174108353358.9891.4626861005144716417.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5beec7601990d009ddbf22c6cc916e2947f51a81cc64d3356031059dd5508c3e
Date: Tue, 04 Mar 2025 10:18:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741083533
