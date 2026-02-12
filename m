Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D2AA415CD74
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 03:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770868493; cv=none; b=Ud9SZe1Ok4joPpCvkMprEGOFciKsomw53DsmCX6io4lHcQUNN9TNfNbQNzacBRCAx4r/iOAY07ESNdpQB3jgPigm9FJf4CKJsSSNn/FGswhFfmOzbi12EKFDznuO7mVDAmySbgy4v2AzMSab+rurjRUNI4faP1Llpw79jdRKFSg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770868493; c=relaxed/simple;
	bh=KpERORcb40Ly41Nj3LH7NeoVMQtNEOJ30whxg336Dxg=;
	h=To:Subject:From:Message-Id:Date; b=ovlNKGrBQw7QrMHD9eiyNeZEifhmFmczZ7Qisw8slA9yq7bLMV/xq3feFtNZC0uyOlO88+Pu10XA2deEIAnjAGnlkj5UjXrAMz4+BrCFf/oe7HRN5Hv5Y7Hx2YuGGrsz0HI9FoB+szjTXJD+vDJXdir0Glb3DrPRZX1CLnSIz50=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pAXMETvW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pAXMETvW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6FFAC19424
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 03:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770868493;
	bh=KpERORcb40Ly41Nj3LH7NeoVMQtNEOJ30whxg336Dxg=;
	h=To:Subject:From:Date:From;
	b=pAXMETvWS4WEBSwPZdJMU8EkjyuAcKErMuabQnIAksWwuZ2xJfJ9jQvFJCNy+k6Kh
	 xrSr8Hl99Q2MvMsIzNlWHO5/hBT0aGo83IH94bYUcHTHdG3ywkmIzzlkiUte0QlO/V
	 PvXh4SWrt30/aqQ9fecZwfRCSXcNn1mJRQcti14sNRiadfsMMx2U+/Qa3vUo4yTEyZ
	 5/odlfv1HN8L3E4BI4738sWn6aEbnR+fmRbqhgaSAd4iBMiusMozyf0VMe6ZX6KXrP
	 EUdkD1dWfQDBxqr7paDSoIhecZrEsPYrChOSkG61t8i8+KWp+IYYPYXJXhALtZD/cK
	 A+Gi32Rk80/wA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A602DEDF025
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 03:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177086849366.842.12782874849061001802.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 159415bb845a32afaaa8dbb55e6f07be1d37d85a92fa303c9039a9afb12716d3
Date: Thu, 12 Feb 2026 03:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770868493
