Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CDBC156C6A
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 04:02:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779595354; cv=none; b=bwu/1E5b/RWQEAeow9z9fbxqx3CHGlDp+PrJW8ZC+TL6cmrOD9IJClQ68U9ZtAO5Xx4j9OuRnEUwCr5hkCTv8yDaDiumR8Mc/k54ENFJqrIoYZNSBtYyOxYePUXauVOKrkAX6JhBYoeMqEuNXTHAcOwJn1n712IXmL4jf+uC1M4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779595354; c=relaxed/simple;
	bh=zYU04j6Hf+k6OhtNPvAvm2c84q636TcL3LaSM6YUDFc=;
	h=To:Subject:From:Message-Id:Date; b=GaP3EGAHZhaJDsIX64hHse9E551yqG2guKJFsxyjNpxYYLTY5oEtZBRAjo29P+qsC4ZKHNGXFlDWI2gCtbKpkVN6ZEGyDGxg5qT0UZ/ZK+qCZQ1iDjCaz2Fkwb7YKicf0VIG7aCZcluNGELLiKkFSRs9akCQsKc3zOHuOLqnSMk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Wgv1kNjh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Wgv1kNjh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C51A3C2BCB7
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 04:02:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779595353;
	bh=zYU04j6Hf+k6OhtNPvAvm2c84q636TcL3LaSM6YUDFc=;
	h=To:Subject:From:Date:From;
	b=Wgv1kNjhzeqcRVoyJeP1Sp0xvOz0SVRElcZbv6vNsxTQt9YiuC6NPXoe2gNWWKxe1
	 /0eAUA/NfWJbm4UVZPSFI59FKjwk4GcfHDSldkLdkJqolmjsuHMl0fuFWyTRpwvLJu
	 ZeS7bD5JdSynV1HItzNlIIA3YI1c5Ka4e9U5mhv+V8lyoLjTuQNpLE6mlCWM/5BCLP
	 8G7Fqb5DnyHe9fwaUy7ienrO5cZkZJ+2oX0RnS0BIE2J6PjDOktUBMb+yl52AOpf64
	 gV7XkJp9YNW06pzyaC3HZkbBd4+J3HRUpLGXlKEz1OKElKHcUK8msfTMMJGBfs1KJy
	 qAoXUMHSc6zvQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB01ACD4F54
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 04:02:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177959535368.24084.3969249076950534763.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 538f5618fadbc7fbe8e2497d76e766cd2200d5055f3455d517a7f9d570e9ec27
Date: Sun, 24 May 2026 04:02:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779595353
