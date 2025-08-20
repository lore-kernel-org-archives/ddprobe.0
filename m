Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 277003570AB
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 14:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755701994; cv=none; b=jG+Doz3vMuE5VSgAQVzebjcF89bsIGs1iUXOcAEs+ZrjimAsKY/XL+Rl64revyMlhNeyFx7yQnPXobUhaYSZ57fIrBFUx4kAp6nsg3Hwu9+DEbEEEWIC2P9SKYPq0TUskvY/0YHtHnvklS2ycT+UJ60W98ugm/lJX6az0Dp1Pg0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755701994; c=relaxed/simple;
	bh=BAt9yClCSP0H8+xBVw31UCGncoX/dWac7yjK7sJDio0=;
	h=To:Subject:From:Message-Id:Date; b=PYZSpq1oXJf/ckWPTYkb6HWSc142g2hA9qRTFWGvYnOY4wlFpu+89sWoyVVKkF3xUWh8YQ1ucxbBENstD+H/GLfPszQY7uZROyGYSsapuPL3nbi/OkwjCqx7/wXlPTEgND8XeKEDEcfPdottdjULAab7JYpCib1PwKC3ECmGDdQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MXu3EWXh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MXu3EWXh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC821C4CEEB
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 14:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755701993;
	bh=BAt9yClCSP0H8+xBVw31UCGncoX/dWac7yjK7sJDio0=;
	h=To:Subject:From:Date:From;
	b=MXu3EWXhKl5/e5XwZ8x23cHV8nW2XPkJ1nMS1+sFYhKUrFm1Ti57LUMTRFTly3FL9
	 rv00gZeYxPa9aP29wDTZsI29zEvLN6rmGaOr79U8JVRjr3tTmaPy/jUZWouJfWwYIB
	 TvwnnKhNKsyoJZBczKh1ZxRv2L0KPKBoI6SvxCsgBouphGiy2hQcRGD0HVJ0ehGJvI
	 /RuhYWoMEL/U4jSHvU1fo0F6FafefmBOf4zENts7kYpuo6t0KeyDLZ5vp7N6r/lEoQ
	 nTi8DSWGXfif6Y6sEl7HxtVB4rSMSWIRbpnzVKcuJ4VeLFFTsRljf73ZwD6IWaa8Ve
	 4alIE+qHcllQQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 993C0CA0EE4
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 14:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175570199361.21555.12993050290798651483.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a819345cf364c7f1d58f842e1ca248fbd91bf3be6197493f66c86941b19d2af2
Date: Wed, 20 Aug 2025 14:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755701993
