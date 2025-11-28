Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2055327F75F
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 23:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764372174; cv=none; b=rqagdvXQ18ukXbe+5NZrvW5fISoSJCFQhmyVwmQ8ENvA2b8OHHsY0cs/sOoldFZlKM+DooPIpISZ1e1GUkIljf6eKZfR2u+/Feu9qEDJs+v298hNQcjGo+aNHmf8lxHLS29ZGKcYYF80Gv981XvjmyBKGT249R2UYZqITNJ/RbU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764372174; c=relaxed/simple;
	bh=FVk/7eWEjQSMPg560y9M1wQNR9CprOWeRvKud9FKK0Q=;
	h=To:Subject:From:Message-Id:Date; b=axwdATHy3449E/G3vPDMhZkBwjAZTqxEIJ/Q/TSA2n0B1DnheJ1f0ZZCIpSSsV2JrDKKna9xjIjmCVXw61zzNSZsIc9Wq5kH3Odw4BcwtduDjE8Vi+610gAzgkb29e0pV+EembP2CELUUCnWRWsCvLTGbvQotNCuSwK7BY9Dxbo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F/z+T7+s; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F/z+T7+s"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A25BFC4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 23:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764372173;
	bh=FVk/7eWEjQSMPg560y9M1wQNR9CprOWeRvKud9FKK0Q=;
	h=To:Subject:From:Date:From;
	b=F/z+T7+sh9NvDc76cCBHIjlV4U+mvhtAsZlgIG02XSmR22ntoHP7TQDjeNW1gkPuc
	 0dep5vTEQAQH48F4MFZNj6N9kwXJ12bnq2AIjAnksHnKd5IjEL1G7iF/Xt1ntZY9+H
	 7eXCMxeYKCaPiAocAl6zyb4+bGYMwl/m7wkGLUuyj9hblVdhoL+Ke9XlmnOQTJ+yA0
	 KluTiE1GRQI7wdBBjzIFOqfmhjxxqm2YOucNV6wYqQYHPwej6dPsyh0wsMRnCwVOnI
	 sBef5SIMogmmD1r12oyZCFbI9SZcXXwkQqtF6VlqJJZeVKFC3Zu9Nmv0AQOIoUhUcJ
	 TX2LLR3bYiBkQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 905F9D116EA
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 23:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176437217358.18610.17714504087564355817.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a03705cc302ecadc0fc133146c59300918427886b5e5ec326a0c48f37d11a3c2
Date: Fri, 28 Nov 2025 23:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764372173
