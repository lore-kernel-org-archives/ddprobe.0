Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 959BC2A1A4
	for <ddprobe@lists.linux.dev>; Thu, 20 Mar 2025 20:29:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742502594; cv=none; b=f42YIp89TtJZYeFbHng7m9ZROOD+7CJ3zuV9NdXYq1O372Wu2zfWn1njd/5sDsqnw9npVNwAZ7xa1A0BB8ZnJ1+35Q4j1mHpwjQZp5Qj+mE8cVP9FWw5dzQzHMb3NClJhUkcoMa814mfNbUzfYMpCGDHbSOw1cMKSr8xXC+UZx4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742502594; c=relaxed/simple;
	bh=coMszX25Q6OHG8YHIkEoVXbtIflxowvV2p+HuNd8x5k=;
	h=To:Subject:From:Message-Id:Date; b=FdjyoRviEBPVqgJ0p0cr58X7Qv0eo2IQmbucM1wZ7ZcxWjh02T5SK71VsEwgWndfhhJ3Ra9zgiOtdlnVuvXfOEFML4VGv1tC4GZt5gIM3vT4D0LkI2khsJBa03p/t8b9bWedSkhdzjViaKR0pG13usKFPVJm/B5uhmmnCm0F7jo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LsTnMOAD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LsTnMOAD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 060CBC4CEDD
	for <ddprobe@lists.linux.dev>; Thu, 20 Mar 2025 20:29:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742502594;
	bh=coMszX25Q6OHG8YHIkEoVXbtIflxowvV2p+HuNd8x5k=;
	h=To:Subject:From:Date:From;
	b=LsTnMOADbcrJZn+d7ig4JvFjlb+wpMeV7N6Q16ng0WEueXoXd5nuiyUhE1bzbW5/R
	 NF6ZOsqpIWwQlWMVL/jGRsa+YxJb2h4P8azXwPihY6233DqIpR+LpIGimpJFJg42Ni
	 NAsqfowm4QIqEtOV0Ad7T1JwoDqZXZQO1Yx6mNH4dYawHXqxj/9mmrYifv+KnQt+8N
	 Rad2PBUhZSLeWxipFkube7kDicZjrl/cwFtjzdRuvd/Kpqb4m69UV7LTJkbYWM9UEQ
	 IPP18NXt40ltCwBtbKmAhm4yUgOdsJm7QDmLL81ZcRcWnPYbheYHLAyA9hxrqF507v
	 XlgGiJjqjaxIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DB247C28B30
	for <ddprobe@lists.linux.dev>; Thu, 20 Mar 2025 20:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174250259384.22096.15010784583252304643.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b03101562a93f30848feb1f4c2be6b32a908857be32253e89d651b2f8fa67f1d
Date: Thu, 20 Mar 2025 20:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742502593
