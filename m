Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 69B78CA62
	for <ddprobe@lists.linux.dev>; Fri,  3 May 2024 11:52:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714737143; cv=none; b=ljWFzlIYNGTBc8P5LdD2QLualcV7N7RX2zAHxwGLJu5nHmldRTdS4A6b82txJ/WvtqpSpwjMzKoqwguKfy/sxfmptlqMZt0p2skKUdxwJ22SB5REEDalcLBTuQp2OcCZlzRDjVN6xn/sLY0G+zF4mxXu7vH9nJ/69bTIwR3DZ08=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714737143; c=relaxed/simple;
	bh=CCVLV5oekxxPMKzWYC9Pz4xdCDTnM77QmceP33dmZjs=;
	h=To:Subject:From:Message-Id:Date; b=sxDm3KGDRgrAa35hXzuwXbFbgk/oshINOIS0tit+2Naobfz3dXldMAY013o9Hjwb2JE5IMgffxfPLw6AlVXYnfn6HI7LECSLI1LkWfoKmXknsVuIJYLizkrWX/wzojnXlUG8j9dPWaV5ShxsmJukIvlyxnNo7OMTCQTpaiM5364=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kk3XzYwH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kk3XzYwH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E7901C116B1
	for <ddprobe@lists.linux.dev>; Fri,  3 May 2024 11:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714737142;
	bh=CCVLV5oekxxPMKzWYC9Pz4xdCDTnM77QmceP33dmZjs=;
	h=To:Subject:From:Date:From;
	b=kk3XzYwHOOKpaOsV80yB0xM+zFsYTQy9i28T/IP37qgqw8Dw1XwUJwUu3L+ST67Qy
	 k/co2goMC7K09H7sfclYOxMhFiZ5WXdjjNYk0S24/JVHI8bA+yUhqxX89PpQ/Tkl/a
	 WSmXFmEMszhGiuJASgdSgfhRUGR4OtGOciZ6s9uGcvXi7eHEIZwNdUAkN/my4Zu+g8
	 9GNTmTJfFLYAUdhzqnckwjh3ql956ypmNWdR9ryqpAbEsi0TTECRAOVnUnHRWe8kdQ
	 oochgq1LS7KbyO2JkeewMU2XaV8ad1DdVwO7FT498tFaKWD4Bn5VtMu+VPRZUbh35u
	 kp1g2piLJdNoQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D0AE0C4345F
	for <ddprobe@lists.linux.dev>; Fri,  3 May 2024 11:52:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171473714282.20189.10219226789697551178.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 78636314da5c11d8492c1886af6efbe13935982206c194c6a598c361346d5ad7
Date: Fri, 03 May 2024 11:52:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714737142
