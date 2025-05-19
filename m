Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38D121F2BB8
	for <ddprobe@lists.linux.dev>; Mon, 19 May 2025 19:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747684794; cv=none; b=oPzy8iGzrkFRazAy1s8ZeA8HOR835YZmk5mK8n+fi1lJdb09gmpyOhwOurZ/yWut8pnoey4mbvBZC3RkEjaKIRPqwBA8Y9vRcw+cjGA+fglyfSfF7vMuhSlBaVNhgyNWQssgsOjivBl/E//Ku5aOVn1QBCTfbe0v0mFpbvlKr8A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747684794; c=relaxed/simple;
	bh=KFto2DssUxfBWF0neZB/+v/jnw5uKNT5c05Fnprohoc=;
	h=To:Subject:From:Message-Id:Date; b=WDpnbANoibBZwnHdJMW6wE5BGDQW2IOshz4yGXH6xz89bfUmUYaKImSwwKEDmg8SENu6M5Xx2MxIeGCilkO8BJbeGyBGmv8C58+2/cORFLBL30WwZ+fOFdaPO1nddLa8AV4Xe9bDIEZGWwJmXxPOIEAAv03hLYd6jx2kd8IhDLk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SKGqw+mI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SKGqw+mI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A66D9C4CEE4
	for <ddprobe@lists.linux.dev>; Mon, 19 May 2025 19:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747684793;
	bh=KFto2DssUxfBWF0neZB/+v/jnw5uKNT5c05Fnprohoc=;
	h=To:Subject:From:Date:From;
	b=SKGqw+mIFfXt2pOgtS09YAmHL7rRueuHKBX8NMs1lNV5bWVvQfOQMoRqWPGrNJk+c
	 WCoND58JIfQstlczal+FHA8duny2+/g4uJCAH7Hi1JyyyQMSFiQtP+ivjUX2GN9ZPR
	 oiM7e3WFngkb+Ay82qFh7ODnyIzJurxo6T7mpG6lgOyyBI0Z4BmFCywMP3Xs13NOru
	 lLJfQAMO6szr0ckeHkOkKIP+AduhkTqlmC+Zz7gjIBo9/xNGz9X4CDudUSkU/w/ojQ
	 lTAPvYPu9P/2D6x52nQhAMIhAhJvb5O4E1iU+BdFwb2fZda7DE6id4ty5HNtW7R525
	 O2ljcc+oFpwKA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 929DFC2D0CD
	for <ddprobe@lists.linux.dev>; Mon, 19 May 2025 19:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174768479358.15122.3149669190335781251.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b0b79f2902501ad632bc6bd36624a47460e4b29a2d3c2f77b7da53d5830d7d7a
Date: Mon, 19 May 2025 19:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747684793
