Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3715015382E
	for <ddprobe@lists.linux.dev>; Fri,  7 Mar 2025 18:48:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741373334; cv=none; b=pjY6i9gopVvMCPhD92RSHny6nWhenyfIobi2tcDTqVJ91EBGA4gbGRz7rbDp1xH21Z7b/K8IavX7d/zZ8+L7rs9irbOheBcXLXDp3rYAKHgma7oJ7O4KrH93eAB1P2eRg7miRhdyAmAoT7HXDW6hENEPfUUNViSJzVitW/ApXzo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741373334; c=relaxed/simple;
	bh=sNGg7Z0WzUYUcs/G0JaHBUyfl/Vi8XVJMwy859bbGoo=;
	h=To:Subject:From:Message-Id:Date; b=FGLBnGIupOJrV6TosaU3UoET4nAzYKfgBJvYz3anuaY39Mdre2nFMREu/WHQ8YAn9Z6DM16K82ViHdC254hUfD4SnnKKZ2ZRkHkSESP9kvWMm70yseKmrdzvQ6Ob4zeCabz0cV90sD/LH6kj5NFHA0wZRbNXiGflC0UOyVRLTxY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CPE3Wi13; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CPE3Wi13"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6FCBC4CED1
	for <ddprobe@lists.linux.dev>; Fri,  7 Mar 2025 18:48:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741373333;
	bh=sNGg7Z0WzUYUcs/G0JaHBUyfl/Vi8XVJMwy859bbGoo=;
	h=To:Subject:From:Date:From;
	b=CPE3Wi13F4jXS9gyhWXRpuMEbrDR7q6MZNIiKXqS289cnfarWO1rjjwLVi3Q66Zqv
	 ICfNdJWNuhqsacaLkUJDdLixaI4/tjXZJifTvupKHQQ5Zpq0j7PgSFkd+Qn4UoMFln
	 D2BzcmRBVjn/qXTII1ZYe3a3AWQDXapXOlaScciArHFgheDvOH9MbthQnWdXU9VFaa
	 jdCwsDPmbOfJ4ZdQY5eDX/4B2sBUBq92LdfNuXXfgl95GDRaIYP9HkThicYTZGb0ts
	 1X9mOquS+va0/C5/bYC8/hb84kASRdJz6WwLFzl9LPyi8SG20eKVug7+inUU7s7u26
	 ILwGzrUQtOtFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90921C19F32
	for <ddprobe@lists.linux.dev>; Fri,  7 Mar 2025 18:48:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174137333358.2421.8343725287717805554.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7753b387ce9b2a901a3827a6199490a8bc4b509fe32e525f54aea414920af83c
Date: Fri, 07 Mar 2025 18:48:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741373333
