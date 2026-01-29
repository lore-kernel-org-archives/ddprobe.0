Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 049DA35B135
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 21:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769721234; cv=none; b=RjVNZhPJA0fI99/QtqqBzgS1b+cJKz1aUKA9wVn/WyR2AhaiVwfUtgnBo9CGjG3FtFDdalfRLRCUJExpjuUYz/A5VBA6UFXqwqx0IeeL53/wrIG/CN9i8fLFiyXh0LGQz1zAh3De3AQJWie4lVG++IEPNq5c+uBG688fKd6VoyY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769721234; c=relaxed/simple;
	bh=PrS4k1EAaszsyVRGyFHs5xwEAeQQh4fL3EcnbUZJBx8=;
	h=To:Subject:From:Message-Id:Date; b=VaLck795lZ3Xsh4bFBhH6thmpyy2p5rvTcmrb6587zud3L6QLQ2mdXzeV2mGat2U+Lt0NzSzImWfkma1BfDOHzvq9Xu2XIUS2tuDNQ7VOlNnNkTmbNxuAU0kfFqqiJzTzhsNVgXoQhsM8kLrbr9dMV/O9kTCHouYJbbMJqOoMpU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gb7w7eXJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gb7w7eXJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1474C16AAE
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 21:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769721233;
	bh=PrS4k1EAaszsyVRGyFHs5xwEAeQQh4fL3EcnbUZJBx8=;
	h=To:Subject:From:Date:From;
	b=gb7w7eXJNhc72AKwQjQ0oiM33z6QEXV5OA6T8gicI8t8qKdZHjNQkTjMPhUgBPWAt
	 o5ZiyVY6kg2v3gxFL6hEz97UFoPOa+WN4Knhz2EdsgBhr9gEXexFnhhjqQglWvR9EU
	 30/DH5hCSwzDNVvEP2/+BKXivSOrTDrMDT4Rpm1JMiz2h1TUxOc7Fvadv6W6Oaus+Y
	 pPA0F+gi76p0uCfH7sgGJyTQwxAH0iUtd2SNzHIjQDLWz7/zCAiTRqiE5jjE2qQRXh
	 veLr0ldJoxhAp5JPVdRlclVcpHw0CsUapM7HQVX6Tr1QTf0cazAIqapyvJcbFyRbPB
	 9jBXWgKoqYNsA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FC04D73E8C
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 21:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176972123358.6855.6579761364021598986.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fdc12e9b3dd9b3b1c3bba21971dddcc353a0a588b3c4997f4bee62cbea2fcf89
Date: Thu, 29 Jan 2026 21:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769721233
