Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30B11153BE9
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 11:35:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775475334; cv=none; b=VNZyLSgFNfZwly6wTGRe9yeZ3KLtefczUwddCDD5tW3MexyTkVTecm72OPSfPqixE0+/O3t141HBqCgYuLtH6ZS+Evup+xbfzG/80RcVwxPTHDWbitXXLK9oU5IOCd9yU5JxwuJJ9azctH2pz7BJfb4tpJBvnqX1oNF7jtaVW6Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775475334; c=relaxed/simple;
	bh=H7BwkmR4QE80uTpiLtMVYdzy2g8K1xNmyAb8iuY1D8Q=;
	h=To:Subject:From:Message-Id:Date; b=If17+ctvINPne8pNIhq9Qm7vdXh/JFlMfG875G4GIuJoa1hXZe/u0fCUvXjourcjJuV55gZ77SZRWundI8VMDytSGbzkpix/zT3wHFmjHJXZ5ARYr3D0wPFQe/c1ViIA1apm0L0MzhPOIjfEV+ohwm+VQEOgS82OTDhAjPQYrCs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AUUSOoUU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AUUSOoUU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C98F0C4CEF7
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 11:35:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775475333;
	bh=H7BwkmR4QE80uTpiLtMVYdzy2g8K1xNmyAb8iuY1D8Q=;
	h=To:Subject:From:Date:From;
	b=AUUSOoUUriTKVRZk2biAXR2Oqdj3362ojWXRkb4UlorLFJ18YvsiDRc90ju/al11g
	 dkzCWYr+chj2RjYQidrGKbYTFU54t3OODbk3+E2WE3A5LcnX/LN6DZw2xhX6fWRbyV
	 vzsoL/ZFEvjDcZCcLibSIwl7plPjdmGYJDWuyspgmIPlhlRaz75FbCl4J35YA/YS3n
	 BRFIkIVJjQ4FQJVq+LySkRmKR+V3k23+l9XQyClCrEfidbEI6ckBSTZ9Oq1QxNb9Zt
	 A3leW9XRQWg2BCMKITL1g2LqpwCqA/85CvzIz99Fz6ZNOOYL34Of0WpjqVrqMaDU/x
	 3aEXhrHRTkEog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4749EF4ECD
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 11:35:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177547533371.22384.2279347178647178123.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f75a504d558f63587b9baf131d5159376535c0fc99013a88eac4f4c8ef12c866
Date: Mon, 06 Apr 2026 11:35:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775475333
