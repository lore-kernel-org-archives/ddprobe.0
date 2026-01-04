Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 172039443
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 04:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767501834; cv=none; b=QuJs3rr3E2FgMrTtuVug35Mo47boZr7m34WRquVJODlcz/si0/SyJDUR22zMURXGxxXezDnKrOqx0LbeeJaJuFJBP7rKNWx6VLBojYiBPJuYoomKG9V80p7NvXI5j4n7v1bwsenKnTJZH28KNsV2S+YHU0EqLFm129E40M+xkVA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767501834; c=relaxed/simple;
	bh=1FrITimJEHOfZuSziGcb2KNH+CipH80pL/iDFzqjFfI=;
	h=To:Subject:From:Message-Id:Date; b=qbG4Xld44EuN9sma3oO2jAy2BmjPOILQ3xLMocNYKGX6mt7o3Ry1bQkt8osnGom8KqqPQSldxil8WDEYhH784dSNmlCOnPf9VTfvk00RpYZoF+SEtgebhqKpIgkNPACQi3ZISl0vbr/omYmDgO2//uol5thZ6mpE4in2OyKHLyA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WFY8cOhx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WFY8cOhx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A52F1C4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 04:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767501833;
	bh=1FrITimJEHOfZuSziGcb2KNH+CipH80pL/iDFzqjFfI=;
	h=To:Subject:From:Date:From;
	b=WFY8cOhxNUWyYulpYx5A+xxaxK7iIUMxokBiRrO1mLrhnEqYt+cc9pHzxIJlZwgcL
	 Rl6y+KmSwBkFzYE/u+K5TFoGkFZufsscNgwm6Tl1QqELqb18wX1cdnNdcFqpPss38h
	 XipFVHB4oY5THGenOEPJtCYcdW48Iy0P1LkekyK2dLCNNkT98XK77owqPWXQqjF8kB
	 2eGK1Xi6Q0MmvU28VOpvNsgQ+BtB3f17/r5mzzsPkYnu0JECt5x/kcLkvudCVSqnnF
	 tdusaA5rUhsMil4d2+dq4/R0QETcngPdAaQnu9+cnEg8VZquFcwjPdiPq4Z4n5teNv
	 /4HLMD1WP3Gkg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92326C2A069
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 04:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176750183358.20553.13201289935260713143.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6d416e1e988abdfe43db70383e722dcb6edbd224052b156d9f881959effa0c8c
Date: Sun, 04 Jan 2026 04:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767501833
