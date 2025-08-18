Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22AB526C393
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 06:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755498594; cv=none; b=bNEV4cFInNM99LCaclPlrv6rbuKt+kWfZZZxDPV91rM7B6bd48Mrqycz+lqEshk82rdlcRoLrYKfruriAKsLrZVkVsljavj9LybK3ENMEZg22GEujsllAfPUUiFhoj+k3RxH/i3LmU2FRO2R4jnkUmwHWm3ojX8aWgi7Tn3IsbE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755498594; c=relaxed/simple;
	bh=iw0Bienn/isSpZTlOQLL/OiuC/jaITPfskr48+vrs8s=;
	h=To:Subject:From:Message-Id:Date; b=AiloLDlMj6/49jv7tXPRLq1WywI4791mEHMh4hbW14H34up5eBLRylJioISwo5DFqcMIc2gYywjwO3iu0drUwTUhnE8P5l3FKY2OcXO3gev6UylwQiSABIlzJOaBxG+i8hxtXCGFL5Z7v79CustLVeeg4Mgad8v38Oa2N2pAQJ0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fF3aj8Rm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fF3aj8Rm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D1E9C4CEEB
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 06:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755498593;
	bh=iw0Bienn/isSpZTlOQLL/OiuC/jaITPfskr48+vrs8s=;
	h=To:Subject:From:Date:From;
	b=fF3aj8RmCRnueK/b8/Q7hcesYvB7nWgGD83idaFUqC0w31j2aU70ivpoYtQW2CFzL
	 SU6JUaf4WtoSmqeeHF2xmqSLrfpO8MLme2JQ1fC4nPIwswqhROzb7XuZCK0i4TqKnr
	 zHvk/vKUAZNpRplghTmW9gE3xtTlKV1DFOZCLtG+/3csGjqieEhe3Jt9ulfEyJmScg
	 iWXZet69LZwxAkzjSslLkM5e9GPDm2b+0sWB5iUoOcx36KEONJ7f8xJSbaGYq96Pxd
	 1Z5KY/ymyl/8qxy3CNLi5SeTW+wkeVaKhY2EK+vVrFyI14oVrLvBMxEQklKGMX0MSZ
	 j5Xy//Ah61Q6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F511CA0EE4
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 06:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175549859357.7214.14427872862717774927.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ddd5bdef5c95a01ad7c3136995b7fad194c76d881f716718bee488886f2759ef
Date: Mon, 18 Aug 2025 06:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755498593
