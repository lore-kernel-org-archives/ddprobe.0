Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 044913064BF
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 12:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757681394; cv=none; b=kbYY2JHn9u/8dYOrAWLXNXjFHQPqHzEcdOJe7DFx2QFXWvlcHBT9G557IsVYilBB/1H/7OfBE3VakYWPUnXRccvouXIxk9xAVxwYvCJqdU6/Xv2Zcxhop5PhMnhmbO+Xt6l+nwLbAuWbEqLGOZcIKeCdpzjZ0A9yE7jJPp3BV1c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757681394; c=relaxed/simple;
	bh=QDXiBxgR4O7p+1Y9FCZEBe5v3oAPpI/Sm7hlSVIskyg=;
	h=To:Subject:From:Message-Id:Date; b=XVZCGO9Fxq0zHV75Umfez1YqMdcBq7yXjdEQXHQlrV6sMiOB1IIQI3qPO5bKmHld5ooH9+GDTEKnf+XKRdtFCnXsMh1J0BV9zZpqAwAB1w/sxgfWKknW5m4Wsk1o8wEPjMyG4wFGbXxyw/7yj5T2Ts69NRuHy/+yXjT65ZC+cNY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eWN+Itdk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eWN+Itdk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EF05C4CEF4
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 12:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757681393;
	bh=QDXiBxgR4O7p+1Y9FCZEBe5v3oAPpI/Sm7hlSVIskyg=;
	h=To:Subject:From:Date:From;
	b=eWN+ItdkbXNzy5VbYyvONiIlKyt068W5McYV2mYCGlMbdQR1MxUl4P8cL694J6Gtf
	 TWXvZ2J4t/z0A/1HNzE/hBtWAPzW3xA9AcyECsfDCoAGG4yQA8WL+FGrIT7SMigKRY
	 X1EDdlGG2qRAXnbFYmWFHB9hYIQHAtIkeV5g1Tbi0S1028358Q9l6ETASbnCI9D0ln
	 UUU8xNut9lEoO9PDHVX7mKzdpEId1u/W1erMISBo8jv0ZIJioEx0V8ITFSI9ao5xx7
	 cY551hGJ0wn66VahB6XBx+CibOM1ikvbGxWEmJHB4uJ14mqiAAj/7skSdSRUP/kFAy
	 UUcCV36+eTZXA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F2C1CA101F
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 12:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175768139357.3753.16817903971559225686.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 49b5c02389314fa3fec0235f2ae20d042d470835edb932e2fb1c85b36b42d388
Date: Fri, 12 Sep 2025 12:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757681393
