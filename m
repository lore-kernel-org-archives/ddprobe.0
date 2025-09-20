Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 318341FFC7B
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 18:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758392394; cv=none; b=NCNzJwbMiK1y1cOZZwnakkOdP+ikDrTgAVzHKQlfSggABR19yRi3Z1w6sKocax6K/oKJaNLd5Rvc6cj2q0S3xS9926E2Y1J152Ivs37uCG1innCGVI8bnGfdpB2C3hGvvDbdT/NB1oSYD7AJtMQjnN0uy8RMMld1ZvLp+BaKwtg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758392394; c=relaxed/simple;
	bh=001x2YuA7zJVqKTAMbAK5wVood6eZa0XsbHo/oMEgE0=;
	h=To:Subject:From:Message-Id:Date; b=kNjMbx6gy7HLVWpseez6McFLHnXlQOpBjbbuvj1TQBA2Oud7zYdzOFkNdWXw3LLJJ4Smn1AaRmPI6Yd1sVoUg6nGRNbzifIYdfkQw1382QIUq+68LzjVeXf3Chrl0Ko9wrwz3cIN0fFI5tfEDs9enZ/8prUlMXYhXVOU49jCG/E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e88snwji; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e88snwji"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6F22C4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 18:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758392393;
	bh=001x2YuA7zJVqKTAMbAK5wVood6eZa0XsbHo/oMEgE0=;
	h=To:Subject:From:Date:From;
	b=e88snwjiLFowZ5XBzdGfQTN5ehKQsDi1zZFxXc5joadEW1UC94LFfyqHFi8qZkT+O
	 nWcZTsaQvVqVIioC0n0QITlGGd8DwcKBppzUpfB1jTokb+ADWQkIE3RhAsp3jSarqf
	 ffCr+e7rpbCDb67h3YvF88j/vFImYfsxa3Cgd/p9XeoM1yloXXc3JVur2NHFNduWAJ
	 NIrEPuV9wbfDK1vHhMcUfJJ2SEsMN6ITgIE2Zk3aI+fuINEHiO4SBzmmd5mrC9hrwq
	 KOZBtSwHeP7FtjYKfDF1IP3kk2/EQSgxnEmJb6v9qJ+0ZEREwE4E9y1hYP41gCrwe3
	 bIkgjstAguL2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95F81CAC5A5
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 18:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175839239358.12876.16901038346997714758.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b582d7be29ed2c0c37292d3aebd53da4c3d0f91e7141eaf046698d3f5cbf918d
Date: Sat, 20 Sep 2025 18:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758392393
