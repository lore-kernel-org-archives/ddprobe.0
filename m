Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5575A4D8A9
	for <ddprobe@lists.linux.dev>; Mon,  8 Jul 2024 08:36:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720427783; cv=none; b=KtYHqiicm6UxjnvQEFAsKKPkHC6rYiHpM22v4IirkyxgFb1IHj2PkE/y1uiYmMIfURz8QFwCOmVsMJkWVyhG29cibZJZ4QaLoRz/FG1x/hebIcgMesCwRajJn9Z5OAXa+/UK4S7Fuka2+vY6RzvpH99XaReyyWD+en3+9rNrfoc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720427783; c=relaxed/simple;
	bh=Cdp1mYDY36/1qLZHbwUh5wHIPlb326lbN5Vh9P4eFm0=;
	h=To:Subject:From:Message-Id:Date; b=DzuyAGtNvu4fCNG8jYikW4uWdoZG4n04HqRdbAQtwoGr8Zd1U/PgL3tn3CfaqsKGfaJxhfrhIDB1oUawh6gOHB7jH/1w38OG/+Lc6lAHxqoGdIS4IYGVadTPpLOzY0IKGLUHzFJIFiCAi/zdTVudzz1gT6oD8AGYU81G+pPrJGs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HKl849Mp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HKl849Mp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D134EC116B1
	for <ddprobe@lists.linux.dev>; Mon,  8 Jul 2024 08:36:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720427782;
	bh=Cdp1mYDY36/1qLZHbwUh5wHIPlb326lbN5Vh9P4eFm0=;
	h=To:Subject:From:Date:From;
	b=HKl849Mp4Wleygi3YWQljb9FqTnbLFnPPlJuyQIRqeSQ4TP/V85GcdMVdHHd7tqyk
	 N1AbZpEaxgx2/Gsc1x715LCnnrXnOSfs+n+x60AsQj89e7ZZK0enu9/GUODEqSS36o
	 WkCHqcaMfsx0o9k78fcvnLu3eYUS2/Hjn95jjHztGcaL0CJljJ+Zituw46aXvAGegJ
	 4c69lzJMZLf8wP2U+JI46PpVoBw5387gj2Tmv0oRdCa1rRvY6xbkNGYtqkC1lOV44g
	 1wPKau2HcXbxrczxR5N9uDhjU9AxVyyY6pJ+aat+WZ5pLRhnQY6TA/VqpleQ7am70R
	 O0S9Cf68dsNvQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC843C3DA42
	for <ddprobe@lists.linux.dev>; Mon,  8 Jul 2024 08:36:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172042778276.21231.16704751950295127634.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1da028109370b135e7dd3cb249f82db33fbe0c528173cec3baa9350dd780c075
Date: Mon, 08 Jul 2024 08:36:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720427782
