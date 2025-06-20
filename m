Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24F9215A8
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 01:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750382395; cv=none; b=X0WMoFKtCpaWDVEZslVOqpijHgMz2FY2o4HshH1vwrEhZfsD54rzzFvG2iE/3+HVm+xzTwyvIClWhF96ptTzcVG6tiLRaG9rppw+JAxdpzjoYpGLuIAom9KP5/LJqgMIRdYbd/7GKYYBFhJqezt8snB5ZBi7IhyBMDai7zcfVpo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750382395; c=relaxed/simple;
	bh=Sd5pdPLa4m4CBcXzKIwnnzjVajBjMaq0MtvY1Uin+VM=;
	h=To:Subject:From:Message-Id:Date; b=c+z6jbh4yOHlkazneYvbSOoR+xGyK4I8Z5ESDyC5kjK90tYn4+8xS6jaDlXwFjc7gwuxWAUN/PCnIna5wpYgk92F73RrBqPH396VYnw+vm+SvtEVdvic2b9u3RQNfRkv0LrcX1DsaTjsudwbll1rsXPzKEEB6nqGgaMWXWzQRLc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I7v7Do/c; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I7v7Do/c"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1C6CC4CEEA
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 01:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750382393;
	bh=Sd5pdPLa4m4CBcXzKIwnnzjVajBjMaq0MtvY1Uin+VM=;
	h=To:Subject:From:Date:From;
	b=I7v7Do/cKiSWAm5muo2tI2gkeDGptvV6Kbmw9m2o9FWanor+uO6HphMQZPhx/XqQB
	 I7v1Tdi/Vk8mMxqaQCWV+BVB79nsJtMjXTugCIL5Yv91IpEEmSb1439I7+UDudjmgl
	 HQQV2r8Rx0OPF3RMGXgK4Lub1Xd58vlxOxOz1bIjSG8JTEA5HWTOozzRHhngQj7sYJ
	 gzpU7nLkWjroDFZ14rfv32UzdIIA7865+eptiOOA1r+3dP8+OxqrFjWTF4iPSkFiCA
	 ZIf5ABRBMouw3LMejla1xeKW7qUynhl3HlPj6rxwGbUWsRPM4poZZsVw8pHI/WLWDR
	 Im3//eWMXEIWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EDE3C7115A
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 01:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175038239357.22260.13195423476875415532.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 31d5dd39d3cdecd88a9fdaadb29790b2ac36aa16aa63e073ffe67a03418d0278
Date: Fri, 20 Jun 2025 01:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750382393
