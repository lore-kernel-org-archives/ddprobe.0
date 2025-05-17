Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35072205E3E
	for <ddprobe@lists.linux.dev>; Sat, 17 May 2025 18:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747505395; cv=none; b=YZd8r9Me+dKEuTdB5osVet2b4bbxWL+XJSnhsf+Iobi6fGbWmAFDZjDboPMAzbUYVhPGfZP3d1nYn/PKmHVfXKaNrbLgIE8uJVvOjA9IMxsZ5q0n38+eNGkI+OKK3T6If65T7MG2NGTKZrxqv15F6EXMjmtzbXfPXg82cp4YjXo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747505395; c=relaxed/simple;
	bh=UJ/8Z5h8A9/qockY7o+xE9+gdDhSu4RdartG4U2OAaM=;
	h=To:Subject:From:Message-Id:Date; b=P6mWBcK+vs4LvTNZ58huW2jbEJSTDd9eTZbYMDsKHbSN6kWiIDGrt8FiW4bvGzM2DWMwMdV27lqQD7O7cy7ndNdhW3pPXIqA/ajO69cUVGYczdUX11TDzu0W4eTVqxsn8gTsrs0c61CrfvzTLU8U0q/qPYZxF2JKEdOEfyy5b24=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J3aRH1oF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J3aRH1oF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A163CC4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 17 May 2025 18:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747505393;
	bh=UJ/8Z5h8A9/qockY7o+xE9+gdDhSu4RdartG4U2OAaM=;
	h=To:Subject:From:Date:From;
	b=J3aRH1oFqIFch0iR3p9U5F4wz2NI7a0BMHTvWKtV6JGD25PGztHEwsXqayBD4572Z
	 Kcc5kasdjcrjZ8UEX3kQkzKu15fsXNdKS0i8JtOzNFBB2XLe90nYKjF//erFS68sgj
	 GBUE7Qhrd9fWWYMu6Iz5twOhkyhOMDwa5e6UQ5CnNvkWxg6fwLkyrrVKUrHWtloDwe
	 J9kR1q60174LvZs6hGbYCDOFVDYMZiIvZwpwtWTnlsMaFCldYRac5s+dpIYLC3kIm5
	 3me/lqFJqC3V4pWI0qm/Yto2nRJ4UD0Ht9m2GD9WKztVPMl9UvX3oFGNpZvIn7we7l
	 RJMW/znkYBBBw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E384C2D0CD
	for <ddprobe@lists.linux.dev>; Sat, 17 May 2025 18:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174750539357.25643.5303649574798764554.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8e48e382fa79086b27e70802b26f70f3ee07e19d5c4d07ef55b8be7247ea3a9a
Date: Sat, 17 May 2025 18:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747505393
