Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 525EC38B7D4
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 19:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786735834; cv=none; b=Ioy7vokHRlptUYXSqQ9pRFg7aHkCnsyp5ITiK/gOxt0hiGK1V36qF5lQFQgMWABvgqy9iHYXEWp+3Ggs/WK557PFn6Y8GLgN+q7BNYFdW74lj1eFoduyTd6Q7MXThM/gh1lA7/yxdveG7dUpPj8UMzpeDK/PzntfusCgR93jLP8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786735834; c=relaxed/simple;
	bh=TUMqZfJb59UmMoZWS8m5O3MqWi6dEdymbJ7/03dwNMA=;
	h=To:Subject:From:Message-Id:Date; b=hhHLyjvq9KXKPqkIohKt+UNo9V2M4WJxRWhvbE4BMXRN/7lQIgnSUU3iT3grwtT5bFB0Y03Zt4/R0WG6zVC4Cbtu3f0eRKMPlVAJtVGN4SOKgdK6ranMhsmmMV03UneXYHmnhPBAF2dJ+pe9il4p8epUKe65/0ahnk86UxNG7JE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kLHTNByQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kLHTNByQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0761C2BCB3
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 19:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786735833;
	bh=TUMqZfJb59UmMoZWS8m5O3MqWi6dEdymbJ7/03dwNMA=;
	h=To:Subject:From:Date:From;
	b=kLHTNByQSP/BVNhXKYO4hGn+vmPujOKeGFDL5bEAG5gRoUMqEk1/cpB7a/NBn7aTQ
	 J8oWDPy1fT/VWm8LZwt5z9wkkFzfeD7RpId2nPAQ7q07tdbFeb4JHd0B6lbI7hgl6T
	 +jNExRxZ0MHjYTnJ8u9gSNoCzTaHKqAcUX4LZ3K9R+2cPiu9CIreaxbRfRe4cClgtK
	 IJJhyc+qatVMXhIXLhdbxGDFJvmyqk0VENcgxCsfmak3IjG6wkejq8r03j5UpGI1j9
	 iouC3iAouRQ/4oloK8+TF0S8QdlxHwWfOGkkwEMyC65WNJw56SMAwzj6Ds2rE/qfgQ
	 AgzbFYx9sgYqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB913C5B572
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 19:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178673583369.24206.5068825011085948867.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fbef70ccafe5b7b833137441c98afdd1c30b118deb12e508ba399dc795d4840e
Date: Fri, 14 Aug 2026 19:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786735833
