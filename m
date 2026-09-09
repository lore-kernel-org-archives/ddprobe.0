Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 71D7A3A9623
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 07:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788938434; cv=none; b=ru0oRoDczMZlTL9hcLe/d8T/df/psJzwPJKcxff4jSUGDqjfz7ILTutJuQwa+piWE1wn3NlR6hUuOqunT8TVguQkpwG8MXuO3kwrBiYG2trC4dzpbeIst7+KL5lrhcaTSVbDnA4xttvuqjsW65yQkF04Q4yM7uKap62CxgsIXxY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788938434; c=relaxed/simple;
	bh=tfFmWfELGBoUXGTeGwD6MiLRP2K1bQ+i+ga33nzuwPA=;
	h=To:Subject:From:Message-Id:Date; b=eF/kTwuIO48PzPdowsNqDzhfw70nqkWiXL5MUHGL/JxI3VRfk2wkrHONFLxH9hJMl67t30Cv3BuUiSIaM+/K2RJvA4mykTLyINyFOUWNRQ9zCzlvj0QjZFztK/uIHEz+nmfOt+V4HVo2E7STunSdSRJCV55Qhfw73qrZ8PSIwE0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oVoKDR0p; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oVoKDR0p"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6761C2BCFB
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 07:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788938433;
	bh=tfFmWfELGBoUXGTeGwD6MiLRP2K1bQ+i+ga33nzuwPA=;
	h=To:Subject:From:Date:From;
	b=oVoKDR0phjUawy0n0jNCf65Su5xPZp2lNazUiYrZnyQa90BG04K8dZVZssDgHgaWC
	 v+C8ypgnFGdQlKfR0D3EG4l5JvPubn+3jVgxyDgtOzoGnSJYGsBskopOWdZVR1kXqI
	 TpQdPmO3edK/Djnd0eu0b+BNIj8FZQ+HWUhbRvkwvJ6Zyuae2krk+xCeAb5TK7GUKs
	 X3wJSRKGJkC/3j9ApuQ5sXWx6amZ+7grvKMGHNI1y1yHSY2J8sKV250vy9i7rmkan+
	 jxs+Hs9I2oX6K60d6O7Vl30VykyN3NRofeyCrOOc4T0AmzXpHzsQin4SUMv90d59OF
	 yZrprcJ58655g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4F18C79F8C
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 07:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178893843370.31800.11971602338301923235.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a2a553fbbb7baeeadaa3dbf41fa2e09cd46861e6d0f9e71cf807dc67639b58c4
Date: Wed, 09 Sep 2026 07:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788938433
