Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 09AEB487587
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 13:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767880434; cv=none; b=HER5+Ey/bQVnNtuk7jlOl4E22sRHRd5UUDJcdHYmectctQbS0ukc7VLpihr8c8v5JSfeLkf32FBZB87oyEJKWL+/yZJNVV5pSCNU8YKJgjdLSHjfu9e5xWwNQr1n4wA636jsfnvJnwzpHIYxHzgVyHSsFj0jYFheiOkluLwxbF0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767880434; c=relaxed/simple;
	bh=8Cqu+7hmUx6nv+ta0FtHAe8rLrELRSVaQceUqLBjwiY=;
	h=To:Subject:From:Message-Id:Date; b=lVgM0m+v84DAxUXGR6RbxrfzYRPc2ftN7yNDWF/8P7umBujq/xnXpDeGX0gRX9Qdq1DvFKIjs34mao8ErLunWLl+QIjxjF+IF8LLmkvdXM7fRGq8SCGVWyzQDmbx1DzT6UcQohPqXS8rIjcf4GcsoadzxLpkjJ2n4NPjHgCv0bs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JyWfBt3a; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JyWfBt3a"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FCABC19422
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 13:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767880433;
	bh=8Cqu+7hmUx6nv+ta0FtHAe8rLrELRSVaQceUqLBjwiY=;
	h=To:Subject:From:Date:From;
	b=JyWfBt3asWtJdEeJ8apkV67KW32sRYXFrfWo8ieWBeo+qne8moVVIDvIjeXc+7Oag
	 iXk3mA3fzCVY2m09ruYxOnj8mc8l13EL1M4g3q4Iv57nH0tA55H5IXV6YX+3f1Lz+m
	 VTcwFyM2aanV2EI58RRfxuCKUuzvWirHZxEDvClOkz74b5/atcNncCkfcMYKUSffQD
	 4mVqyb/eiluCbMXDf1meMa2Qyx4Ng5kdysnqmT1yLyf/l8BgwIJ2tDZmp73QSY1fVZ
	 zQ3t5IAbVf/2cEFbAnd4z25s/I4fECGKZNUyH4Pqap2q0yrJWaBQ2rnS4Fd7QtJLxt
	 Gr3HIBJBV1Llg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FE6CD185FB
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 13:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176788043357.12283.8414370388461807256.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c4b4b87aca33ac1c9f50af4f96bf74e4b56527f7587c4059762643a129e5ace7
Date: Thu, 08 Jan 2026 13:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767880433
