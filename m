Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F33832DAFDF
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 12:34:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780230874; cv=none; b=D4T3oiUd0+UtCfN6RCQo6EGGkFG1uxARNdUPso9F9kH+88LGWXpwk+Bt7mI6blcSsPJdDqizq7ZYIJ1fG9JD+l9cRiWQx2Akp0ys/Etv8hjcz3+NFBctzRnPHy8YaWvX9lm3BScu9RA8Bxmqxnlz2ckUVQDyQQtCwJqgr7GEAtA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780230874; c=relaxed/simple;
	bh=DorDNsZXQedIKHaYqaMq3wpy1c8GcHCEO0d4MjIgxyE=;
	h=To:Subject:From:Message-Id:Date; b=MX3Nfgi8TwgEguGHkVrvdEdOWYLaRcAUBDQrpmFpK79WQPJk9qB71h+KBZJvnA0aXazA4zh9WbSe5hxnKl347OJ/1vOtSI7UtutazyYtyjMgVy+q5JGfsGvdowuZO+kO2LVVwa/EhivZIeky9AFGpRVE+367TXf1NzvIzdQOjYw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fNYCshtw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fNYCshtw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0721C2BCB4
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 12:34:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780230873;
	bh=DorDNsZXQedIKHaYqaMq3wpy1c8GcHCEO0d4MjIgxyE=;
	h=To:Subject:From:Date:From;
	b=fNYCshtwHDSh2kVzpk8E60wsAGiTxzYiCBzWFPP9Vm4T09kxoBNh5myzw+rpOokRx
	 OGK3Gzk1N6Q+QEATa/QES5u49/AGOcIP4amfqPGy3QKfFpsvqEoT6LSePZtOmQjLfD
	 tQSy7xxadSwsCnLSdBYVlPzv/ZX4BbvJNDdyTJkWMz2zSe2C9M6tseU7laaFG3zbHz
	 p8sGkFAfft7iZ5qq5prIiIqHxcdifvXFVm7V/pugo1Go21yalUMvvgopDrUrlLXfZk
	 S8RZbAMwfmsqqYNzYk4bbZfjEhxEQKme7CEA6oTi+fNF0W6de6zvxaTSHwd6eFCSVV
	 13uNtD+fRptHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8220CD6E52
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 12:34:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178023087368.11522.1020909789158116282.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c344d1ce75cafe094cb8d0060e662d066d2b418e163f4b8a02b3125191f4cfe5
Date: Sun, 31 May 2026 12:34:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780230873
