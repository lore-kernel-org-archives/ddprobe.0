Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 279AA243376
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 23:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762731594; cv=none; b=XSRY/NStzQfkYzi/pkgqHL+6eDs1gu4xAySyzMfVRkafrrNrD/6d/YbTlrRgacvKcOmyDbMvrBwSNiHyWgOtXA6bTnklk7j2IO/zfflHqdPKI4vBm2fUM8NEMK/MPksFGy7qyvPrTx6A1r+9oJwLFrVm77oIv7vs8Nyh+otW0Jw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762731594; c=relaxed/simple;
	bh=QRqDfQQQ3oSZFRJzWNjOf2wqlKPJ2qzO1OZFPPJTh0A=;
	h=To:Subject:From:Message-Id:Date; b=oEpBq8tIa5/7jcskNLg6QKtj6yOiCTtPSgDES3KckndsGsLirEGRzkiWcznyhk1zD0EKi0VM+QaEAxM2XZpv6sYHFkrvpS1UdbxNcyGlVm+8672YSRd4F5A2ojzeMUJ6WtnzRmyd8LevMtgHwzVGJUjf511N7UyFVo7brT1Azrc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RE3fegxK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RE3fegxK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1A73C19423
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 23:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762731593;
	bh=QRqDfQQQ3oSZFRJzWNjOf2wqlKPJ2qzO1OZFPPJTh0A=;
	h=To:Subject:From:Date:From;
	b=RE3fegxK5qHVhGnGHMz8928I5rMsJqE4fvkGvHcu0oItsQIs4k7qXOpzjaY7mha6Z
	 pTy6LeDEK5JjrJXEjiuXnzzqo6wRKS7rJH5Y5UmM4+pZC7oNl0B2f+cx5OkcgSHJBw
	 8FgxZyOqvJ6AvxXl6CfH3dOhDzmnaTlcIG9nV+/VHMkAPyLx0OUk7jLRP/73D/gHTp
	 edGsse/Ta8fFXtaP/zK/lM4/oBwp2pFNsGPh6BHy5JT/r1yCO3o0OnSgnBiDXzpH9i
	 yeEz6RXPtQ7xhXeoThu6dS3IJk1vCSA77yFezTtDkvodMMTHi8W6A3Kckc9poGlo2p
	 AlCqfsnEw7m3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95C4BCCF9F8
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 23:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176273159358.15222.14247491801603565645.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b5ff102cc42eef230fc7993e7ed049dd9e630c0d9f4b2439bd0a31f1239da82b
Date: Sun, 09 Nov 2025 23:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762731593
