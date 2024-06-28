Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A93F1BF37
	for <ddprobe@lists.linux.dev>; Fri, 28 Jun 2024 03:04:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719543863; cv=none; b=FCvY9lJ9jejiE3OTPo1aUaXm9+ub+QSzjEXnpRTSTSSlRqWZkoC/VN6l2+RVdtbPlabEvjdqSHCWH7OVlMswmiFE51147fSWEcJ8nl2F1o32eyybT5cow51/94KRBYRAaY0r8yM9+d0JLfNMNd4YAgyXBZt8SmwtNk0ljm1Cq+0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719543863; c=relaxed/simple;
	bh=Z3ia0BLtMxSgMGeoTS3Gwk4L2oqehPhAJmtyWo1kdd0=;
	h=To:Subject:From:Message-Id:Date; b=lP4gdHYDtCPBTxRXL90z368DCoRSTh1ihUPwSzsWumkquVMkS5W7glMFKBEpBpy2B3mIyJvm9JBzu7/ZgaIYSTJX5OwJ3UJKv7P7tNts+1o8mX77m2LJPSk/Az41ZdrNZLT1nhbgutQ0Q1hip14Ph4DXDV+s6SbOocJsKGZozI8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NMD/c6Lg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NMD/c6Lg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E58C4C4AF07
	for <ddprobe@lists.linux.dev>; Fri, 28 Jun 2024 03:04:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719543862;
	bh=Z3ia0BLtMxSgMGeoTS3Gwk4L2oqehPhAJmtyWo1kdd0=;
	h=To:Subject:From:Date:From;
	b=NMD/c6LguW+kpYbSdde53g6vj9hjU4xLVl2bGXaWQCB2m2CQYRv1InCJoPN3uf/AE
	 JBNVp4q4PW5DBVlt/DMA+issc99QtRkTNo2abX9E3VLcpnKv4NwxxEie9Vuk3DuvzE
	 2ZgkRK5tKbtgY4yS4xq+cHUna5tHwicLCC9OXRbuFSzhZjTJhk7h95Ez1AWoYpxBya
	 hp8nosRMRRISvgZc8EiTd8CY2OrHjQui+wkScTqnMY0nOlXNqlP4ySjcaO1QDtYY2C
	 R7Bva+JuE8koPgRFQS86mOHNAY0SBq2ASv+MMRxnLYe1eUc5VZ8qYg54pww0kILOyY
	 F6gTOCjDF6dFg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CF033C2BD09
	for <ddprobe@lists.linux.dev>; Fri, 28 Jun 2024 03:04:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171954386279.30065.7183270282522199296.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 768cf3631814e15cc2a9f1a5a1176e935cc27f38a69543677daff867bf07f94d
Date: Fri, 28 Jun 2024 03:04:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719543862
