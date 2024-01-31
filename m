Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1037E4C9A
	for <ddprobe@lists.linux.dev>; Wed, 31 Jan 2024 01:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706665697; cv=none; b=eJD9mSD+8UqlEvKrs+2xnhMwqmM9QikwG7dLw/3Vq8PpFO/4Tu67UL0nAqU8YqvKIkUk+YHr2cqafk3aDq4iecoJhhoLMKpv32Ts5niFTzOkgxAX5d5NGQ0Vul6Yb2COGT6LNwWG1ZgQEH49s0mM9yzQKn+OuvwEl+qlKq2qS0w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706665697; c=relaxed/simple;
	bh=3vviFGmXqvV1iBFRBg5kEeAqT8cDrMGRe7LrDu/oCko=;
	h=To:Subject:From:Message-Id:Date; b=RCkhU30AhkWKiV4IC1SZNbiqE5+4SPfNx4AypVG3UktbSGG1pZUF7d6MMQ5S4Q2MZuMyMmJ/RRZ6VfjAIYzLUSxeOLGL1cNOgSIhV4pv+8dig66mY33czO09khN9K5RBdm2xjgWyZzgxiPsgh9GKbTC+BzK6BqWTYhblrhxSghg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=enixbH9p; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="enixbH9p"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8705EC433C7
	for <ddprobe@lists.linux.dev>; Wed, 31 Jan 2024 01:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706665696;
	bh=3vviFGmXqvV1iBFRBg5kEeAqT8cDrMGRe7LrDu/oCko=;
	h=To:Subject:From:Date:From;
	b=enixbH9pCukL7fQ9mNiYRE7OIcJkMW1q9yqm59h9eX+jmeJlDjuoM1+Av7QrjIS4S
	 yD6kxO/31JtFgEHwHHlc164muZjcxMsS5CCg/KvjD/myBP+3Fp2R8hWmEkSP0UUXbl
	 +V7hjuA+X+uoyPXCC5vWhmXZPOuMGAifb3awRfIJ23XhidQGYbC8ipd05kIKpWR4Vp
	 lu0Opwmi4G+xvSy8rheCveGjU65zrRWYlfaLdgQz0S/D/CD4PXbbPGohuwTWSx8i79
	 EMRyvjegFENqYFP4X6EvXVDj6clH+Jzx3TWXTeC77Fr4+Y0TuuQNZ/5moJFMcvvzUJ
	 CS6ZsSjyW1QZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6E368C46CD2
	for <ddprobe@lists.linux.dev>; Wed, 31 Jan 2024 01:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170666569639.20309.4404640159918301809.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 345c9235b04981be481596f97e2f560567af6070a88f9801531532f40f7cade6
Date: Wed, 31 Jan 2024 01:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706665696
