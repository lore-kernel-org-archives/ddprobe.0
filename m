Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1534D2F39BC
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 15:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759936794; cv=none; b=KypCf91qFOr+V/9wcMqrpqLIu2/qKrWGV4MILsBdKD7DlMZsiieOOcMrSZd8vBOv09y54verpTIyojc5Zk9KkL1GI1q3k4iwLUm/TCrgopAxNlPbhNYsGONd8a8WKo+Va4PDLMidWjoBeTdQNDTClwSC3iAFK16/UsBYB30ylsQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759936794; c=relaxed/simple;
	bh=urITWT8TA99MhO4Eca7PRCJbDoagEqfHAuFGdZ/DSfk=;
	h=To:Subject:From:Message-Id:Date; b=tRIZ216Dmnyh5Z/usR4GdeKu8o6KXrDQvysNFe5ENoiAdEC7nfj7ZrRejHxY5l/GgGu8SWm6Kiqt64hXilLSS+k4zybEGBaiCwcog4ilfa9A3JVNB2H6V0bTGsVpDzQvdKKO2hYcdBwrz6wAerRMZoYlEPSSpYOz354wO6BUZGg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sWDLiaGw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sWDLiaGw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A195BC4CEF4
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 15:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759936793;
	bh=urITWT8TA99MhO4Eca7PRCJbDoagEqfHAuFGdZ/DSfk=;
	h=To:Subject:From:Date:From;
	b=sWDLiaGwQ06EXsnNq7qrYsJtn3ekAX14bKYpAkqNvRbuRPfoc2/WknJTPeia/9Mxq
	 Oib5Gk7vYT2lBMo/bECbV8CIo6OaXTKpaQ0PHwbPx/q5FllegjjQrTUxG4ILI3940E
	 nT7YfHo4Kd/gfes0OybNGSADF+pIjEzoD6gBFy4rnym7/+wXXz9FMX4Im29XNB/Hbg
	 8pUOXkWRNeSGkhLofGhsls0cNUjBw4OtfKEuowaLxYes1ac7D6/F5bowoYFO/Nc2GU
	 IYDongQvPMUSrSPwo5E3k6zP1bpw7Akuar0Rp7iztCxE6Ej5bPFx6NbEal71GjYhhl
	 em1p+xoP1M8QA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90654CCA470
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 15:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175993679358.1179.13644616708827822985.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 89a3b52003f808a772d30173d2c6cbb38aff2772c9589d42efeb10eea5608f13
Date: Wed, 08 Oct 2025 15:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759936793
