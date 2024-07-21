Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12C901EB25
	for <ddprobe@lists.linux.dev>; Sun, 21 Jul 2024 18:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721586954; cv=none; b=mc0Ot/bV0N4Bp6lLeBVsJ4w5Y7XcObLqcsMD/3j5dndiOShcV748SqIvK3ipfWCb+iSwnTHt/3sW2k+OQ1j6ugDgXAYmYLbYLioTIKshHuRnWtSmJHuoa1p77XZlZhgbZjr+ZlUHNAm0c1GHhf857iQWxUu5yhkxbYgwZWNmJW8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721586954; c=relaxed/simple;
	bh=NrycZen+AP1AuIqWiMdYAMjLCk+EINWNYcVMuLTH8C8=;
	h=To:Subject:From:Message-Id:Date; b=b1G/f3F+Cf6VxErJSi9TfwNB4dqAImJtiTHwfkmlvjYu2gqPs/c7FxTVL22XE+6rSNfZUTAVw6RiyUQqiVmzIeoD69JShNVepIsfM2vZh+2vYM4JRvOmYRBnvvraW7qXB1ohn+F4+AcGEUXvqCXzUShly4qTV+dKIHa5juwjApI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=inopCBez; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="inopCBez"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A97A4C116B1
	for <ddprobe@lists.linux.dev>; Sun, 21 Jul 2024 18:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721586953;
	bh=NrycZen+AP1AuIqWiMdYAMjLCk+EINWNYcVMuLTH8C8=;
	h=To:Subject:From:Date:From;
	b=inopCBezeUHt1yGON6nSRHqENFirAhrECr9nBobq1rZNuQhfbjyn+Kw18JuSFbb8m
	 XPJ+0LinSt92sjU6Z53w2FqZpidLl4Tq4UPirNF4FYOUlE4iqensb3eduxAoUKDQA1
	 ZkvK1tZXvx1q1g/ZTMPtkxcDZ9Q+MfJ8s9ArZanHAb5cNw4sfco8LVg9OBsrP/TW6+
	 o4fsSLHiu9IGnSDiFMLg1W11tWtX+5wsPeG2NTkPhaNATMhY/XVlv216cY5bsCFBiM
	 KC3Zw8Dda5FQS4CdzxQANaAVmFRpBKH73w/U7s4OnN4pW8/zR0ER2mcDPi8WdyYYIe
	 EkzwD9gb7M6gw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9323AC3DA61
	for <ddprobe@lists.linux.dev>; Sun, 21 Jul 2024 18:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172158695359.23711.11902762954166452761.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 613f6ca0f678d6265f721a78882293193d667517c1e7a31061321dec6b64b312
Date: Sun, 21 Jul 2024 18:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721586953
