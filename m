Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32B6E2E11BC
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 04:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772856894; cv=none; b=Vjd6lWxEYQgk7wDa6QR8RqNog1STbNm/dbLumP3qRy/etRsdDT6r1uKSTtQxWHdRiHhM72Gxx0efDkVTKgfnamGpS48EcdHB9nVYdSTi4FsI+8gNyMBWoJnBJPZHh0keOKVOTFbx/Mgvwohx8y6rpbIXqBVDDqdpA9m4dA8fPZ0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772856894; c=relaxed/simple;
	bh=zSTLeKfr2+3Mj6MtAAjNaiOOtD9+YOWJT4ijGWWJ52Y=;
	h=To:Subject:From:Message-Id:Date; b=S1m6UVHPPKabQh9Mza6PBT8eyFPs8dqUpFOrJ2w1KNKSpt8OH6A4juyEoLrcAllLvbxLuVDR9HYdWDnyLylzm2fcsdSTbR5cIt2qRgJmIKo3xwUtgA+wWeG27w2kfj8bLh3qkOBHNZxveQzvCysWSST/1XO48EAD0jl4eOW2uC4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eeNPqBfa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eeNPqBfa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7C44C19422
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 04:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772856893;
	bh=zSTLeKfr2+3Mj6MtAAjNaiOOtD9+YOWJT4ijGWWJ52Y=;
	h=To:Subject:From:Date:From;
	b=eeNPqBfamzWs6tH+eUMHsj7EnbiLKxauphgMay9NNOrXgF3oYe0x5hzf2daxPvd46
	 EE8SKnOEBtiThn6jJicuH/mVu9c2WxYgtqPnj9sYb1LT7EWNvGSvoeIi56sgSpzee2
	 V1Eyp0XDHJo4FZDNHy6KI8O0u+wOKP6RyFFsihQikjgopiVXgGp10HhqBtJMaWd8Cs
	 CT7usoMCJPmnWGdC6DURZVgqcrZp0dta2U3yUh9FQYcDyrJjvkUPMAkearYApuxPC4
	 MnnRfEKyYblp9JL/d2nk9CxpyUWKLzFQMLy5FFUz+zAmezs0dONQ3IEfNnymsAHWHQ
	 MQKKA5fBELlMA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9EF06FC9EC3
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 04:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177285689363.14977.6941611481072821195.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b8bcf7824d33ffc7abbd4f66207aaa12e34417c2118fface18cbe4ec8dd4cb50
Date: Sat, 07 Mar 2026 04:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772856893
