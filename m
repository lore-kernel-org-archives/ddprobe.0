Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FD454409
	for <ddprobe@lists.linux.dev>; Sat, 10 Aug 2024 12:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723293954; cv=none; b=TzTO1psCMUbF1+CrLYh6Jn+ChQZR8eTdJTvlc8xwzcfDyevg6rXuec2iFv7kQFR6Kuwksh3a+R8laX3G9DyCfWa7AOFWoh4ffALGUHy4ZGJv1N9LPgOdir5me5Tzr0YgP0aNVtMXIHm0bjwiaS3YighBHDsUtLVAZCyvU0ZDKdY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723293954; c=relaxed/simple;
	bh=IyXrNcvRPBE8PLfzwYwYoJXZuwd6E7a2X7NjmkCjtuA=;
	h=To:Subject:From:Message-Id:Date; b=ZaVRal8UOEEg3SnE8k+KRwqcYNR5D9TB3v1zRssyZzFmeTOfolubSyqkTZ21dk+hu91sE7HZ1lPZEKvsihCncf4o+p9NeB9/zP+/tK7mQ7lHrYE3qY9iY9bRYzNhXPUeAWnldwqQ33H8zukrQwpOhiZ88tNQ3yERkUlKQMam+Xs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mdPmz+yu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mdPmz+yu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A771EC4AF0B
	for <ddprobe@lists.linux.dev>; Sat, 10 Aug 2024 12:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723293953;
	bh=IyXrNcvRPBE8PLfzwYwYoJXZuwd6E7a2X7NjmkCjtuA=;
	h=To:Subject:From:Date:From;
	b=mdPmz+yuOcW2HX3/DtC3SEtBnjzX2c2k8Wni2Ykq4l0cpQ63qb3FYVY10aXIXgAeU
	 pNFxeJwOWsKxt7dW3zWsMc6ioXI37VSTUqEV3SUF3sIilo5r6DLRXCbOhHwrzDIu7U
	 tKJJVB8B2ypeT/IWeIpx2wI5DJQiX6mrrtUktXbOSMCF7kq69aJDNuz72C5x/HoFP8
	 ldl6a0OSiWDZ706FL838qfxzyN5YUFqYjrG8yNsamb3XpVh+a0oUeNVy5NcriMNYPK
	 auWSFjFkR7IErrU12lXjqWEmxCALBbtondpLaniqQBYqPzg7D6N7UqW8b1gZZdT/Lb
	 pnMHdN8/Ifc3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9533BC3DA7F
	for <ddprobe@lists.linux.dev>; Sat, 10 Aug 2024 12:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172329395357.8469.5701809547774082071.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1bc950bcfc86743bc733144d5222b4894b3bd1e6c8000288d36f02a18762394c
Date: Sat, 10 Aug 2024 12:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723293953
