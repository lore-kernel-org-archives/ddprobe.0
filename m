Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A7A14437A
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 03:39:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756957195; cv=none; b=KBSXbD0ITSiZz0ig5AaJn5ZIHlGGXi2DmiMEdYkxRZPI47phR+5u2orL2IG+5z/71EEmVY2/dClbtzxt5cXwF/ZeVFMFm0qjljhGl++C/XHgFHzE4gNIJDjkP4DX6jV5WIgV8bTdwDhLBgO2VAV5NXiyKExpOZlyIIXOh0iPC68=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756957195; c=relaxed/simple;
	bh=ukwkcf1A5D5HAh0Iu9aNsFvfvNS3bXc7gIEFICeuMIw=;
	h=To:Subject:From:Message-Id:Date; b=nqR8CmFaf8mT8KHYQcJnq//nfLIlu5FMPRhGKjzwU5URp/YO7DH9l5SCw5k81Ef1eUFgSAiqXbYnRnyuBzWXhIizJ9Nd/tSQu+yNnpzNSZbKJC0CVva1B4nP45Q9g4eMgi+gfCfwAHzORvc4VO98z5rGXGlXRnZeqhf/UCEYkOk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lzkhOPWj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lzkhOPWj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A40C3C4CEF0
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 03:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756957194;
	bh=ukwkcf1A5D5HAh0Iu9aNsFvfvNS3bXc7gIEFICeuMIw=;
	h=To:Subject:From:Date:From;
	b=lzkhOPWjuVwp43Fg3GzdittL+IaA7QY3vEDAHyUH9UzqaBwGnMPTqKng2RXKPqKV6
	 ospN4wZApcEEK71zCfaAObJ2GajsQhjR1sFUyEUw770XHDge/+4d7RnbJGfmO44FVE
	 fNpjsWiY7kjXCk8XTjErTPM5O+fxeylvNMxbH0wl6lBg7UPbxkJEhhuK3mYOCHp+vc
	 23hlOYyaWx4eGODI1XrKn8xKMgrKOK7lNHBH0xcbEPnyNPG0OFi1+EB0kwjVDkuqxT
	 YF1H+o63TZkQ0HMzGimNDvA1TKxPidLKflV03NhFrWZ1GsX+XXhE7bLLSAtPSf+3vt
	 EFTCM5ddUeZzg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F0DECA1002
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 03:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175695719357.17789.7349641134043127273.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2270602ea1a2035a083b36a3ec2ec31558d5faab147576eedffca85f41e848ec
Date: Thu, 04 Sep 2025 03:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756957193
