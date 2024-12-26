Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49185360
	for <ddprobe@lists.linux.dev>; Thu, 26 Dec 2024 14:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735222554; cv=none; b=g6HRj+ej4EMHyzR3fErrACSz0WFGG2hpswD7315E3xzfdjYgDxB1587PpwSQq/uVvcSzxzDF+a9DvaGnkUdOIUgWDnh7ucjVmpLME/vxBeL6mwqd0h81KV4AP3z4mn2MWczWiia4ok6sWy9ut7elaAB9sCFOe+ai13Y0B0zzddc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735222554; c=relaxed/simple;
	bh=VvyiLqUqXfCwH7Y45pEp+UicIzYYYyoGv5zJ+Ewtj1I=;
	h=To:Subject:From:Message-Id:Date; b=uAAweYLVtPELdImEQ8Oa2ruvnffMF+Csijk9lSM/dCrYjLGKeebPntn/sMtAe81UpRSMvv9wYQxyW2qC8Y5d5ThIEp12GXwBUPwqV3q09wN9+mEsvhUkMSy9c08XPRefMCc4ye6r1o3onXEROuqsO2sKmAJS+qoEJhdDdHaNZoM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k1/mN6P5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k1/mN6P5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C103EC4CED1
	for <ddprobe@lists.linux.dev>; Thu, 26 Dec 2024 14:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735222553;
	bh=VvyiLqUqXfCwH7Y45pEp+UicIzYYYyoGv5zJ+Ewtj1I=;
	h=To:Subject:From:Date:From;
	b=k1/mN6P5j2XWnDVaMXUbEteCWvcARgrM4PZHWPzTuxsqg/DgquhtfH8oGegRj/JEZ
	 fXLaLbfhMo9Z//RasfK7BrQwm7GT7okYc75Ogyz0pbWBqZsiA1CEhLpW2SITlSUFUW
	 wD/2JAc4e6PHxLX0SU8hz2GyqFll3ltE0YsenVlo95OXea9Naoq/cZiEBMZVzR5jks
	 80KYv/RrYqASAPg0QC5NY8te1Pfo108DQCPkZJvZhcNQF+/S4PB8fWIrV9z6+S0lUq
	 OnjjPHAqxz6v0vpW1CzjoxfPYd9cgGqSGwsvInu0pYGwT0+SyqQ1ODZkMKJYCXKdxj
	 Pz6gHUbZ4fYww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB42AE77188
	for <ddprobe@lists.linux.dev>; Thu, 26 Dec 2024 14:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173522255363.14108.7411544977870758185.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 823231ec698111554d86d3a00b0475dd16f23083249e6cccb760055a56b00eed
Date: Thu, 26 Dec 2024 14:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735222553
