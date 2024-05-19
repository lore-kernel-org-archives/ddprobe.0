Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E2B36CDBA
	for <ddprobe@lists.linux.dev>; Sun, 19 May 2024 18:42:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716144143; cv=none; b=PdWx6GgV4ngjPFMorwvtkopPVEeXJL/+TVVDj1tA1MkKuVhlxiPXuElyVtkTjnUgqumXt05fw4626Z2Sde8Tsi+3JkO3mrUnJZEmvv6i2mMbxTNvdrkAGnn7jCQJTIB+sY7wlY05hwhTFwfeyJrsL6W9O8fExu6rsj4vgeodjak=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716144143; c=relaxed/simple;
	bh=ydM4ZKThgjk0IPFyJHXGm2Ckxcurd8UmNwv2KpPoxZg=;
	h=To:Subject:From:Message-Id:Date; b=ks6fVG8jQeZtbW1ERJ+9miWf1ttq3CIIaQJjd9L280Ln2wacW+OceC+nMJ6EHRl82p5b0xh0SAqcKsmeqQGD7IfDfbMxJZt0BHFqzaetzeUHOUEu7ezUYt9i48/PA15zoxslgVcFu8uDzVneQ5wb43CYNBKvs5qQx4Yfl4pJraE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TncU2xtG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TncU2xtG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DCC1AC32781
	for <ddprobe@lists.linux.dev>; Sun, 19 May 2024 18:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716144142;
	bh=ydM4ZKThgjk0IPFyJHXGm2Ckxcurd8UmNwv2KpPoxZg=;
	h=To:Subject:From:Date:From;
	b=TncU2xtGbpxZeIezfAQ5lFNgbSKY1mVCAAsQ0QRde7V5fq+8LOKk0zEz0OIJDSHEu
	 +KpywmROwFnFE0n+BkUKuVxk47RkbyoLa01dUeHQYO7xv9XFw2Eu7WHpYCwTYD2Aqo
	 sMBm3QUbatI9/39xDE0fWyQM1vNxF3PngG/5qA9UTKyr2p+qJ7UZVBFfv28EqQEedE
	 eXT1mCsT2dBleqH1yMc18st/k3cbny38gq8kKSzUL4y/ufpJOLnrxumOz8EwLlEf+t
	 lKPFaGKx/hn3c/CjVxYJdnVpP4hDmi8pp+89H9BTJ1b0pSOHnu8frE7RK4bJ3bByW9
	 C5eY6/zBNDhqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C61B0C25B75
	for <ddprobe@lists.linux.dev>; Sun, 19 May 2024 18:42:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171614414279.25511.14483093918399677362.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 73bde9466a025e12a5fd2a62902a22b19ec14bf7ff6031a6848c21aeaf102491
Date: Sun, 19 May 2024 18:42:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716144142
