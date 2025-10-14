Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F55C221555
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 04:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760417394; cv=none; b=UfKnV9hKwWfJruDKgNv4endaLVkfdRIlLyPLxKoyn2m1nPN7G9Y3andrs3ISzpLJQIbGmBvBjBtjQXkyNbimTmw0is1ymn2XlapbTRYFYxhxV/zRh6XSg+04q75aWmnPhPCr1EnobSMrW8GHKMni+0KNHA22pP+zgDP3Bw0u8kI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760417394; c=relaxed/simple;
	bh=1y0fYCr5ZnWJhs4AyUZUmCZ7IeqdN3ytXxJmmknk5iU=;
	h=To:Subject:From:Message-Id:Date; b=lx5ICmTYTtx2LeuFUuuRsrEIqXzLYp88R+t4lTMtA7hRRfFUMEzhN1GebP8gZJCAAGDxAnQK3bk8HtE9cROFCqKz/Gka9hXgkBP6C2Km/HzfevUnPQwwf+Gx9H4qStaWwTYFDSeXXdY5s8LjapRYktQo/CWoiqS6WZ+YYvA6dKQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ei4Xkb0s; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ei4Xkb0s"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A243FC4CEE7
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 04:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760417393;
	bh=1y0fYCr5ZnWJhs4AyUZUmCZ7IeqdN3ytXxJmmknk5iU=;
	h=To:Subject:From:Date:From;
	b=Ei4Xkb0s8LF16MAVpfMIiG7qBf5hF/brJbF0HeFhQu3sXV9el2u/DsVmjzg000nzp
	 duuTSEEqm9CCS8fB0bWpcWR9x1x9RjVq9f/cx+KUzaibeOmkC5FZvZQEhPv9jPAsex
	 DZ3hOrdH5+ddkvWcAWydk1mLTocAdofI+VBS45BPxRLaOKV3grz83Tf2Y3Q/GwNJkJ
	 PGZzAN4noKw85tjbAcQ6/0u9UEUrlO1zvJXua2bSQMfOc8eVpRRRI6lhI5962i6VN2
	 IjGrgy7hGCDCUblhiLyeoGE70rP2nD7NlKE4d8gtSTpkImSYu7FR8jStQELL/ThTVT
	 7u3jVHoUY2klA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92EAFCCD184
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 04:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176041739359.18030.12037363504024481208.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ebaaa8b4d0e029bf8ee5f9a5bff98f222362873f51e5012957a45d98b438e442
Date: Tue, 14 Oct 2025 04:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760417393
