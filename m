Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4327E23ED6A
	for <ddprobe@lists.linux.dev>; Tue, 22 Sep 2026 09:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790067634; cv=none; b=tI8MVNzC7cmJ/qEutHCeM2dro00YO2BmSLN64dZU89fJbzKQshZqNtADxIIDV1DdUo6GfTvB8VoT94gwjyrkekkfZo7aO+fW9QT9uUf2AFwK7HzbdgxPruQU+57uSgbjH0UDsxXGodkDRYVZq5P1717k0Eel6U4XsyfhMCsMg5o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790067634; c=relaxed/simple;
	bh=asS+dhufpvD0sdw3w0E5ZAF/ezNWEnXvA8VpgyLpvnY=;
	h=To:Subject:From:Message-Id:Date; b=RT/PGxGNIn7+XfPIqr55EoEuxNU760xZPTuKBhkOymW6Y4ZsY/RiqYzdb7uScKp/gO7TyGw2Wqq1Ym/xlJzreY3hZGstVQcSHYMOrjRfAZ028DrG7YiSX6s3GPXGOl89Z/iwAjhjNytcSSd2eiHh2ocjVj7lW/RvCZux5bCT7pc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=H/5MSriw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H/5MSriw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD7ECC2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 22 Sep 2026 09:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790067633;
	bh=asS+dhufpvD0sdw3w0E5ZAF/ezNWEnXvA8VpgyLpvnY=;
	h=To:Subject:From:Date:From;
	b=H/5MSriwOFleiqh9nzMFKvVdpaCqjKkAb3nn24zdmYPRoPfnsvEwIVImh53LzQgqg
	 5RujLvGaRNuixyiir59a129rNuCSaoTEMHcBm1fhqBvigPaTCnCkZg68dxZMoy0WbG
	 oHqzprfO6wscjgytTRvtmPJ7QW7xzy93gSB3hg8/nuPSabjqHuPTSZ8LgTZsZyXqw1
	 jQrqfYRlX0vt5rKL+mwd2Dz3Od9ZRUGWYi4uR23XCNAUygM83skyp1PBvWgnSxvsH/
	 tesnYaNpa6O7X0IKUr/E+kow15U1Gcs6BdIyeR4yvuje67TdOotaaIrJFCBzGDONi7
	 UKoeWVyO9v4Hg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABC47C982FF
	for <ddprobe@lists.linux.dev>; Tue, 22 Sep 2026 09:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179006763369.16454.1421883710525177424.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 985b46ad45615f6606054ccf29b51987c0ab3fbb58e10d3407f0ce35dc726a86
Date: Tue, 22 Sep 2026 09:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790067633
