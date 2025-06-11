Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F250419A
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 01:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749607195; cv=none; b=QB2H9+0QD321+EbLHPVf6JXbJlfa/FsqUVzEZlvRz97VmkXOeXaFtv9+SsztJdhpwuc2rFXeseP2SyhmWatlwX7RNyZjElrw421TJH++TpG2PklawoJc8kCgu+bX5lf7MD9XZCR8PNxUjt/ncyoKQMkG0yo/MH7b+w74j/Ze66k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749607195; c=relaxed/simple;
	bh=i1AtR73G0HO5asa6ydavPNdnVXXbscYBnKQR23kwNkM=;
	h=To:Subject:From:Message-Id:Date; b=bJMKBLRx8XeOEzJfrBcdKRfzYoiLOQduP+yuEEZ4L85sjnQhwNZq8uRtkjiMapGJRyBJJpA4k8WvXAX3dAfstboFlfIMPtZzT9er5u7NLgttjQq5JHbTYs1KRKbo06otwgSyLmve/1eYiT2NIyTfzZXiZYIxq8XlDBjjjdwiAco=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qI0Z+eMS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qI0Z+eMS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A97A8C4CEED
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 01:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749607193;
	bh=i1AtR73G0HO5asa6ydavPNdnVXXbscYBnKQR23kwNkM=;
	h=To:Subject:From:Date:From;
	b=qI0Z+eMS7l7qRpAses4PMAZt11hQ3tTzceGhbmufEtl2uQIiaw0XyVCHPGIE/vc7U
	 MfEVPS2JQP4Zh+HaGV3qJNamcjcOg8QCFXokitWJWJ3KdLnYOfvd4sRTVUMcAc5YRI
	 uhx38f68m206sNQlW5Rl8KRMBv8E4thpmW8wMmL0DWC7BxhTd3M94KLziPCcPf9hUQ
	 FrrM2ea9tMTUyR709gPUgZkLahAKQJzdIswu1efLCPsZDUDxLvLo2G7y13p53QOKke
	 tIYqjucaU7yHwQm7aoD4zO0Lt5qu7mMaJGg5LdsXRB4bN5DzECryApb7OEm1zXFdbq
	 TZP9hzu2IoAJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9494AC61DB2
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 01:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174960719358.2032.18155734550981227885.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b412138294e87e464c62d23a56610a8a69fe326846c61b8b6229f95d66298beb
Date: Wed, 11 Jun 2025 01:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749607193
