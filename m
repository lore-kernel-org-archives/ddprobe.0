Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F01F379C2A
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 13:36:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781962594; cv=none; b=RM3wxmeafmw2twY/Mmud3KrEkkIx7akcJ2Zey/XJkG3ezEvHY/iFGnmTv/m/ogcKTYUiy4nIUoNCa/vZrpPKxgEv3YP4r1RzJBh7k32qwgJBrDMJctYghynvceRCBdFusj+GKSdsHnalnP6mvMy5QgXt9MTZwX9CF9PFPufgaWQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781962594; c=relaxed/simple;
	bh=+Bi9jDx/U5Mhb8JosXhfqFkEnVXLKCLwry4v56q5Els=;
	h=To:Subject:From:Message-Id:Date; b=d9iJUFKRF9YIGf+OhbcodTCPE5mYg+gZcXQlsvi2VBEE38FjwlSHkzkur/u8OMF1QsFqBaqejaTwkL3thhQsbac+SkqnkNZ0kmszjRabYD7yisCWCiVG+n6TwF1l0xQ7pi2nA6KWlZ8EORO7kd4+DmS7TeQy+wb0mFfs90yk+1I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Kuy3iIM3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Kuy3iIM3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB667C2BCB7
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 13:36:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781962593;
	bh=+Bi9jDx/U5Mhb8JosXhfqFkEnVXLKCLwry4v56q5Els=;
	h=To:Subject:From:Date:From;
	b=Kuy3iIM3hGJAdYgMuVIMkk+cCPScW+TbuG8OGRfqKcYZvNqTs+R9KicgNLbeXJG7s
	 Zek/QfX5TfHvxl+993nsJ1Wk2L6S3X/3zKSUJ6PHBe2X1idHUTLF8fW/55O0Ag97EX
	 qwFdXP0WQMB8BJqNQIqyC24K7WqWHki3Hi7DyFzqGzZPk3JPSGgF3MaYG3sHwD+9S0
	 QmUk6D8Pz9zmQ1DGpp+0S5hegsRkpzF+FcFkjs/3PYJr6wsCk4A/Ihg6B+alT/sghg
	 oRFtt0nWJGz0yoW7Jgylel6x+7xmReiwmJ3gTJPY6pNiX1bLDDbJ1aWvDYzvDJgim1
	 GwC/qq4mlqo1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD1FECD4F26
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 13:36:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178196259369.9659.10928922850464202109.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e75726c16941c40d6981f7fba877aca763a75e3834d14b980b170c2dac80894e
Date: Sat, 20 Jun 2026 13:36:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781962593
