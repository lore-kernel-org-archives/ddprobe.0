Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20F492882C3
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 12:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749214795; cv=none; b=bVD5FdCPXfN4kaveg8tJRGcAgZnVN0EnJ5OLzqL1bHKDB15K8PJeAAIdyx6eU/9wbuH4w0PJKL31B/pgZCcldJm1fKWWT6AnyY7iH37QF2sI1oDyMgAbVXqcLWNTarZhdWgaKEfNwHLt04u6inTqMYOCNPjPTNEdJ547KcUYR08=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749214795; c=relaxed/simple;
	bh=HKto1d5Y1a3gJVpxJ5x/kH1Xj7Vdtlm/AGopFcKxcvI=;
	h=To:Subject:From:Message-Id:Date; b=oZA/CJgj7GaM3X9YU8J4kn1RihjXlWRf2OltJbPOLtXXvQ3SetVHKHNrNt7X2xsEC7xRSqouTgJs3zRcjIfmLZLct61kG3teHGQcJ/KXlRFzffJzPkS8Z1cvglSjD9wR3nlwO2mHXwRfrS9fTuDnq5WZNdfeimvCSN5U1E5TXa8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tXwLBrDp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tXwLBrDp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4CF6C4CEED
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 12:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749214793;
	bh=HKto1d5Y1a3gJVpxJ5x/kH1Xj7Vdtlm/AGopFcKxcvI=;
	h=To:Subject:From:Date:From;
	b=tXwLBrDpRQ9o8xAc7YXNAVZ/xY8GM/JktUeb+V1zVLJ3WZuIlo2nkPao80BDxg8u8
	 z2OgopNSovHXHT/lbzNrhG5LF8TohJ1VC7GJzuyA6XUvFE8nAZBsj90CkkjrTEFS3O
	 lilZbHtSseXfpuThVlZ9Ay3qVSXTEMvbnKTYCuNjXjjHgxgIl0kUw52a985+cFHA7B
	 vzHGdifBFe0gWD9ut1wGP3DlX5heMlBpEn2UcKsOoJI/2b0ScVw+ecv+tIqmH7IG4x
	 hCnf5heXCK15ORjWJ8fYobEHCwcFcaYfMRiimhUviuRfyeMlt/YsRiyVUqPvIFC3Uo
	 Fl26G1g/b1L1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90A01C61CE8
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 12:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174921479358.5380.6714555285594102941.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: acdfa19b9fc1d112fec232531777a213bc52cf8fba21ee8a1571d05af56a1258
Date: Fri, 06 Jun 2025 12:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749214793
