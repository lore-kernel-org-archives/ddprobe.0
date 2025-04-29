Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E020259C9E
	for <ddprobe@lists.linux.dev>; Tue, 29 Apr 2025 20:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745957394; cv=none; b=T1by1XkgTLVxhUn637POVPYbTX+0CKpKYedEYtjRrmNm37NJN7R0X6tSkR7jclLsFduS3BIbgLNf47BoQkGsEE52NNBwzi6b2e91TbJOwljMNCn2zTHMQ/VP1psPgfNRd+DeM2Otwzbaq/ZJMrAEew5fU7iwRfGiR+yikxvUvOQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745957394; c=relaxed/simple;
	bh=sRMN7tCe3j3HFrEHa4sFsP2h5vX3xtspjIjT2Fhe9ao=;
	h=To:Subject:From:Message-Id:Date; b=ugSoBPgTDMlpTn3t3mbpaMDziinrILKLsgT5g4BQO9O1wv66bZjZj5KRJYe0lInHLF5549bSLxOpBYsXDc3tdnORZ1xRsBSTIrKwbZ0UjRE3J5oibgqTFVtpyNc7XpoR2Wx7R09FuNtjhVBqRkb/c2M98XHhfYF+c/fi33fQa2E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g6D0ydAz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g6D0ydAz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9B043C4CEE3
	for <ddprobe@lists.linux.dev>; Tue, 29 Apr 2025 20:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745957393;
	bh=sRMN7tCe3j3HFrEHa4sFsP2h5vX3xtspjIjT2Fhe9ao=;
	h=To:Subject:From:Date:From;
	b=g6D0ydAz/YUQTdnw9pi7bj9RG0R8eomFSC6cnQTNz3Mqe+5N+T9NfwCmwZ0Gf8pIa
	 FW0yRnxGtZpEP5teUhlGWC12B2+hk7XCUXmWLMclrJ8yV6XcCrfcO3951+El6P6MmG
	 ZNsm4L0tG8dbcp3kZzskv5yK0fCl+/JA7SBN7TvaYSpLWsweClLi4gu56O5wJnQNQV
	 ZlhZgmaLX+PLkppP64NyGoT2xDobyutuG0GkjTH6iDNKZtHh+QrTugAom81q0gp7FC
	 TGA2ocsfgtsyCJYvGrHqQYwacp1jIlnUluXCGAzoSClPWRWJXnhycqU6IfuVJdJXJH
	 Z8aPB3Gx+DjbA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F332C369DC
	for <ddprobe@lists.linux.dev>; Tue, 29 Apr 2025 20:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174595739357.7441.16237864007120854467.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a8cacb7fb393f4746392d92053a361f6f2e1e980d4ff982dcbdab936c8e79fa0
Date: Tue, 29 Apr 2025 20:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745957393
