Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52039802
	for <ddprobe@lists.linux.dev>; Mon, 22 Jul 2024 04:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721623554; cv=none; b=L16b0P9aUVfHVQC2nflb8Q8TyYep28rP9pXSVqYrh8+y+IjN0z+6+6NIOvDAYjYssozSRRXuwxEPAumay7UFZCaGcDCUvjLBdYjsg67XzLuVfyR00v1ubzJ/MDpr2EhdON/tcAsRyJ871bLlghTNky8Vh8jld/Ne4CLmb1H43Vk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721623554; c=relaxed/simple;
	bh=dqClczkqBXidOw8jCcUGSIK+Hod5lJGagAYK5PHN2t4=;
	h=To:Subject:From:Message-Id:Date; b=qh8mmILVanGFVZMoUTyuioYEC3CotQeRP2MyLxW7LNbqwwwipszCVFIzHjpfQHyLf3H7mP5C2OrY2JewS/eSDZ0yn92QA31sGeseSXd66OePF31cDbdWAgjU7yCrqIP7hGsAwb5MXgQzWpBo8+XO0bDa0NICEoHv7TMInwSAu0E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IpRZX0uY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IpRZX0uY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD5B2C116B1
	for <ddprobe@lists.linux.dev>; Mon, 22 Jul 2024 04:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721623553;
	bh=dqClczkqBXidOw8jCcUGSIK+Hod5lJGagAYK5PHN2t4=;
	h=To:Subject:From:Date:From;
	b=IpRZX0uYCE4m73bg/hKwMaxxiin/ZOBGF8VaUl5T6FvjeLf6BQiDDMvSUsuZZipqY
	 cjfGdafp0BpuwrkfTLEJM5qY1ZvK4qJ72DMdR80b1gEzNa1fsQJekOWrMF95SoK/Eh
	 cE+8aBR5EF5n0Wsd7mDnT1ntj6Zp4R1jHVRJrQg+pYeiUODvzJKIFVGhnoBCZ8kfMc
	 H0VWIf3sNYDLc/btg62y2WI1SiaMV4X0F7xiDjCcNh8RWuDPhWSTzFx7Wk6bcO6pkP
	 oW2eP9Z6IV8IzsDEIiQ0HAXxbZ6DP/iJe0i9acc90hhW+OvJOtIjQVX1isECZkO7h5
	 k2SqWE77p8b/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93507C3DA59
	for <ddprobe@lists.linux.dev>; Mon, 22 Jul 2024 04:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172162355358.24116.16623978267250762464.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 382416b4b6e1bf2212ae5f2cbb35ad7a67eda4ff8c30e4c4836fb4eea3d7f8d5
Date: Mon, 22 Jul 2024 04:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721623553
