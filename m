Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24F46BE49
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 00:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753142994; cv=none; b=U3hAHUj0G9s+r30Snlbqqlhd+bjX5A0pa3G/rS87tSqHkNGF3PRKC8eMK/rganV1ChMXnGlWksmF6Ma0avEYuhkGnZ+m217+U3IFf1E+0VmYSsuTDXjY0iENw9ZGRsqA4mtQoXICFYzAMAnjssLuVK2UXnnbJW0XrlZ2hy5axoo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753142994; c=relaxed/simple;
	bh=3Y48ZehZMYEGMCjOrY2eueRcCoFzAI+pRQvv9N8OmFA=;
	h=To:Subject:From:Message-Id:Date; b=aXeYfcJLQJJP0RguorePigoQcrdmwx3+z/E0aRQ4LE81TYeORf83MDkwEMizNVJIDY2asI6pyxRSBGYWDB2W8DuVDTvK7etlzmiNjmPloOGCTYg5S8+BUL1umPOONU2u2SSj0+VDu2UN4PvYRjTazCXgST6hTHgLhrN+TlSALmQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LqcXocxt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LqcXocxt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0859C4CEED
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 00:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753142993;
	bh=3Y48ZehZMYEGMCjOrY2eueRcCoFzAI+pRQvv9N8OmFA=;
	h=To:Subject:From:Date:From;
	b=LqcXocxtKR219H9JObEPdz0Y6gFhDFScIscPZ1FvF6qXsS0CO4cVUTs0sWdUFL3D9
	 M11uNQDxgEbftxQZLQfaNp93hMmm2NXme1mHOAmJTkQdH4T781Mv76YVtPDFq2g6VT
	 ox6QaVrwmZ7jcHJy9U9mfOJ8l2yEyRmvTipYwIk0dvcQTVb4RejDyxEhCORdTy6a3h
	 FMnTP9adhXuD00x0XdxN7PAsCdQBC7PITi6UBa9zkWGWLgE+9wr2lSQQ0I88IEq0dY
	 4eAKORnbr6kaXPCdPYuyJ0e1x4O/a1T9yZjnme08mpbzdAQCSEKe47AsCdX9UfgmgA
	 SUZDAuz981SWw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 919BDC83F25
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 00:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175314299358.14833.7807643960903833655.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 82c1d6b9a3e384e53f2df42d22fc75bd63c023c6ba43ac77869dd71c05b903ff
Date: Tue, 22 Jul 2025 00:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753142993
