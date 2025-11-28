Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 09D671FC8
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 19:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764356574; cv=none; b=hjAKTPm3sPHkU6vDpYEgzingRqArvg2pGJ6yzg6SDU0vJaMSQNbQhSFHCWaBql4+i7e4J7TFtmnejewC4k+kt025X35jwaoRh04n3mqqFUOo1jWcwjI4bLlUcsKIe2Sj0oyOBVrRvUGrRSJ1lVklYfhgGHWWtDJCC+gPkwdtABk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764356574; c=relaxed/simple;
	bh=FL91cYTEqm/IkAfHdLCqxrwJBG6tQgC5F3U/UJ0DkYw=;
	h=To:Subject:From:Message-Id:Date; b=A+r07Oo/u8DCoyQp5vlF22F72MJYYhf5ruNnCbjYS7A0vlfvdSsAS5H4PuvoMwPZ/amJr9UtsWb7JpcORsY0RnVI1roFLTQo6WVtH56JJRnLiLNsLIH+9ALWJvm5JoQVMiA5990VoOEIuNkPLKlgQsr2eGPV5pPlNSRQRukC8y0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QTFEAmAp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QTFEAmAp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A18A3C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 19:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764356573;
	bh=FL91cYTEqm/IkAfHdLCqxrwJBG6tQgC5F3U/UJ0DkYw=;
	h=To:Subject:From:Date:From;
	b=QTFEAmAp6iHJH5boO8XRkfVAK1HjUUbB2ZOmlzX2ldYQLfzV+xBj4yteNKvGMOmWt
	 PmsuT+LhR9q6OnFZnQWtTPVmWUnRelYyoNhax5LdWS0tAgDMUT7tXFiDDgGPigQI/E
	 sFlB0pQrr78Fe1+XY3OXLuWllJmfag7SH9q7AZ/1+8sD74fHIngsSd2LqrpjH03RtL
	 8ZUM3DJRD3eHp5mw/KhlKgRs7DF5kxXswRCtAnvyl6fOYCAGiQVkLLixTEV+WOPvSS
	 qL6i5otb7eMKtgBcr2jx/ZBIHOKrIZjGUV9Zax5RKtzisIb9IpXTqI+8+LBHST78J9
	 mYOTOhhVQHBJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 914C0D116EA
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 19:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176435657358.19938.6731824132756524908.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 01c52e1916c3208652ed7a400ce8dae25ed15c1d9954625e3622af7050581b7c
Date: Fri, 28 Nov 2025 19:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764356573
