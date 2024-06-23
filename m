Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7A5E5D518
	for <ddprobe@lists.linux.dev>; Sun, 23 Jun 2024 04:42:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719117743; cv=none; b=VNQGKMo/vjm1QP6vI0bpf7Yk5TZ2BSYGl7naCLEtPEkvdZ14jktFuoDE+clprzwjjk5z/g4OHw9uFs8RqES/7lITQrhzky4n6/vR89hp9wcW8jardJF5fuLlW21Kv0kilBQpucOFYcZUAK/jnTPsOmJmb1XVDBUPPVk6Wvk1IGg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719117743; c=relaxed/simple;
	bh=Hncp8hVWJThSw8H86IdZhe4g3qX7EmDT871YhfH/CGo=;
	h=To:Subject:From:Message-Id:Date; b=toYbjeDgq24hQcbJrAzE+hvb+h3TgMxDsx8DbyUVGKfRlJJ1QjGfpyOaAALVMdwetflcfnm+033vralfVVBy9WjZPnxdQsaS8zSnkgU9yjasRcDNl4Hm2Tt2kWjFa/IUyv1ux/RUHWFnOCVC6ZzIF1/vx4tpyvDIA2Ra776pQ7M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AWj5arPg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AWj5arPg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E04C2C2BD10
	for <ddprobe@lists.linux.dev>; Sun, 23 Jun 2024 04:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719117742;
	bh=Hncp8hVWJThSw8H86IdZhe4g3qX7EmDT871YhfH/CGo=;
	h=To:Subject:From:Date:From;
	b=AWj5arPgY1sUrl8vj1hsNJDQZhCxxq0g5sE18EagzY0IBTSvzILLMaORPqNy0c6Re
	 +TCxI6PathXuJ00jg902sxr+MvHEF2mJR6wSlzSIhZAgWlCvRAN2VvHDXu/RsS7Z60
	 TMlW4wOkozDYSS7Lpqj7ZpnPKr58M4wp1mKNzHtnUdx77zNHIW9H6ruiZodcgJAiYI
	 LcIzXoZEhhmfJbriHqMYgoYwbc4AbxCokg5+FESorXGV9+4UUXwSFK/YlRvqRSACYh
	 /QyUuhy/ybfRu2Vxn+YExC4UOv4dmIUtSIzhpziqCc5vaxexhJpEBulUUHOmKSVOUx
	 TNWPi9tpUKrjw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CC547C27C4F
	for <ddprobe@lists.linux.dev>; Sun, 23 Jun 2024 04:42:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171911774279.5273.1143644986021245086.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 06a40a5667d094905ac2068888c2eb32e5247321000cfe5c66e7e9561631dbeb
Date: Sun, 23 Jun 2024 04:42:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719117742
