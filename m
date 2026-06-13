Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E242381B0D
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 06:46:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781333194; cv=none; b=Fgb+lCV1mGuPQJTzmoZ1vrDTpLjC28J2F3V7vTHJo+CxxhzyXDjNqTT3ky6lCnTscCmCWxnGTxxyjIbt6r5Brl65hQvoVzKaqBXzDHJHsmyidbjmaml0Z0FzT9UY0tyFyX7BS1dVa/WftPJYXwmgg/8x+uXxw0gy4nf0q4tzeLc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781333194; c=relaxed/simple;
	bh=pkj917nZXzh8ue2FSI2SWb+FRQZ1JNoDU7cnZJ5jmjQ=;
	h=To:Subject:From:Message-Id:Date; b=rqA5h+vpiYnfUUTjnayTP5fwj2NL5YvuPlCav1Vibzxeq0i5d+jRq7RTJ8QeHBMTIwImOdNUt/jDmMVZMBiSRZriuKSjNyPApGnCmcPMw539lyI5Wha4BG/ls2UFnRb3rEqnji5C8mrGi0t62FIelqQOWtsfp8M/xdSApq1mz68=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ud/VO4Y5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ud/VO4Y5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0EDCC2BCB7
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 06:46:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781333193;
	bh=pkj917nZXzh8ue2FSI2SWb+FRQZ1JNoDU7cnZJ5jmjQ=;
	h=To:Subject:From:Date:From;
	b=Ud/VO4Y5LGuLXWLwcvAc9vb5Zs+65HVXSXfPriZ6MuNfKAEefqt5r9NrbWT5OXXcD
	 0uuJ1tYaIKo3KSyVHNEMwdcRglA8vKKu9bT2HqdJ5GbQp6JZBUSKIxmUU4e+Wc6RZJ
	 +OJ/fYmiD7KIeO3wBJAs6BdwyCx8Xqjk7N7c6UTu50/boSzEoS97DEnjRmwUJWnN8m
	 0B15qYduvOFhapS00JTbkX1QGX8rJZrJ5H12aIf1NMuVNw8/gUNItuCf/XZxNiDIwu
	 FEBgBrTrfDn7U77NS8sEr4b7PYRPN43r8Hl+gUAhctOdtvYMYNjM9KZJAgpDtX9S1j
	 GxDZRfY/mM4uQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8B94CD8CA8
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 06:46:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178133319368.13753.9202321779890974433.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6316c5609e1d6244aa341f62f7b31b32cf5ec3d7163a190bf20757f8c88fee8c
Date: Sat, 13 Jun 2026 06:46:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781333193
