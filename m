Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 397961A3BC8
	for <ddprobe@lists.linux.dev>; Thu, 21 Nov 2024 12:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732191354; cv=none; b=OaxoneI+UNM3qHDD1Dv7u2Ij8wTXvcnbobDoJfgvHDRjYHy5tWA27V5UGlNgOAhydKJDqZpdeR7Kg6ciRIm3liPc2IzGhL787l6ZUzGktQWc+4pk3z0WZb41iKwSgKmVfN+Xj59YcrRZdZ9v7t/tYgWpUKdjgKiScaZOrBOQ+3k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732191354; c=relaxed/simple;
	bh=GcbLXemOiU4XaG1Nt15VvIvsNg68tBtbagRcuNw+gBc=;
	h=To:Subject:From:Message-Id:Date; b=QxwzN9eDnBXgEQH+UfVWzqPZevJ5sGRh3Xv8LM4+fr+IhQ75ZxAykd118aCPiY28zlU6fwKWQBmLCfhrY1LAkDVOT/ObQ11MmmaoEDP6ThXIXvKlseT0kjHOdZlY7GEHFpr80G9eqnk+SmRNIKbSqb9QrZ2DM706bQmPoJ/11ac=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oJRrRECj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oJRrRECj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B89B6C4CECC
	for <ddprobe@lists.linux.dev>; Thu, 21 Nov 2024 12:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732191353;
	bh=GcbLXemOiU4XaG1Nt15VvIvsNg68tBtbagRcuNw+gBc=;
	h=To:Subject:From:Date:From;
	b=oJRrRECjArqltp0iaKy7bjMlN2eNGCRkdjmTImRS7NnKZAmqmZjiP3oBnhxY5/j8h
	 UQqkxJ5ffUGJx17QNWHiiH5j59Yp6cqJe7kSIWLqlZJfESY3trECvWyvHC8KHlChFd
	 ldrHeKsqiQ5lYwKeaZflrpLF/ZTB21W3b786+sH3C7VlTnxBrM/8J6h/pmBJvqy9Xm
	 cXDPdhdW/3Qst/e/496EFkfLjTvD2AEzuujVftJA/w9uP5CSiBI5Z/JhAA/ZurHkFE
	 WRHSigJGetheEMHHBdGLjEJJ4HuTRnSEJVNSyJK74VHEG7XUcno/cAsudr2xM05XVb
	 rS/I7iFykzKBw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99E82D6ED13
	for <ddprobe@lists.linux.dev>; Thu, 21 Nov 2024 12:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173219135361.30885.12550613794269198831.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e88a36eeb624cd19005f86e36f813f257320f0482435ef1d7d42e2c0162ea53c
Date: Thu, 21 Nov 2024 12:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732191353
