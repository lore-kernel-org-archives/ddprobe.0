Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C2602C0F68
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 05:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767333234; cv=none; b=XsUWtkYWc4EKHIOEtTlz0QZawYSc8y6mAP6gns5NDBSL5BS7iaPB3s3iFzySqTxmmnzOCukIaidwaCTjdaDX9NPbc4+FRSrd0hCAWfXaZX/Wi2PZDww4Q+m9SGufDKwlKpYYiChPAYTppLRil0QNHyzFEYZUhwyuZjf9aNfmtnw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767333234; c=relaxed/simple;
	bh=bqgmkH7z59BxrNMV9tqcjCKpyXI6tHBxEhy21G+UP0M=;
	h=To:Subject:From:Message-Id:Date; b=ABeEk2+BLVyclRjgw+feTKP5kDqpq1Op8p0LSlUqJjCNZmmk6KsPc8YPMCWFOkeH4VAjLBD/fACdiVAxhE8vSMiFdHqbqS9Y+GisYZvx9NRcp4kwfQRwGpxdjEDO0D+GsWDq4C2kQFqsDlotOujCxBSLTiHo4mHIq63e76Pwl0o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Jxf7qdFG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Jxf7qdFG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AABCBC116B1
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 05:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767333233;
	bh=bqgmkH7z59BxrNMV9tqcjCKpyXI6tHBxEhy21G+UP0M=;
	h=To:Subject:From:Date:From;
	b=Jxf7qdFG5xdhaIPYdiqWWkedkHJnMhGMYBBV20VM/OLlJa496j9iQOCqVmJXp5ftt
	 nxMXuPn4RALGhfbC45XRZGTG5GmabgY1m3dNSLZeNaYvaDFhXZLFTsqvmQ+HbVZGZc
	 MYsESrdHEAmpOtovxoO8kDEIRcVjBGgvfqFRr+1UnH/HIDeJCCJVPbdzNXsucWhAFE
	 E9i+lErwYTKoJ0V/JzqHrN2LJCdSsQQChPZOJhPYMmQTWowwH/VOmPIKs2/FLb4pjY
	 kcZm9jbVTJqNqz4GLd5QUXFvJmfrbfQ1DNJe8QOYS4aTPyYwK7DdJ5sEgc2BG8rj9x
	 4LuYRXNAEmAvQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98038EEB57A
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 05:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176733323359.23858.8225506328037290573.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 68cc084fb27426998596ea05e03c1faeb9b8b813dd14bddf3298f72406d790d7
Date: Fri, 02 Jan 2026 05:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767333233
