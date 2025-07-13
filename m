Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BA3C27877D
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 17:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752427794; cv=none; b=q0IcJPBVGsmbeGVlW7SSIGC4FG8t3euoU7mVqnPsC+8kZ+2FRyeax1EPUqKVhGknnczfYSMxhkfGwP4J0e9xBhItN+fcSEWWCqx6xQvsoDKRGrmiehTeSuFYxGTByKamd8lmiZE1sa5tuSTv9Z4k1Jj0xij/JPODxtoLh9CF/0Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752427794; c=relaxed/simple;
	bh=6WV+OzMMo5SLdMCF4mIZy29S8hk9/dw8vk++uihAZZ4=;
	h=To:Subject:From:Message-Id:Date; b=GufRIkBoQPRQ/GypH9gJ+qX2q/cGWFQt5zmQbK7i4Y238G8WRoIJuD7qnfNvxdtN+J122w/jsSiuEnhHY0chD0VorVsIy4D2w0/WpGBzONsFuFV+qBIwYRBm5MGi/PXtHgpuxCIlWYhFNxeWrD566JqzHjaCwZ6y2xj8YzzFWgs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S3RhE69W; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S3RhE69W"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EEB5C4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 17:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752427793;
	bh=6WV+OzMMo5SLdMCF4mIZy29S8hk9/dw8vk++uihAZZ4=;
	h=To:Subject:From:Date:From;
	b=S3RhE69WjUAU0Qjn6QU4oPXFlJQOdfOMebj0d9RloBxP5j6WKTbteRxi1Umql42QZ
	 fsY2qc97u3ZNMrlNWdIuhkVoW8cruUmzZDPknXbTe1gzS0GgRtb0w8R1hXQbNHe7IL
	 QWIcaBrdQEjYktdxQ43pl9KKMjEr83VNAMu2aqWrnzuXrgCpVIKSeAcZ3sebjKcRwk
	 kf3qFeAVeh+tk6k32lMIcJTwZjoF03+CXg7r+U8iyhFhnD7Zry+IWw47cAMv5RZFdX
	 0ou1DysXfVSACz1oWi24fTnxaXSVajBp8XSrABVa+BHpFzaVixYf+kridbxg1/0V5G
	 fR2Mnx3qemTRg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F864C83F20
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 17:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175242779357.18107.721419490801329537.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6363e7d1509ae36948c31b03ebbef7783f63800bf323f451fbed1f7ba63ed28d
Date: Sun, 13 Jul 2025 17:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752427793
