Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 377B418E3F
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 00:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762994394; cv=none; b=B9P3Xl8AKzbvexm4gP2UW0n/+bYHs0WnwrG0UY4BMGvLpWAaYbHAOgXddZqernQ+ci0gjFGWeCJwJ5q9YqY/NCePOgxiZpkpjh7L8AfmFfu6HPoXpF1Gij7hUf1g19OOGwBWaFrd/dq9CYsq+cSEoQL019ZqsJAJeF/tYvSUtus=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762994394; c=relaxed/simple;
	bh=32Oy72MMOFWsNNIhDmkNQ/m0ZTycpB92p8m4UYOdVvo=;
	h=To:Subject:From:Message-Id:Date; b=EONIfHW8npiEnEdIAVANbhN2A0WpMJkzxBIV3vvn+R6zgPV0Kdv4kl3awvNE4VpbYyjSSBOakWJWtMspWVn7LE3a/kAMAvuVGxGAoaQH6ODd3J1HhI1sdbATR9isc8+1OJSAZVhxI0VT08sGaIuoHFb8WPbVa61AFmygzyU38qg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pKv8MOh/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pKv8MOh/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8E1CC113D0
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 00:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762994393;
	bh=32Oy72MMOFWsNNIhDmkNQ/m0ZTycpB92p8m4UYOdVvo=;
	h=To:Subject:From:Date:From;
	b=pKv8MOh/z77c6Pw6fhy4QnhcmXt2n3aodFImtrdkaliBrRTyaVS/23hggCj9fr5+T
	 SGM/uYk53Phd6RIjFw64RXoRqdqHnEBzJd4Qj83+rZGpn56luGMgPnFGtTS8aGQxpn
	 LkYhoDgzioIbL+ya7kZbCwe+f4L5uOk0Tc03J4MDV7sXIj82vs5cZ0utg2SiDUhGLh
	 eeTHLyR6z5fcTcxva20ntuYCvSEozRpF3GwKa8OxE9i6l9RNbqpJ91gQ/KrcK4YVFM
	 kFhbQj6EpFTDkY2vngX3gjOQ207lSLQ2dhcLaMhIq3m0STYYQRzYdPP2chHsL+YBKg
	 yxkiSK50KuByg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2E8ECD4F24
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 00:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176299439364.16818.4610366876461444946.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3daa8c98996d5c889f0355bb3086e70eaa46497283cf94e7dd60ea33c7a10a3a
Date: Thu, 13 Nov 2025 00:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762994393
