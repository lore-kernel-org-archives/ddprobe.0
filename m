Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DFFC42CB0D
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 16:28:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783355314; cv=none; b=YnOapDLb11Yosu6lCvO2PjlkhY8K2oKsVArcCf5GPzEr6v2lT6XqGNKRtYsCpHtwADi8If3GYgeBLESKAA0XDs9OwH/bOJx7mgCkHXD+lUACla3aouvkVbEjpVgUgOUG8faArVV1aamic1dMACMZN8ivO1wu5O0DFBnibZNSR9Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783355314; c=relaxed/simple;
	bh=AjPuL0HPlWkiwrXyM70dJXlBZmYhk+3LxFYoUKCE8Ss=;
	h=To:Subject:From:Message-Id:Date; b=kzD3pNZniar/oRnPI0Be0f0xdAZmhdwabUMXOIToF1uzQTKcx9oEC3jezrrQS5vygaIo6pZpK7SbFaTNk3nGmc/Xx4QKemOiDVCTlX3dnQxk4RYNxqs0J5Rlww0EgXV6xC6pcGL04bxqmZgxZ5UfOWCtcKI1jnB1qFesUPV6g6A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DI8fRP+h; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DI8fRP+h"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CAD5FC2BCB8
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 16:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783355313;
	bh=AjPuL0HPlWkiwrXyM70dJXlBZmYhk+3LxFYoUKCE8Ss=;
	h=To:Subject:From:Date:From;
	b=DI8fRP+hrO32AXDgKQhNhVEiMOmCrgfaVNb0q9LKpY5gCbof5y1EiY/EhyG1Z0d0p
	 PIwfkke0TQ6GvbLi4jnhRz+zE2fAsCBpeJUCczW23eJFVFt34IAUmu0hjAl/4+c2t+
	 ni9kV6z/AA/R01qoJljVlNd09MMwKFmjo6YjJlKIA3qPflpgKBvKevLTiSQkRcxREf
	 zMELEF3FhN2e8PM7kcBYP4uPmbURIbv5onJta2T3f3gZSkAFP6CI08Rx8UuZcDgl4q
	 KgwTl9y/RCzhQI/kj+IyjnDp4kYF5hWjaVFp4TPvaQ+oa9Q2eznCnakAMTaB5/SW2w
	 t9hOFFL80BBig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A98CCC43458
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 16:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178335531368.19497.12213909993628354290.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b5f19ab13e91f400779eb340dd5fc3e8723ed14730b35875e45d907ae3c06c30
Date: Mon, 06 Jul 2026 16:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783355313
