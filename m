Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D9799443
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 03:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764386574; cv=none; b=RNATvyZcxixJGA3H6VxS6gd9VtrSBpbd2cXET8eKQpapgOioDYNuhUb4TS4gRWnr1bcxMe2F3q6E6JiQa3bcAcz4N9BkTj9M4FbduFWWeOCXwEjHtJdAyA7JqLBYuQ3foTn/IUPadrv3OfWlro0hb99ZdJf+bpWD/Fw4LPaf7vA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764386574; c=relaxed/simple;
	bh=uxLv0K6sCL6wyaY9PCAokDNOVIPkdWQfNci0EYtrx6I=;
	h=To:Subject:From:Message-Id:Date; b=ETrdwRL3X1MXNKIRQDLBTEmlJodq+6f/2BzEKLK4zHjBlWYQcjiTTEmjkuKo2NNx0qGzGQhi7CNiudJ2MTcc81dxVdYWP11k829GnfJeVLnTC5E0URiqtmMFPh120HRtEkj0O1P8m1L+EXQtjeyKczFDcyPP2OCiVUpWau7thcE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X8zcotyI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X8zcotyI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1E82C4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 03:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764386573;
	bh=uxLv0K6sCL6wyaY9PCAokDNOVIPkdWQfNci0EYtrx6I=;
	h=To:Subject:From:Date:From;
	b=X8zcotyILwUaGAnKZmKeATJz7EfoNhsY9/Zb49Y225OeJqhW0uKBjE9ukOEqTUsJn
	 x5TxIF+INRoxnat0JWlWlXBIbUAAwu1lxiJ8t8Z4X4jU3EsvMDaXyu0+O4oHcD0f66
	 5SBEZHSQuJr37KiA3kv++cjVp4vrayD3Of7neFaEV6HX+l2lbch5bTPXud3ZScBuqI
	 incd7aTdwbB+4yk4UmgvHDmY38muZlqwdRSewDXT13iXRBpYgPnrvyye494oJYy7dl
	 rxYsmAXYFsrPC88/hHKH4CHCXFRlJPdxDj5wlOHj6PeD/5xpGjlyrXOwSqSMU09GCJ
	 gUCE6ry9Mwjag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9268CFD376
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 03:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176438657365.23336.9853636766132995544.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fdb867ac74bf21625af645f4e4a15a113fece0c3c329a4f87d67f64f87b19ff3
Date: Sat, 29 Nov 2025 03:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764386573
