Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B8671F2BAD
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 11:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750937394; cv=none; b=dTak+Yzj9ZPfKFPVPH8JGzS6XJVg98MVKKX/EJoKCPyPhFtW1n7FCb9XiUY8iO2en1tPU/ygsvDXWgyrIslgTMdwEJn0K6QFf0T4bfJ67rG0siwZ0ibf0aRZRNw74N/G6M9GzZOxSKnsTIR7o0HW9DRPVc+6dTl253gizqLixEI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750937394; c=relaxed/simple;
	bh=nZTz+HR2MJd/NursbkMXJ9VfO9w8y1RGHtQxIOgWhRc=;
	h=To:Subject:From:Message-Id:Date; b=L1XklO5q2uKe5bEib6WaXWQ9UhF8SYMMk5UDryzXcTQJQwYdlEYus8PXU9wgVQGDD8MyapURqem/GdIZ36MpWepqJDeghrn2kKOBgPMFQ/9HEBKgW3q6kSR4Er924Z41MHjr0qsfJrE/6AH9sLfhmD/44reTzFd5cMDfUda+DU4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tSflvrZR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tSflvrZR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0782C4CEEB
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 11:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750937393;
	bh=nZTz+HR2MJd/NursbkMXJ9VfO9w8y1RGHtQxIOgWhRc=;
	h=To:Subject:From:Date:From;
	b=tSflvrZRJB7M4rfA28g+54/IEkXDwsKiddzUrRLgQVYLXAdaS+U0PEYW2aCoVTSSZ
	 DYvV+b44ufJci34H0twDJfxTSdVmPH8Q4gsokF72wOcLmIDxrTRHA6Ozke3eilUrJA
	 JWoDvqW+2esOicrrgr91+HnJ1b6eroo/6z53LYTyqD7L+aVMvDHZhrYY9KoluYhFyD
	 k8wSHZNOQXhFqnoHaAxKbpndh9pPf2I03YdbZIAwuqTnU/SrqoDIYi7a82aXyJUcq3
	 jUknrC7HcKSeJ7aEkqWDFOJeVuA7BDw6BGlm/zahXmnLqrGfSe2n7aFjH0d2mjsCe8
	 soBwx2+ITYUqQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FB19C7EE32
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 11:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175093739358.2832.5408669759532763706.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7e38bfb7c7f2187fb52f21e71b416e238bb0f1c2558efb358608ebcc8c95d05c
Date: Thu, 26 Jun 2025 11:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750937393
