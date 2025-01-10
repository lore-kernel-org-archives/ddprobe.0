Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E753211481
	for <ddprobe@lists.linux.dev>; Fri, 10 Jan 2025 15:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736522754; cv=none; b=Z5x11XODwo3dgBWzQuuO5vufx/XYj6k87xYahqTkskmcC9yRKjnDPAg3I4zzGpyEB6ZX62OMpwmH+UfprP4/QKJ4hZ9muWi/HuybwAGjZk21LgRUdr38N9wd+r55i2isF94TEYXzpI2Y/IA+f+3vobops9MvzLo7p0GjhOTm2ZM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736522754; c=relaxed/simple;
	bh=14BHuOu/dPQJ/0UiRW+Uf121oXtew87a/f73bziEHWw=;
	h=To:Subject:From:Message-Id:Date; b=YXHv6xSVFRQWCg5iLBK6lgoPPSOEmHwwJc4NX7YCOmU23cr9u87/vAM8mfunhrxiMSvqdp0xPh/Swy8zDniIepy+0n8tjD/9lr/RyK2a+SM0csYurkNBhi/r8vns6qsjkpjLOsbT/uq08ulnQo+7AV1J+HIkrhd9QFj8uIA57cE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NvKb1fF5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NvKb1fF5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7FFAC4CED6
	for <ddprobe@lists.linux.dev>; Fri, 10 Jan 2025 15:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736522753;
	bh=14BHuOu/dPQJ/0UiRW+Uf121oXtew87a/f73bziEHWw=;
	h=To:Subject:From:Date:From;
	b=NvKb1fF5GziZzdPCUnlAR8ALPkbnnE3doCYBPIFAXFp0uwsSAXCuNWP0CsGAMmdHy
	 YvGx97krnpNr0+M1QF+wca6J/gftw6j01Zxx0CLxYngrSkuWPp/q5wqppj3ERL1xiS
	 lHBEBpYpHxrUEU0NzMhPm4cBWnDBUuH3hQAyO1TCU6ySmsQ4SbNdfVFFkyVUTtFjyn
	 ALSO3CAkMYceSPdLLJX2al9qk2iQuVdOO4YA1N2labrgor4L/y+wNWCVD1KW1e7HB2
	 HmCFs17eMOwhzwd6s9OAt5akXh4DBYEOaLxYWfgYGt/fJjytS6aSf0FjetBxSv3fAs
	 ehHuzNbnpcJ7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96A79E7719D
	for <ddprobe@lists.linux.dev>; Fri, 10 Jan 2025 15:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173652275360.1104.14478809317502616423.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0960d7e9b67a058f4e72d020485247f2fe24e12f98f961b93e5d95704f88dcaf
Date: Fri, 10 Jan 2025 15:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736522753
