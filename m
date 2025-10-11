Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1486422156F
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 06:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760164794; cv=none; b=IGFouUevLSjrJSbW2/d+dLWtxwvWrNF13+CknxzmJ97wfIx8i3HB/8LlWT5yAk0HzcK/UlH2qKluX2bTHukb07Pdckn8Rs/O1q9lOT9oNjbfVa0ift97stz9P6mH87qaHr0/6oDr+OVIObWQv9YrwD6FkPzrQoPilKv2H+LzjUQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760164794; c=relaxed/simple;
	bh=jl3pfM5jDFFMeK6J/Q3GViGqrdgfoC1XFBDsracx4l0=;
	h=To:Subject:From:Message-Id:Date; b=tnd3zHJ1Sdk9ED8RHTELjoEotiYnk/1zk4Wviu0hO12Rt6QVRqa/3pBj+96UgdBES/Zd3htXl6MwCRYWcYY1VWE5th+W1qqwLvsG1c75M3toXB3gzWMJ6B1PjaH2vupyR5ZmNYwYjoF8UWl1xF3mlSUtrfzmXc7FV1tTcY3ZRR0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uS/NWLuM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uS/NWLuM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2E0EC4CEF4
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 06:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760164793;
	bh=jl3pfM5jDFFMeK6J/Q3GViGqrdgfoC1XFBDsracx4l0=;
	h=To:Subject:From:Date:From;
	b=uS/NWLuMaXE30SRy8eCqNtv8BFK2FtG+6nW8VlXhA/2Dqi0xzqQ8bx8A9NLamulHH
	 GOky20ia+TO8fKKAQ8SKYJ+zswX48z4I4TpflgYCSpj+EFZZS2YxZ+8ImHqAHEinyA
	 JRBmB05qdsl6gNx02cqMom3pKoRqqvRXSNsKeA6lzB41KgMlinKYxE4/4cQRzjrvpK
	 wjVZv6k4zf2w3HLiJhrtaAqoouB+iYDq2fSNO3SZrcW41iro7k55CxzNja0chuxApy
	 RMWWNCEMHRn8rdZ2OohUNiJa1JkAp8sNAaXbqSzbdXtSHbY9mBLLfib/y14eG36Eyt
	 kb2sxh2cvOiKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91E60CCD183
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 06:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176016479357.31584.11798676437606320279.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c95e56320a94ca9e2cff2129f98243f0e0b846cf27d38e20991b8f5e21947703
Date: Sat, 11 Oct 2025 06:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760164793
