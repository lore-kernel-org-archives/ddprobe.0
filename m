Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 345C911713
	for <ddprobe@lists.linux.dev>; Sun,  4 Feb 2024 08:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707034697; cv=none; b=rO8PtmDFjjqcXRLwigvvvBfCLAitLnJwYj1/U/7W0JjMo6yKdQOD1xg6ZKvnxvfgSg2Di1UTQ32DomwGYQyDPJFnuL0BYx0/95l2rSOkIK1rilKRZKAoyUFbSYnuLSL4nQ3IFCVvW/kEPXnAMD1pmj6g92a4Qa5Xnqn2I8K62ns=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707034697; c=relaxed/simple;
	bh=4EJndhhsVyjL5JAmAaFQkGRyIalYl9PN4DSNLVyKyJs=;
	h=To:Subject:From:Message-Id:Date; b=ejK6LUd7QKYYFZFgT1z/Ksouyx6xfodZ+KYsbmjoCOm9yvaZl02FpIZw6oY+HiJa7awhTXI+bKP4zypFgYc7yK3zX6HcgKG/x4AZRENFSPE2eZN1TXX3Se9cjh1V6HboWPM+JnkgJKYPede53UBrVTN2OgQSV0FkRsunXqaw2DI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I0aOpNil; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I0aOpNil"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9E82C433F1
	for <ddprobe@lists.linux.dev>; Sun,  4 Feb 2024 08:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707034696;
	bh=4EJndhhsVyjL5JAmAaFQkGRyIalYl9PN4DSNLVyKyJs=;
	h=To:Subject:From:Date:From;
	b=I0aOpNil1ab7RPsTWmtfW/oGPIftUlcv9mF5/BX66EEVGTTgiN1/OEGSzIoPP07MJ
	 8lVAGG4QmLJ/Daqbjuh+gRLDNX0S3AZLnSbHtjdSoZiK7kg2fsBnfzsIzCKtaVa30+
	 A4LSe0nce+kcZBysV6Tfghs1S2I/2mKFE+6X7k2m04g3do8GcXYT4bwppjvKOooyVi
	 nZCiCoul8puTeDHsYBygugeT4oGib51XfxIvPL5Hnzb2egxssFXcTJbxa1kMeyTbkF
	 d19RvaSOMCzztRU4FNA/xZ9CkJKXCq6ONML3ceSx4Q8tNGTEyLzQXOng4LxL6d2tWl
	 NM2nWg87QqSKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8D360C48286
	for <ddprobe@lists.linux.dev>; Sun,  4 Feb 2024 08:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170703469653.28933.14852900934996969326.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ac60126890823336536c468a38da3f442892e2f452900de94c524a159f577f07
Date: Sun, 04 Feb 2024 08:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707034696
