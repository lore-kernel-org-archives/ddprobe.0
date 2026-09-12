Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32297296BCD
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 08:00:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789200034; cv=none; b=OqbSGoab4NbVf3jh/89/GC0g3AVH+jMF5oZUdGI1xZljJbOSAtF+pGkxJxZ4gF8JJYeYY73EID90SbE4azKOGuniAIwumBXzlHqS7BA4rSoYj2y8gmu/p7XX1Y2IfGWOWl+O1W1hhxRMkoxsQErsdEF6b8bfHWCP5+KwF14Z2TQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789200034; c=relaxed/simple;
	bh=WTddy3s/qWV/EKC14pJRH5kaoP8ikmUZDx0HE3a3n4U=;
	h=To:Subject:From:Message-Id:Date; b=Cnf4M0nLRp/k8UY48SsZGejrdd7QvKVN1qQMoxgh3VTv+CgVlkQkmLM0sgk/r8OwQ/Jl8VOdKB0Qu8Zrmmf7ibao2PWEej8rK4bxrobV7FPpPTyhNBUtn2fZO3yIGggYYkpg4rkPyXhCUqUE5ATFd3A5CELazJ6hwFFa7rqrqdU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c2y/u6BR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c2y/u6BR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB47CC2BCF4
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 08:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789200033;
	bh=WTddy3s/qWV/EKC14pJRH5kaoP8ikmUZDx0HE3a3n4U=;
	h=To:Subject:From:Date:From;
	b=c2y/u6BR8Bd5/2EcW5f/Rag9Sp4f0G9F4+/db8tg9OU5HYETOcfG47zzlNFZXMwkk
	 yRbUZQzQFgqzt3sHZGRmPlDmx0y+LDfEQKEkC/0luNkHMYdnwFwPHsULIv/RPrtPUz
	 uRZ/0VgrKuAnjB4+LWdVXA2lKrskfzpJgqswbOS+760G3+2rOUPCctRsm5Bks1/IPL
	 wXD1mZf41D4Le6xWEddkdwgxL91yGDNtgzL3IrIOGvwJwzaO5kZQnquRirLnQLzw4o
	 D67x5+5YwmK1PjdwQeBEZj3rup3UTUxweNsOThHhveI/LhSJTSH40rlbI2uWRGXMrQ
	 Dd4gH8DwEQW0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB294C88E45
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 08:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178920003369.25249.15684086049909080883.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 374b856357eb4ff349450b3a6fd660554d2e9e161bcab57f8cbd886f1fcd4067
Date: Sat, 12 Sep 2026 08:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789200033
