Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E1F317C7B1
	for <ddprobe@lists.linux.dev>; Wed,  8 Jan 2025 10:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736330754; cv=none; b=MMlmbT6+qehUrsko00MQ4wXpsQStYN0rCHn51hE05zl/HOhrVaVyKEerIH2djUlkHw8WE0UVr/HEhRXuiOaQAVgrYRGofhrU1kOzpnMU3EU7fGVU8x0Tsl7HB2QPm8+YUdABpmoptC4ylVJc0/vUN/H6/ajqMH5J1oeHrero6R0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736330754; c=relaxed/simple;
	bh=PLYFVRmYP7K4JmbhWPU9ZJ+v78d3Koj0mO3TAWTQjb4=;
	h=To:Subject:From:Message-Id:Date; b=uG9Zc4bEc1s+Vsv4LdjgFyCC0ciOQFi+a6Ek6tLiLm/h9nL2zMTRLE/HaHUqQU0LfheAuGBpAPwWe33URt7lMpevWG9nLp6EsspXpcBqiyWuIy7KzERhEu15ZmI6GJfd/8s6tn10uHcfXdG1JbMnhrySKLdKVCTlzZ8zK/WMmj8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g+uORgWx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g+uORgWx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1C63C4CEE0
	for <ddprobe@lists.linux.dev>; Wed,  8 Jan 2025 10:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736330753;
	bh=PLYFVRmYP7K4JmbhWPU9ZJ+v78d3Koj0mO3TAWTQjb4=;
	h=To:Subject:From:Date:From;
	b=g+uORgWxIeBsZAp2JWUMOgPCDEuv6jRIkV4f2y0ISCHI0c+L9e4znLwXJS7O3Oz6J
	 zAamadgRdc7YlpUI6J4N66RxenqbJFwRBDuhajP71BFtmAr0dooWQKM/AJ0HYJHIeu
	 iVmAyxuIo353i8DqLLjOK2bMAEFur1PLgPXiB7z58P/gm/vdbenfLs0reWeip7g/gv
	 36MXee3Q1caKGL5S7HT7OEZ6LPfYoKMXiC3UsCh3daTUfFWRtr9hp4kpChDN6wmkN8
	 lIpSUj7oNQqEPydDV7VBSpcU91UFyfyYxRox8s81V3FW02fh4I8Dd2baImXilR0gBo
	 iU1rmEoyciASw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D028E77188
	for <ddprobe@lists.linux.dev>; Wed,  8 Jan 2025 10:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173633075361.20849.10082389298777407023.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 27189e10ab73bbd7a154af9605227f3c5fb4f14530feac6471a8e635cc87ca7f
Date: Wed, 08 Jan 2025 10:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736330753
