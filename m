Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BC4F35AADD
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 19:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756238394; cv=none; b=txcfBsX4cMt1Rwguiq7uRKHkFBWd/pBUVlCTjgGVQEG8a9FjNV8jrYGj5ph+7VBpMq7INHA57IHTI/sevNoNjsKQZQf78obven5TR80JtrtOsyl2Kb4Dp8/Kc4msY+OaUg+1AThNN0ZEzlwYtXhiTldZEbDqxkCMeRyYWYtk+6M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756238394; c=relaxed/simple;
	bh=l/l4dcuEnvbuLCE59mJlms9zAntp957bToKjC1Ci5+0=;
	h=To:Subject:From:Message-Id:Date; b=GqIuhK8m2pQ6i8IMTnpJ3Nnh+YR/Y7DYVRXsq5dvLWaC4a9NmsiyBQRky/OgC67wys/1dZ1mU+JsZgLQw/q2FlndJJAiXnClAm0OM+kYKBZgXLfGOG/wcF+DyxN6Soij7hpHAekYIWGWD48pOv0wF4Gi6H1uVK63AtwGv1NQINM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qb8/zuXl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qb8/zuXl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3655C4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 19:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756238393;
	bh=l/l4dcuEnvbuLCE59mJlms9zAntp957bToKjC1Ci5+0=;
	h=To:Subject:From:Date:From;
	b=qb8/zuXleURpkyt9e6tl3SaThVgK/WnL1Y+7z6AzJVsxlilbgrMIjcpUplwNDgFkJ
	 3pHbCVuK+H7ezprDtTWVhAbpI+yGNE4HB5gbbLIY8HBjBWSrmPQIsGadoBH17hadJ4
	 NRnCO1P3n2t+fyfdA4blXd/+fHDjNwZlFXijsZlwZx0UJLKZJmjJ772rSx0IE69sRL
	 JpGtuhBWZzv6TLH2m8gffVBzK10DJHy7GuI2rg2u1wxC7GFzTk3G+3BV4VCEOzTup8
	 A/L0Nz8MK0XxRwQAkCAjzQgdAQAX7UWvEoor7O4i5f4XI6mU2ClFrK/T0QxV9wLdOX
	 GO6YXE3g0BO+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FC77CA0FE9
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 19:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175623839358.20578.4901018494215060400.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 93843cbc632cee00561bae2f4a362c48003a448b8a859ef94acf475801e7b121
Date: Tue, 26 Aug 2025 19:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756238393
