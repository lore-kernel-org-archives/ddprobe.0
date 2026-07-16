Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ADE8349620
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 02:58:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784170714; cv=none; b=SyeM/S9u9B2t6D7dFDH3Wm1ylwF2fJWY2zgd2ZAIJIKu9NC2LyErmh/cwUvwvxtzaxrEJGBEYva1EIO4v25irVv0d1mwaM/2Hiy1YuCnAIIPdsAHTBPiKbDH0ex5tA2E4KoM4qNFw7NXB3tBhET0UwS1S8CdVwvI8ZPnRLkx5CE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784170714; c=relaxed/simple;
	bh=EoyY7LYFf1OGAjsJgoELnaHTzUThiqQXns6tnfe5AYc=;
	h=To:Subject:From:Message-Id:Date; b=NyH7uBl/eRiYM+uaPU2Eh/hqzOrw4CNg7Qcci+Ul9w5UTvASH0CkfN7k9LnptJMg6z3uJgKMLj2mVBRGXijXhzo6bxPQcfKJH1kufnglTl9qABR0/5wPfejOkIsOzAeGo4VsV/Zi0PnCZlQ895FeCIRCkm+jFC6Vx8fkh3X6C0k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nTS9XERi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nTS9XERi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA4F7C19425
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 02:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784170713;
	bh=EoyY7LYFf1OGAjsJgoELnaHTzUThiqQXns6tnfe5AYc=;
	h=To:Subject:From:Date:From;
	b=nTS9XERiC5sqe8KUecANEm0if6ajO5HgFAiDq/GpXY9RPIy+mPHBAL+oDIWvsOCwL
	 O3QBnQPvOMWXJCqR9K4m/pzmLY42uRIpVVFgU2+Rp+Nw0LhrchEmoLOSbA94+RKxXi
	 cysxWBUsimjmNN5DRZBr6vMq9bsYFlXdCQJfkesdmydGPpFJ+hTfvVOdOF/J822UCb
	 UeBkuMRleJc0LhEKy+QqsNGARdIJx2zqU+CWNgi6RoR2cdMgwWK/7gQUTu1eaRqwrD
	 X4IFYFaP0oergPDJ15CVJHR9t0XEt+D/L7bJK6Lcwz42FNnGoPUrW33Fi3FCcs0aKY
	 21OuR1Yk3fWRg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7B3EC44507
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 02:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178417071368.18375.5084975763160873980.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cc44978a4ac07bc027e0e517765666a735766fb9cbdbcb3add7b3d703b0ab8a9
Date: Thu, 16 Jul 2026 02:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784170713
