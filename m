Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6F69A14D2AC
	for <ddprobe@lists.linux.dev>; Wed, 19 Jun 2024 22:39:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718836763; cv=none; b=amZGrwkGcgP+n31ncv3SbTAnnrs0UFUFidzD94FjY4lPIIhKDpm8kRWVEa0V6TU58xITiM6QrIrcJw99UAWOOSxhNA3XwxAYmR+P7pzGOCrIjaWpy5odMLI7L+r4CawJY7CxRNzqzKyjwJMEhzCX2i7G3OTwsL9fj1ScRp4a+TM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718836763; c=relaxed/simple;
	bh=pYaAoNpoN8HOYAglpGC2jgvgYX3ndsSqIj4nwpLE7dY=;
	h=To:Subject:From:Message-Id:Date; b=gLlPVULeTnzhafwzkCQxpT79QgfqFtUFaJ1FNnjjEL7QUBbegc5Q0Lefj45XgfI8pOO4JPTk7TxeP2k8WqjL6biX+dNj+MYvYbyu48R2zVnrzmY5NMvZd3DnIk3SVMhDEgVdmeUv500bA6vBQYnsukVeMoC1+xebIFC1q+0nI/w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VebEHewp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VebEHewp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7DE5C2BBFC
	for <ddprobe@lists.linux.dev>; Wed, 19 Jun 2024 22:39:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718836762;
	bh=pYaAoNpoN8HOYAglpGC2jgvgYX3ndsSqIj4nwpLE7dY=;
	h=To:Subject:From:Date:From;
	b=VebEHewpvMX6aNEk0lif3K6/2+/ac1KKR2NsMz97Jg+x/HIojgSm3ujkHEuuVreQP
	 S8+ktcVOEXr32CSbRM/cB6tDBW7Kb8QANY5erxr/3Tc2F5ar+QGlImfEM4r68c/WOs
	 bDQRUldDEKQH9PE3CBnQzBrazxaCQMtu+O3S/ybOG4OyUaGH/Zavrealta0kxWNNwp
	 ljggxsudRUUErDnYitW9CmkO/ihpBEc5qE4ZSpmBXveZxE7SV3Wdz+SkawfnV/rmO0
	 SoXkimuRcM4MVc1J6JIfqbpuSLPPsAo5k7DBdYBhixiApdcLjx7uO88KUchi661crw
	 bXtjmrsd8GU9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4948C27C53
	for <ddprobe@lists.linux.dev>; Wed, 19 Jun 2024 22:39:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171883676279.26502.6610843217696986482.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 00c83ccc3116c6bd87611dc2746dc22d2fc5a084885e8a7439bda9e2c3a42f17
Date: Wed, 19 Jun 2024 22:39:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718836762
