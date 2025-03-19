Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3172A214801
	for <ddprobe@lists.linux.dev>; Wed, 19 Mar 2025 21:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742420394; cv=none; b=HyqjWCt5Lgco7UAwb0PwlsF8X1J7gvcuDvJKCTbSbWCELRedKc2eJaP7Kcql6vYd2XnidqYdnR1ph3QM8CE0Kbf73P7gyxXsJoqnMcHMM9CyT7Mfh1FmME6WxyCA3x12EodJp37ffrMdMzKP7w7Pfm/5w0YZF56VznenBvRMux8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742420394; c=relaxed/simple;
	bh=0BJroTKXag1j77N6RNBlv9glVxSagGAyRON8O41vkYo=;
	h=To:Subject:From:Message-Id:Date; b=Tun8CiMOB8j1iC56w7UXRXDxnsjSfF/ktHYZjU7LXRpkkqbNNshsgG4SwsdX2mAHrESdxQiBsBI/KpSg6igAEbpMVussdfxXTCvz7lsQ1kGEoBfAvc4dFnUZ80zwLMrghNp+U7o050Cnqweo2qNfFT4UloOnRAsm/LXksBKcqHA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iICNRiMd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iICNRiMd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2ACEC4CEE4
	for <ddprobe@lists.linux.dev>; Wed, 19 Mar 2025 21:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742420393;
	bh=0BJroTKXag1j77N6RNBlv9glVxSagGAyRON8O41vkYo=;
	h=To:Subject:From:Date:From;
	b=iICNRiMdIhczwNyBzGiDX8k5m2xVElL+LunmmX0URwSIiBQU99q8Y4KTIGPCv1z1J
	 T2sDeDMLwbr9qFNRE3ANv78+ofD0JGQZ+BnUcFRRxIZcyOwKjHj4hb8cKpNbJWXgy0
	 WSgGZJdg+UIcLtm6CSurQR06hp3B0djC1m2Qf8Qu5aSfIZf/PSZooNRRriwZ2Pe7ap
	 a3F1V6831efJ3U/cKkddPi3ou/S/TSNf0W0TMtb1lv2MGq3aTyvzIsCKmidLpdlW5M
	 AP3iol6m2i5ydUT6N4OAWEW5Mxdibuyxrfq0EkWswWDIlTZ29olhT3Qr/g2GGTYnpA
	 j1bkAWSTobLCQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A62BC35FFA
	for <ddprobe@lists.linux.dev>; Wed, 19 Mar 2025 21:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174242039362.987.1002263773306688302.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 718fd12a24cb28587fca254baa9f687c2f384ad5618899369c883e49c8358b12
Date: Wed, 19 Mar 2025 21:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742420393
