Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E3C619047F
	for <ddprobe@lists.linux.dev>; Thu,  6 Mar 2025 16:48:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741279734; cv=none; b=CX+DNny7q000NruAuPl4AiEm/3jsC5V8e0MRaVUCq2yKXCy2AnBtzhMzI22e9KW+O43JBq1pJJdkEsVG6hV8UjMPo3IXcBRPAP+PMkVGsE09BrKRKvnDrBz1AGjpqHqvT9PvppuwGjjoC2E311QJTnzZSEGSXjQGubtoIf29Gyw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741279734; c=relaxed/simple;
	bh=A47Q2HrffUhuzeojGQLQcdER72kmyHMKWWL2yitkNnY=;
	h=To:Subject:From:Message-Id:Date; b=CEGzBmzfSpFWfhmxptF1o8lnL1OaQ7n73zJnAN5kukPbVBHfm0zanPLTBfmfT22aEmQnFy0zs3dUd/0nmdxyNGWBJjGl9nj6lJpJDfnL/fsJl0c46kN6fKsHjqISZOTR40oRqTY3aWUfFwDTKB+4kjgvkkZ3r5+3XfAkm8csGPQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iyijkdmj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iyijkdmj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6807C4CEE4
	for <ddprobe@lists.linux.dev>; Thu,  6 Mar 2025 16:48:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741279733;
	bh=A47Q2HrffUhuzeojGQLQcdER72kmyHMKWWL2yitkNnY=;
	h=To:Subject:From:Date:From;
	b=iyijkdmjK+sMaaeLQrqoQndZWuwYyiDWlazDQzDT7c9vFHtMGr1xdoHd0NIfIm/L6
	 KP2T7uMZ81vHPoaATp2DBuminjHilFulBiW42ra+9A6hvgsbuNCQ0R3FQr3BPvAKJw
	 oEmOtjx/QgqlNXNMRaIR5G4xfsW6ko0zdYcfbQSi5scxjk9PI/ZgpWqB5QKkpS/h+A
	 RhlyuIR3i8Lkvuj8FJ3RK0W2nFhvK+Q/MJtj4+3IdNF+O6yVu8xPtYiZWcRwkU0xdm
	 zF8zP6TeVLgzxLbqzHMpDEtAR8RUV7tK4gakNqSNSO20yxFC5Js2ltlb6lB9HbBT1E
	 +lPWa5Q9V1ENw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92D84C282D1
	for <ddprobe@lists.linux.dev>; Thu,  6 Mar 2025 16:48:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174127973358.20653.3386228598723672292.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4771eeda254a14c25bfd2c32efd4be19f310beeb3816b10616ae1307aa50f308
Date: Thu, 06 Mar 2025 16:48:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741279733
