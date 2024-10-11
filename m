Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E3BB209664
	for <ddprobe@lists.linux.dev>; Fri, 11 Oct 2024 07:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728633354; cv=none; b=ppb7ZR8nx0KcB28F0VJXerK0ioykkpI6OY0Z2dhD8WHebZAVxUttdMm6sH4ncehsCzan1qVJX6RqMrVF/NmjPXEGoXSlRyXgBWqqCx9iWYyoMY4oC0YfEiOKcQN1VjO5EDqLN6TUUbQvYRinBQidcDj9hefFUi8DNYsiCoQeNEo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728633354; c=relaxed/simple;
	bh=E+MK6FrJRQGzQ09wu9FYsUO18lPTZdI2Y1gsvpgAWn4=;
	h=To:Subject:From:Message-Id:Date; b=KvjZ4XvlV1JkMHqDSf3Krpor06RgZFIX9sY2y57Hm0ty1kqwH48gdoj1cYhKcBix7WaguK//UE8do7/pZciT/RUwjM0+ivj80LFMhKeR2KpM4LXDwxibAXFr6UX+f3C83BcJWUmQhcbY+/hd0dTE7qGNQnc9lq0opotILhDnJXA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K3Wh+Bfp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K3Wh+Bfp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6767C4CEC3
	for <ddprobe@lists.linux.dev>; Fri, 11 Oct 2024 07:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728633353;
	bh=E+MK6FrJRQGzQ09wu9FYsUO18lPTZdI2Y1gsvpgAWn4=;
	h=To:Subject:From:Date:From;
	b=K3Wh+BfpXZ/NxooVrS7R9uRQCk4pWio9HtRz1jTm14xw8u140ljc7jgMTFvXThmiv
	 STueq7EtUhLfsXX1UOTv4MajjybHxaoiUJSzNvcI88lg/syN82A71UUys8IT9yuysN
	 +TWVtPhB3NbeXQcCGrTJJUBM/TD0b0SeLA24aL5TTSIVeR6+s+goGOG06E3lUtekVS
	 dCw3V6Rc3Ts71Mceg15oVItV8zunsYu82nAmKjxpN6TmyobMyfIOYYeXPxUq68RnFX
	 NGAqSwKOUjAkDEAqSf+NfHnoc0aAJq0LNmIpSRNl7hOCTfcmBkMtD55D9E9donkAOL
	 OrPdnkAov/Wqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94307CFC60F
	for <ddprobe@lists.linux.dev>; Fri, 11 Oct 2024 07:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172863335359.21175.11594693502329959651.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2a762ee896cfb11195ba208704eb37a922e9195f59723b33c056fb16ddc21ed7
Date: Fri, 11 Oct 2024 07:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728633353
