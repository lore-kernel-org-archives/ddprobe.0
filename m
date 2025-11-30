Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24D4021A447
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 18:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764528174; cv=none; b=XXZqxJolC1Ydoc4ltR/XflxYloCwWz4xV3NWcAWMcf50hGbeAq+sA71UlMF1odRbEKgYj2Vm1WLsB4w0nWGS3anTTL3NWfZxoB33uFt9rHqR3HWhA5DtTh7kUHZKj0SgVpqx+fOwMKa923FlwlBQRtWh9TwTEUs1UlH7SPGqmtQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764528174; c=relaxed/simple;
	bh=Br3f3i5yKKGGAHr8ArJT1NtlIKFWsxfbGWQ2k+f2YSI=;
	h=To:Subject:From:Message-Id:Date; b=EO0ZoXj8JeoXbaD0sxVek8AO98wLIaCSom2+Nd3mY+9N9pgB/2/RpH8cxAVwCtLY+xcfCO59SWIRWjJ6631JcUFRT9UW/Jjsnw0rFC9CT2qprz4gbhZcnPZXAect/bxjwXdJuWLoCzP+hw2ki/cerclvWgkSxhbgaVsqdTz1zoA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g3XDVua2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g3XDVua2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6ECCC4CEF8
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 18:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764528173;
	bh=Br3f3i5yKKGGAHr8ArJT1NtlIKFWsxfbGWQ2k+f2YSI=;
	h=To:Subject:From:Date:From;
	b=g3XDVua2YuPVrSilwbt+rjEoui1mdpVLVRrm3qiQhk7s4s36MRywoEzMp6p3iB2WW
	 SpkgguvAQcUdtnwquatppfhiStXUF4Iu0CHP1FEAD6MVeBpc9cSd0fZrPCO7qErnWq
	 fckQWbdfHLPCFZl+Np7rsEIr3eNoZ/rdQW3TIV32WSjAkK9Qe/6LUEamiX6deck60r
	 sgI/bIxzL1pCSHctioUwS1uxvQAQpedRS2OaN+ydF/0lq9XmzQYxcsQ7DAwkwlY01w
	 F7Bds4J0VGQ2BBd1qxaaaN/aTQRoXgE8GJ0XM2Q15m1u/0iOVipcQf5OJ9Cb4Jyguw
	 dtj9CC04l+wKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94172D116F3
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 18:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176452817359.3063.128341017531418026.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 86299987b1fb6ce2fdba2d5afe4ec6653b0d941f9fa51a6f3af6749e4eb21a16
Date: Sun, 30 Nov 2025 18:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764528173
