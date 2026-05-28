Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D02F344DAC
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 19:22:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779996154; cv=none; b=FuAVhs68XtgtWsS7PI+HYpkgk4nvjtyZv+vCi37I4P08diTpERrrRt72vMVwt9olj8omzl3ua8T8YumATWAqByJCAOq9y+kfgGNBizMZMIZEjg27xHLeWuAWo6L+KkRyR0nsQApeW78MxPaNAGDyZBYIZuBis0vQCPAEPOW1aog=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779996154; c=relaxed/simple;
	bh=ufd/jurQbsiDVIvBd5H4UdUuBqUo5TM6HMlcpJ3YDig=;
	h=To:Subject:From:Message-Id:Date; b=JK63YjFUkqp9mpLGip1Jw/kZOUJe/C0ZNOOOtB/BKsge1RobHGfqELoXxSTOqH0nguTWdEWPw933Ivqh1K+WrtlslLie2QsDvffiJIZTF4CUZ+L+jKDc5GDpiwRk5RbErxafSL2Bpnt09+Q35O4ctrLuoBWSOsXmir9bQG7leD4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A0U9wxwZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A0U9wxwZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1BBDC2BCB8
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 19:22:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779996153;
	bh=ufd/jurQbsiDVIvBd5H4UdUuBqUo5TM6HMlcpJ3YDig=;
	h=To:Subject:From:Date:From;
	b=A0U9wxwZgqcN4FpEWfahltFRdccQnRg6cAF3+NgdzRKIg9xscMb6cYX5qaIlKMhQx
	 376kDXNd4VTrnTmsLVLDGwRWA+BnXxQaNNpAVT2wAA2Z0v6DskxrQX90n02fYqYoWS
	 kAUs0JJ5smnmYf1u35/E6AwEMenp0KKP3gqKJJu1x+/bUOwBVYwXFXpmyGoxKoV58g
	 bivHTMkm97cIhyUF03zCIaHTWmyUlU9nPSlkWWw+8amPoCyM/xJI/2Nqnso4MuYzsI
	 859DXy1GHIIIOalKEbSVAjG9JU8bGwtMRkGvI7dRMR2jGu3nCfp1yCvdzcaNIXp7R1
	 9IA8Zd0aJLefw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9B43CD4F54
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 19:22:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177999615368.28788.3486020000456769068.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1903427a7a07bc56e5764ce1c51a857cadc7b942f10da513197a44a9536a214e
Date: Thu, 28 May 2026 19:22:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779996153
