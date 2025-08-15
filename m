Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D87886334
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 18:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755283195; cv=none; b=WflHI6u6uzOlFcpxPMyBP48LN1S+hY8lu4gireZINA0snH5CIaQMF/yq5o5E96YuWFRcahRX+wriATrvBsYFfP2Bkkidq74uivKO5z3/am/XBNWeJWI8htzQi1/JEaVpOApbUjdEYwoCAmWhAvNWrYp4pGN1EVLB5MU8Qx4uHa8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755283195; c=relaxed/simple;
	bh=3iAKd8u+I0RPBiiwJTyqzg3RvNDdUx4wWcYEcJDmsd0=;
	h=To:Subject:From:Message-Id:Date; b=tBQQA63wZGPWCNLr/BUVwAP5Q31OTeOdf8mLJSQNUQJbLzMyIRjZ2AK1ciJMA84O5+ona+YS/OvQYkoW4HQWzGtBSeG8nyprZCrizXzRFYN7Pp0LqX2vNtxJDt0CYrZrlRvi4S5/u0oCJZvaAGZS/XIbwW80q8n495rpMpBC14w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TSHEBRV2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TSHEBRV2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CEC7C4CEEB
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 18:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755283193;
	bh=3iAKd8u+I0RPBiiwJTyqzg3RvNDdUx4wWcYEcJDmsd0=;
	h=To:Subject:From:Date:From;
	b=TSHEBRV2K0Kr8pXdleMMsaF41WKVi4m3KILo+mUAouWLGz0B79fwS6dUjxFP16F8e
	 hJDiZVhKXZt0h42LwTnmnYeJh3c8Wq1zNz8tCtpe8WGl9T0vASL6WuxHlPaZrLJk57
	 H7vCf/N1+RFbcFOm4+hQ3Tk1lpEqU0yNMjScYrQRxNK8Jsv0AO1B7XdNw3sYXii2DN
	 6ywNVvzOKdMrMX/mN/XWWzNklHH1Vcel00iz608rm0jIkso0LB1JGcWECxmE8S/YyZ
	 C9SQACcJRttY7YpKW/izTjlIFUHVOoEcZsMKA4Ee1r6/7pNmvMhTbPBpZIBKhg/xLh
	 6J4YaDC4KwbEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F342CA0EE4
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 18:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175528319357.32530.13423988941264574500.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 37eb00fccdd961f0a2672c5d731064f589d9a032eaf36c705065011c5def5b19
Date: Fri, 15 Aug 2025 18:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755283193
