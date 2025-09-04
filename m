Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 291461940A1
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 01:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756949994; cv=none; b=X3gHMH8xkcsvILGFqr/ZWUqVJboKVFEh4NMaF9Q3wHqF5K2NZTvh2Hxhhh3qICQaX0Di2l6xKjpWCD/1N8qDKWyFOpOJ8KMPX4a+0GojILjHMbiVpsctAc1KwFOMBTGLy1NTCo4Y3kk6i5jZqZcD9egTKREZNkcoXeCeByr3VpA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756949994; c=relaxed/simple;
	bh=YvdWE3FCsNICk5DN2uE7Nnp3D8kf8eg8pRFdB8R84Yc=;
	h=To:Subject:From:Message-Id:Date; b=S155mKIEwsk0FnHRku4WPoDDilP1dNiEO7b2WJ3dcqYyThAc1mM06uSLsKd8gv6UMa47fgTVnhjnHF7E3Dv/tEoe6zwuNSRV/0Jf0RhSCMXdoGhGi5IJfZynXBepl28k62LJqvfOQQCAoRP4fUNoJjFPCVNZ6rJ+md+Rt4HbmDA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RZIDdQPc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RZIDdQPc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3DD1C4CEE7
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 01:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756949993;
	bh=YvdWE3FCsNICk5DN2uE7Nnp3D8kf8eg8pRFdB8R84Yc=;
	h=To:Subject:From:Date:From;
	b=RZIDdQPcHVQGfseNz1Xuj9EH1quX1P+MqgorpMD+1jQ+i2YEt6p3/T4c/MfEl0kQ0
	 PvSi1CAAxbRVfd7M9OBqdbUdjk4D27EM9oB0sq4THbBeDzXaiFTgIxsUKuGCUhav9a
	 1irWLDaceXC0bRbKSIES6LWBwbIwFTQp3UDfOq8qpy/bGncO/j6gH41ED7qxKcWHpu
	 zxd7FLli4BKivx9UKSZSriiCW7rkP/5Ra0J2OXhQIlFjPM+EMlXorHrmVVzqvVihxg
	 kexjDhzbwQBkwA43rj5iF4PhoayBVT+nBwZGBLnUyl+GTS2xC4V+L8c1SYjzdeVSIB
	 +EEzQo9U2z5nQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F4A1CA1012
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 01:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175694999357.10928.10715587119454788915.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6162763b90b3509e4d185195286e5733e70638da991c24d1afef08a33e67b834
Date: Thu, 04 Sep 2025 01:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756949993
