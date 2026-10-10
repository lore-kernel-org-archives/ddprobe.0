Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34BC033D4F0
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 08:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791619234; cv=none; b=D8XXg5JOvPSi0dw0aoXltIJHO+fuPltC1LuEaBVgsKUqVunxGduoLBHsD1wmBWuxInAKvD483xfmNIM0TTmjj4Q3kSFrwZDXNEk0VubN6G+WDVUa4ruM+sm+uZTYGvbD1Wq5/Ojmxi8qISC1kIgnxERllcdgM4z60iyigKCueNE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791619234; c=relaxed/simple;
	bh=gHjlgwOTuHAVrdkvqP6U52ORoM2nnm+TcgRv/dY3q/Q=;
	h=To:Subject:From:Message-Id:Date; b=fAA2zzgAEhiL0yvqcPoE/4YSL9bNVUlEA7j0ptK6NmvI81Emw6FDL+w+L1jW48cd8t6ercjC+L8u5tkbditNzRJzV+tBZpb4K+ITWWDBJgN/E0hhwDOz+Ws2JRJBcOUGycMBVya72pg2+esDQq7JkzfHI19IZxdAehI0/Vrv5MQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PeSIfKaC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PeSIfKaC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC9EFC2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 08:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791619233;
	bh=gHjlgwOTuHAVrdkvqP6U52ORoM2nnm+TcgRv/dY3q/Q=;
	h=To:Subject:From:Date:From;
	b=PeSIfKaCJgSrH3KA44q10YLED/OWBzUAaVQ0LAE7l+q/69K8/099ZMIDj7h20uvi/
	 iykcZA6c/0gQYfMRJzXweF7RiSWSQOzc0z2NZ9jAz+UmQQkZMwLzdbXwTXepCAVCpw
	 JC3Kw9dZOaQ0/4iV0ej6t9uEJFMXUNufwmZpqzoDIMSafYbnRk6/tkCOI52y9dSW0B
	 6+/dx7wZpoAe5PLutHPvjNeKg1Q3OrYav9Xe8O0eFBtCtD7pVXHCtTznXqbhwnPuiH
	 q/SaqFmbPizDNjRtlmdrdOXjBdugq0wuXX7OpT76L52Uf7L7u/Ww6laUX6h01J5iYT
	 Z5ey7do8jQUxg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9742CA6017
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 08:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179161923368.28384.12981397214272963668.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b0db2cf8268f43aec65f8c0d2f2dc5878cf26c37d67d3be3938914ceaad25920
Date: Sat, 10 Oct 2026 08:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791619233
