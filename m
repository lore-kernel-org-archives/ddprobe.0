Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D3FA1DE3C0
	for <ddprobe@lists.linux.dev>; Sat,  1 Mar 2025 17:58:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740851934; cv=none; b=WOo4t2LFtHeGIL7nXDfA0ALIl+/CSXIwwHWqF77LvgsYnxPbZ0ZInlTz7R23jB0TP6CGkMYIsQD7bRXI85Pd4U7t/EKXf7ML3m7c1HKfP+c31WuGgJ/8yIIzJeEygoWcIfgNE9Sc+TVbv+UybcSZ8K/pOppsibA2OK4BS6H0Fo0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740851934; c=relaxed/simple;
	bh=Xa/WODyfC1bvSPeR5l7lRBLBrYXxvi0w24mXXSjb1DE=;
	h=To:Subject:From:Message-Id:Date; b=WcROVajbi0dG+YkZ+unSYwg6oya6N0LQq03edJnd4OmEqYD9LH7zGdxcK/q2OVCG3pAVlMRp1TOXY9932aE/tf+FJnFP8sTm8Fy+cIrBkUsMt8+QAUQmJGkhwDKwKr10uRlZb3BB0Tr8F6eXIME0dOmZ6uiygnqrRpE6F25mPFE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SAPRYhgg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SAPRYhgg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0552C4CEDD
	for <ddprobe@lists.linux.dev>; Sat,  1 Mar 2025 17:58:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740851933;
	bh=Xa/WODyfC1bvSPeR5l7lRBLBrYXxvi0w24mXXSjb1DE=;
	h=To:Subject:From:Date:From;
	b=SAPRYhggYcUcLzSCVyP5enfle9gRJbSzTZuOm0ajcOlIyMuSpqKXldCe4k+IrxBVF
	 gI4EzZ2mDCsMfffSOY0QPCsV/K5YRna6jyrVSN8tIKH0x/HYb1rc0r3OXugb2zEu+e
	 WKDJpVqiw2ZmETNRWOypaKtkAiIxV9SeNXafc/k+BDwvBdavqoEvwXMLojBq5R7AAe
	 2aIlGt/Sy+v3BwZoQT+UgJqUI7OIKOd5XobEgUOO6tWUsPFPubqgxIv5Rsq2ZXGpDV
	 nOwC2n62VrvNiWt6Q3LhCwMbMBTyjjLAhe4Ni/QYXnlSaJZxS1HS12clDWbFku+4Tm
	 i7YssilveFGQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99925C021B8
	for <ddprobe@lists.linux.dev>; Sat,  1 Mar 2025 17:58:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174085193360.31731.8458189659942970376.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 22b9e7664e83a2c68966f82acec333a3986fba57aa7de047050424925c218a0e
Date: Sat, 01 Mar 2025 17:58:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740851933
