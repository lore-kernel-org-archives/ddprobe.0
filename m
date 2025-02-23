Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59E9B8C11
	for <ddprobe@lists.linux.dev>; Sun, 23 Feb 2025 16:58:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740329934; cv=none; b=FbB5iulvWgibWMz+6Js2oZzkdCueuzs03u1HsXSv71szaTaIV9Eh2HAmJb+PLUELz/foVbpbIP9oxkbSdcV08Htm6FMJvYU0rmsVHbotvHygx6pazYMCSIZaNdX3ot2XlBJo5dNalCwFjg7Fjid52mgUZI5ecvCowdJFiPOKDPM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740329934; c=relaxed/simple;
	bh=6Xyt1BWsa5zpz1HJUixpBXE26d7gO1jI9rtVCA0gRW0=;
	h=To:Subject:From:Message-Id:Date; b=sgYlIgbrSNe79qQZx7+dfaKsq5XHSVDAdADdP2cfkz8rz+UWWEbFdBfHm6WdAOs8Ukv4TFiJ4hgqBAZRqDbZa3gSf4gFHNWPz+DVteMuK/0fEHs0PdTBa4GeDlW60Wqw2vLths0tnCgyb1zUX0qNYeecmeZqMbWKlql8ThJnMfs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gHUKEMo0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gHUKEMo0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0340C4CEDD
	for <ddprobe@lists.linux.dev>; Sun, 23 Feb 2025 16:58:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740329933;
	bh=6Xyt1BWsa5zpz1HJUixpBXE26d7gO1jI9rtVCA0gRW0=;
	h=To:Subject:From:Date:From;
	b=gHUKEMo0rhZkJn+uC4jN4XvEkRBB0ypEb0d0RChBZ3Q5No/0EYeGlGo5J8BSSN9pg
	 hUHk8VKqslnYJw28Afxuv/B36Lv0kwvEZ+FInv6yGLhNRN80Pa7dbJFMXPRsUYZzsz
	 77VLhAOJo8RCB+zr0YJNMtIldtNjPq+g8JwoRd051i72/61wdrUo0OWwRnZ5dv3+TG
	 +v0Ek2q7KjzuqIBwQik/Ou0SsA0ms1Sk9KBafORZKcT2AzQf+B0LF8grLPgVUBclpN
	 ggq0IhsZ9Xsi9g8WVK5GiTikqPqeqGTAIC6e/cYkwrkA8M3w1gz0OZspZ7/w3PNGxW
	 wqynSod83b+Yw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99629C021B3
	for <ddprobe@lists.linux.dev>; Sun, 23 Feb 2025 16:58:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174032993361.16133.9218503873980970829.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 73442c2895b4a642ed6379a6988bc8a549f2d2137382dd112dfd16a9b76e50d4
Date: Sun, 23 Feb 2025 16:58:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740329933
