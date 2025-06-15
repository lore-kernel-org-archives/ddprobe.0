Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3804E2E11CF
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 06:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749968994; cv=none; b=u7g2U4KiOyW8bO9SWFo4oG2gCkq3R3gGFLVLEfZ6bsMaq6yURM70p9BUl36uiI13ufGNMhzQDq3vrFz96xJD+7KeOHCDotBHv5eusJvRroMCXuvP2P4pdqarJ1kc1NLC96Q8nUatwSNqDxpb1lSSK5y3jcfA/0DSdtSQyO+T478=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749968994; c=relaxed/simple;
	bh=0rlAz7B0+qnL9zm2DFRaYYxdEcmSpvgejmdpgFULAFI=;
	h=To:Subject:From:Message-Id:Date; b=Ix9eHRUSnJv0WvSmpsxwP520IV9it4KHZ9fRI5E4HDQi4fDpSFG85GWvgKBiMpDfWhF/oe1VeckTCGdbLhkNrN86WAMnA7U4mtSt/ufTqT1t58356aKUc210td/i9OPgdFA47uEPeSVDG/qW0CdyBc3ga5PUYtzVnBNmxbpuRsg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ePV0n3MU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ePV0n3MU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5263C4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 06:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749968993;
	bh=0rlAz7B0+qnL9zm2DFRaYYxdEcmSpvgejmdpgFULAFI=;
	h=To:Subject:From:Date:From;
	b=ePV0n3MUlWLcL+6xxc5d+/CZWi0LlsyMfjn4k4UbSQytbHkaYJgpJnCvwqJSWBX3n
	 vtpHFosuXfEh7l9t/61zhJEN+wuvFZhTKwleTgc/vMGXeHsUGLvV9r0HpZcFfbCar7
	 qBNxFBTcGCysJ4YGamx8KfqiziFQ6DkNW6olHcJPoc+lkYXPVJX1nrixIG0k6V+Fon
	 S1Xos9vB9gIHMYnMzzbDza8ioyaaVDQ/Eyy8TcoksZat2xFUSSgRTpj0CuQ7OCXypY
	 k/ufMXIpHacv443qvd+pAMCGkFqqFOFqbv2ALLWYW+6ty2TlYqrSlCPndd6YcGkKz3
	 oiC0pApy8wuDw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92372C61CE8
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 06:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174996899357.10092.18246081682937551319.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 13f2b97450f792aa55c6eb34999ace08fa6bdfa9c7a8deada0a5e1f08af0c908
Date: Sun, 15 Jun 2025 06:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749968993
