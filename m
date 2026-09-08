Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CB01E2BB13
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 13:50:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788875435; cv=none; b=TCrMlGpXZXxoSeMdbwSJ93k1n8AjpOgCt8RMtJqVGediMXOtIUT6dnBCfpk7QXzN8AFV4ISBjOHdCkJWVLSv4uu/E8g20i1VBYVjCErphvFSmaRktpoxVOgyDiXgmCEQp+71Qmb6jDFk6TMvnKDY7qWD/h2z71ETAGlR1RQAFOc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788875435; c=relaxed/simple;
	bh=xAMGUuciau+vHz98hDVyKFKEjTo/UH/LmR2iPpdYdxc=;
	h=To:Subject:From:Message-Id:Date; b=c3oEGxY0C5ZRf/W6NfviEEQBR26kqx5fkKtQL9ZgM21goMwDdtwaWYAbEAcyqABetZJBpfbwhA/9FAkXD9lTggw+4296EHNPR6fYLm90A0MPFW9TZq4STJukqFH5DQTm07HHDY/hUYjxueYGzEw/d035IWhcl2zVbm77qXomjOU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MKfGefpV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MKfGefpV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1276C2BCF5
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 13:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788875433;
	bh=xAMGUuciau+vHz98hDVyKFKEjTo/UH/LmR2iPpdYdxc=;
	h=To:Subject:From:Date:From;
	b=MKfGefpVHU4YAUQyVeUrHwGZJ+cUfvIHOPtYFbifHdjvBOkIpxFTadDaec6WHSIBG
	 ho9ekxMvyt9G+4Ubx59h2ihxgFM82M8y7ogG2L05NwGrhE9zPIYr5Bnhwr+3UkIem+
	 7BOio0kSUd2MbRPByswQ4eJTUR0g2dIm0w6n+xVw+U7ZyD4wUfwjWizZ7qDXCxttex
	 /iCpmloE5YbWDFbi4UnTL6J62JLl9oLVf354GZk+QnKN2kSrKW8uP86+rP4rtzqjqG
	 fstMbJPZ7ziaBnPZHDFsvPvAuNdwKJx5Rg7gIHX9NC2iSH8y2cNDeh4zIphiiOjviy
	 Kesb3EGnirk/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE278C79F9E
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 13:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178887543370.3460.11435057443817389789.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2da034f9a037a6e1efab5740893a1b11af69a8ba09949f1b9da0e4aac873bab2
Date: Tue, 08 Sep 2026 13:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788875433
