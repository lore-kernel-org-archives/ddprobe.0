Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 093FE3DBD53
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 22:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774997694; cv=none; b=OV5WsM1R1bJFZUeO65DsyJOYjKG8SapS2kZ6dwrAmdvL4wODhXFnpqYRYM4628sPeis+UMhA/NxMWustrY7OhU5sSELAW8qIgHXGeP3niR7HRDNoCIGm9IwaEkX8daiqCu4NACMFaV65CFAhnt6EuHjIZSEYpLFRHAvWbS/FT5w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774997694; c=relaxed/simple;
	bh=QcvhCVw2kXmGH2xqMVMX9scLJPhP0v3LtwOVfdYSqrw=;
	h=To:Subject:From:Message-Id:Date; b=ewTXhBYD7PZkjVRmDntiUUvmgZ5IAQUHH8bVAkNAp9En5wC4OtCg56ocEKRcQJ78LHecXlzMS5ecMHgkBuQ/D/9HYFIyKM69wb0tmfKc1QJy7RbbMIvwBSnSlDqtc/ktTt/rQmicSTl/2CWL6R98LZey5z3p5GneQMoIXX1pb0U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g8Uscr9P; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g8Uscr9P"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A258DC19423
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 22:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774997693;
	bh=QcvhCVw2kXmGH2xqMVMX9scLJPhP0v3LtwOVfdYSqrw=;
	h=To:Subject:From:Date:From;
	b=g8Uscr9PVWUcghdIrzcLnNp6PibaDflncWmSA8VHO3lMeW7izL1uXFLjSJ3wwIouD
	 i7ImcopP7zfBmd4ny8Pdf+laTp8Tr4PZ9+MFcA7SFKPt8ekNx5U1J+clCvZXsacOlP
	 NZYC5PeW5XW/UyZ398M4Aru+2bKucPlx15FqYBYVPpKxurlMpfFSa5UB396W5zBwkk
	 BhXDGswXln7RUR9fS1wgE60s97A9es3yeNSP/XYCMOqnaIDe0S74S3IEqlWcUjwO1f
	 Ds14qSd5c+1EVTjB9UaqQkiT2Mv55DWB4qmCJyRq5JqBe1YQvPoDXwHcKQyLJez/Ox
	 hZpHvekzIic3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9183010F9308
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 22:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177499769358.26173.3882219552183207795.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7d3f22e09bb966770b2b34b85eb44eb39928751ed022b1d6b8de8187cb4e1658
Date: Tue, 31 Mar 2026 22:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774997693
