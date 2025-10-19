Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3139C57C9F
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 18:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760897994; cv=none; b=UQno1sY0y3i5b2epSHYjWUxcdGBynoSzkOIqFRKF4MYytL1zcMHYrFkyd7Fvesfoxa64t8Tjv09WtZngGFvT8kkStb8Dpb/cZt2mehsB27k8p/POD6VgaGUc6dHCHEC2w9c4f1VKI9SCy+qnF4YNqm8BOyh/6Hc4sfd7vR0/xGI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760897994; c=relaxed/simple;
	bh=KyAYTMdXFPYwlKCIkbYQqFzjp9j6v0ESpQr5+Fz8rW4=;
	h=To:Subject:From:Message-Id:Date; b=D17CGVWQ2JWMv5vM+a8p8kn2LgwsfxAEyZ7zT2qRXy1NQdXnCwNrju2tqyzUCc2YIHiU5EisglprjFxytn64IdsxAmYenWDoUsl79Z06agTqfTsJLcxg9n4RDIjZ157QAYjgHdztR4/PCFvrcmamafMmw4bG7QZ6nW+c9U5pFn0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rFzq5Uyq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rFzq5Uyq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3822C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 18:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760897993;
	bh=KyAYTMdXFPYwlKCIkbYQqFzjp9j6v0ESpQr5+Fz8rW4=;
	h=To:Subject:From:Date:From;
	b=rFzq5UyqEgkYAz2SoVdj6hIvjoVHYKwPTlWPAJNkxu7va/Oy5lIMXdd+6B9IC71vR
	 KK0ggwgsztPJC01q7zkrHxrwwEeIDATqyozrRPalBpoaVirRMSGG4YfbrjGnyG8Ttm
	 B0U90rAPQ/op/r4NskhhTx6MZUqodrL+qDS57bT0zHVRk8X3d6sTQc6oK6sSD8Fu4X
	 8/oXQZqhhJtYdZYeL68F5LCPztFzEi2HAqYL1YtENlJNwc78Ch6Dn2LarRm3t+v+qk
	 KstcGmBriWuruAJAbF7dHcsWNEpwh3iHd+V8axFp4vhS+QLLpDIozqPGsK+W/rn5sm
	 0lzCGmKYF/tOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90639CCD195
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 18:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176089799358.10979.17653405144878254005.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 596f307f5223d1df7504942f7e2ae8f876cc1db718100f6002d9f06aa5b68286
Date: Sun, 19 Oct 2025 18:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760897993
