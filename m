Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EDBD1A0BE1
	for <ddprobe@lists.linux.dev>; Sun, 13 Apr 2025 14:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744553394; cv=none; b=qHYb7uchlFu9Ig4gbMx+NbmIBv4+JZzfckc4nLi2ln5L7VgO1Xs47WVv2fYvved3nNLaNHBMsjN+5pRKKhLiorGuCe7pnSuQndlBiFYuT6baGwPJltgGQnDGWuQIIvHmXT8pHWInyJyBQCckXZS4OleHxBSYdtO1S8J12m/q2vw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744553394; c=relaxed/simple;
	bh=U3shHyHXiPxJqEDTYlWGLLLCz2QiKE8gtlZPpKr6gic=;
	h=To:Subject:From:Message-Id:Date; b=YuvGG0wLff6kr4OAv3GgSM+WhTwv7gnJB4gD/uWmgqN/cVNXjg296gUBquizyWjScPah7tnmu7irQuJT337Hm6HKcul9zPLvBldCxFNllsS8uvABkg9vSBnbBxmpo0cFXwv+MAwegPBBAsVzhOPzPkIqM+EARPqzruDXROfmM7s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eAf3WVsf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eAf3WVsf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1026C4CEDD
	for <ddprobe@lists.linux.dev>; Sun, 13 Apr 2025 14:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744553393;
	bh=U3shHyHXiPxJqEDTYlWGLLLCz2QiKE8gtlZPpKr6gic=;
	h=To:Subject:From:Date:From;
	b=eAf3WVsfK4WYDFc+vTDMDLFq5+mPrQfFR32RUc5DabPgI0HObXR+S4SpNakMtZzjj
	 +Fp2XFzMvk+Y85ACteLbyXogh16yaDHSpC2L8V7UFyfTmu1eGoTDUSF5ffjLeH82eu
	 heNHGTmsEsqicxeCB+jjVwGf94MCquhZ4da03O1p3rz23XFuyWqGCH7Sm+h1kXtGwP
	 u0iHvxujMDRa7vgBkIoiBbNap6FUpEQC3ixbp+0sCqIoVSCD1pFURc353tVdRe5XZ9
	 lt9Z+Xun0YkkIkCJ7QZNn+6FIW1Hif3kHvhRLBvF5+iM+FDcs5pVa1+N0TQSgL/xfQ
	 GpDXsBkbh2lUw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F20CC3601E
	for <ddprobe@lists.linux.dev>; Sun, 13 Apr 2025 14:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174455339357.6766.14473296432969510050.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d37974dcc990047dc4bbfdc9d4945205fdce8567a2922c125f18b2ee132e42a0
Date: Sun, 13 Apr 2025 14:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744553393
