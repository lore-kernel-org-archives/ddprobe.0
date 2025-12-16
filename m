Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1873128D82A
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 19:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765914834; cv=none; b=Ex1K4LldTHG51qCHc10WPsIA0Lh+uDBwhSZbhzCXg4PtlK3RCl1ArA8RbMFqn2VgMKHU/J6vikQ+i4IXo1dqnDk8jAGEI2qutuBmfuCKgFBkgAFmIFyXgEEcoZ9p+bVFbb8DS4vxbYssrAO5t+Z8/rfi3VpImw/J3h92ixL8FKU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765914834; c=relaxed/simple;
	bh=ie2+7xp1+pOapT2SI+qnGD6i+/v/DM2bHbCf2CrDp7A=;
	h=To:Subject:From:Message-Id:Date; b=h2n7P8575vHhVWZUtCHFPBUNpFOoJpiBXR7NjSp5EC3rLYd6WPrUjD+1HJBtVrZw7qazDMS8+hWZe/lnynjqeXTLb3GeyGEo+OXNea85r3l4/+eX2Wbdipt1oqV0NQTzHAaLHFLx5XUriM71ihqYuXQ7oatyKmqVbB9trq7j/dQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=stq2SQ/Y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="stq2SQ/Y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2D75C4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 19:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765914833;
	bh=ie2+7xp1+pOapT2SI+qnGD6i+/v/DM2bHbCf2CrDp7A=;
	h=To:Subject:From:Date:From;
	b=stq2SQ/YfdAozb3lf8a/+G2rFMF/Zpr1+eYzMNTTBmofHa//9mmTmvTubFEjQHyfH
	 SHaKijwbVXJ/7m4PWpSFOOCv/+aet8Gpct4C5P3o6ExNEMe/sLVCf62B93N6oU4rvZ
	 kNfn7Y0xKIEFQdloybH9LNfz87vCyWK84DKebJutD9ZufPfkH0dVj+fyG2zlyLh/rW
	 oaRW+ULbasPxlBJiY53rC+/68BInWWStO4brZcRoFbfBuOV1IEDVwl9KPZSoRwCqFp
	 J3nGbZXfdlB9z7PApZDdipAlWrJijCV/OjAHJzaVMq3Tvj1kyjgu021H5R9iDWfVd+
	 R/JWv5QqpGpQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91D6FD637A1
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 19:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176591483358.584.1599621341215919821.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a02be9043a515edbc30bb8418c0b740010b62eac845d8c75192b5ed8d5d9d1fb
Date: Tue, 16 Dec 2025 19:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765914833
