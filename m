Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22B53239E89
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 12:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753966194; cv=none; b=NODhwdKr/kD7Jk1/F7GXAOxwTL4QSBCPgDItLZlfKvIJDUoEpa8ez67Nm1MkkbKG35LBBWAHQ7rshxY914mpTXRhbjd9/SqqVb5VlcY9cIZNxSP67DevACuMjYdJL//PFveAzF7biRSIePsrG0HA0/UuNdQLij883QF+tkl5APM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753966194; c=relaxed/simple;
	bh=K6l3qrgEgFMZ+hmv9VQwp3DndRo/YwM3bYypG7F28j0=;
	h=To:Subject:From:Message-Id:Date; b=pZ0jaFY1FeqECivQ7u4lF2ol1tzM60S0pficfajw/RdNjb4vqzges1FWMuvD0aaGPngOCJ2eseTtsHxjCNElMPowPUt4MbYWHRxu61udjt14kBwzOsg8+rsn1XrZ7xj1Bny7Vijyy14lDZyOlz+t8G9gbYWjf7tMXTbnv72UkXQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZUNzBls3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZUNzBls3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C0EFC4CEEF
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 12:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753966193;
	bh=K6l3qrgEgFMZ+hmv9VQwp3DndRo/YwM3bYypG7F28j0=;
	h=To:Subject:From:Date:From;
	b=ZUNzBls3pL0VSAF/e5VP7FD8XW/sQUlFheRKAT0b+ZKXpSh+AFGyRTLDmOYSRLiAY
	 iXddyc5r6S9OxAHDD2DpFq3NvgQbNvHTV7ylnaPIr3nYRp+J2ks9bGhTfzEwE1QxDO
	 rHQW+s5/amRMtuc/iLBIJDgak/Z2chPeFp9JYJzj9AC0miSRYJtUhUzoyVe7/j+fhx
	 LQ4Z0feC9pz+dUl/jUnb7z36xLP3FWOC+ROjXxjY4jOzI+KTgsD63EgFCFqIlBbRyU
	 Q9n3N1WZBzIkbCtDxg+pX2yChJ7S7BgLRPwu3P8C7CztLGDCZntQ4TwOyLh2XrUnAK
	 rjTSDLNPX0YUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F605C87FCA
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 12:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175396619357.28893.9462286494132278957.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6c5366fdbed1c008fb8ee0e5dfca6e423dcd7dc3c079149cfac9dde7176f489e
Date: Thu, 31 Jul 2025 12:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753966193
