Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3212A350A16
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 08:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770798294; cv=none; b=RMgcouYw2Vu25pocyuXqnZ8Ny5mXVGZk/eBX8CzwV26w4uIOb5qcY0TREvJwl5bp6JCIuEJK4JoRHYM13bFQ1AC2oSTc6kawCShQXx+Zge8OOB4y1/ud9odpeGo7s+Du+IZFZEmo02+P6mxwr/Cd66yTK8nr3tafYmdUuC3phSo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770798294; c=relaxed/simple;
	bh=Z80ip3ZiPNhVsF7ayqyYyAHDyAxVgqeQCXQa8JZyZp8=;
	h=To:Subject:From:Message-Id:Date; b=iXx1sRvBL+ELJUdBdI2OPb41T8D+aTjPNIwrEnv0s0prdyxOfhGFXtCH2UBDFHOj67Yg7Ndpet0PRSqYJNhDn3l+2OI85aPQ5PsUsy+Y1MYxjwRYwr7b8E9g5M43GZp7yu/lMTmTDyv9d88iNkw96JNP6r/2POmKqcmGr2WiHwk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QirCQYZ5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QirCQYZ5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA8D3C4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 08:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770798293;
	bh=Z80ip3ZiPNhVsF7ayqyYyAHDyAxVgqeQCXQa8JZyZp8=;
	h=To:Subject:From:Date:From;
	b=QirCQYZ5diUpFdVrsofQQtFSUtPo5UZ7bFx8TBsv76olSvW5SWC0hMzPo0nH77EdP
	 Zgf66nUYa4CgOXjXCGc3VLFTA5S/RiLJ47NBp0X0MCpjoDcvAUPlmZsCVXf27bmF6P
	 XdpRVEgCHDnLxFfXHNJwtTk0KPP2fCKBLBEAsDZXhyGhPTgCOjwPmaxijwi5XC9fbs
	 cK50NjGNCesLRqFhpqAm4iq0ITGw6QRoBcoYwXtlHPtwaPmaMm+uZOBe8SKAxIUuLc
	 ZlLyQpZroJEBdM6VoEoolKGsiHvZjif/QTxZLeh3XcDrlrrI6yWYj+CpToEjI4LsC9
	 tQw/hi1OEMMJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E123EB597B
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 08:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177079829363.30899.1647683830533148799.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dcbafde6ffdf066445ec34c05978bc72e91a00adf71a409c4c7662fafbe1cd8c
Date: Wed, 11 Feb 2026 08:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770798293
