Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA0243597A
	for <ddprobe@lists.linux.dev>; Fri, 28 Feb 2025 17:18:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740763133; cv=none; b=ktcKcjnZNpCQynmDuSCwYqs2AQUyldZVROqT3p6sOT8jNoKDjmoFuzsbTSR4hGhnEsk9p5lZCWKD4XqXV1X/S6+HR/ikfebLmfzkuLcuu6M2+K5EpD3fCX14D9JwIaDRKfnhZh6nstDIt5WveL4qNrcOTCcT+6kafWCyP1RMBcM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740763133; c=relaxed/simple;
	bh=oLa+PAxO3S48arYfEKdtXanY4U5oqgoMuMS7DScFsfQ=;
	h=To:Subject:From:Message-Id:Date; b=F3sVrc1xO3pQqz0HoEriGPPekkjgbeKweV9a5o7I9iJ8R2aOJ0eOmXRGx5uVu5cXl2HhGnmqBMKggLQoYveEshJ9FMfJSIEwehvlUScbTS1uXTYhbi+FTvLI4y++mX6nI6rJA2ez3mLsI705ikLSZQllF29Ea0hJa72Lx5dODfo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=spNn3itZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="spNn3itZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB8ABC4CED6
	for <ddprobe@lists.linux.dev>; Fri, 28 Feb 2025 17:18:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740763133;
	bh=oLa+PAxO3S48arYfEKdtXanY4U5oqgoMuMS7DScFsfQ=;
	h=To:Subject:From:Date:From;
	b=spNn3itZEbKVhXnWgSOa2zwwG4Q2YJ8+JynHmLM7XzJZyvPTF2Gu6iwy7G/7Usgff
	 0Mb0e0AFp6DYfEUZQQqxZYavR7oKW4O6MJ0AZhAjdcmVa8EdOUaU5YN6XDl9+tVX4r
	 kNwRVO+GNkqj2PbeSTUORLtwa3NQjnxG7khpWS+2ccIjGwFI62sSO362xJUAzr3xzs
	 33xNzVFKg+4+J7HLD0mbw//rXFj2HfxtPrMOeMEHSJYE1kvoSXBQhIFQeb2Gakdo5D
	 Rizz95C4U9IdLVGbHmhKeNUUEED7q9V2ssY/Wx6Cvjhd0Er/zwMATPYfYrED9csgXD
	 61iKqDbylaaXg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9905CC282C1
	for <ddprobe@lists.linux.dev>; Fri, 28 Feb 2025 17:18:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174076313361.19908.6967672303101070654.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a0745765d0d50d8fc93d0f65ef98674991b3eefcba8836c6789dd87c9f52d2f7
Date: Fri, 28 Feb 2025 17:18:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740763133
