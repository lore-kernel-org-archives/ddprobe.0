Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34B2A1494A8
	for <ddprobe@lists.linux.dev>; Tue, 21 Jan 2025 01:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737421554; cv=none; b=Dxg3WooEGOw47y9613I1bu3XSJvOHgtHymKF2650Ksd6Z1mm5nCLQJccLvEI+Y30v8MHdUey/FMkv6lmG4Vw9CbKnat+UNgVJ6DLP4NWMh1IqLregeAdsCppLi8oC6oKt92IXAvO/FOvMO1Z2QAem/LTJEnfRkKXV+6SPR28Zoo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737421554; c=relaxed/simple;
	bh=a6eqoyHQi2EL7PWXFjXp3syJcSssFA6WuYgfPv5ABkk=;
	h=To:Subject:From:Message-Id:Date; b=mWSG4RBnKw3mePucxCOl2Q3FJB1mQv4TaY6MRF4vlYoLMGtC633G/mfYU7nk+ieSaPHowq2xQt/ApWpLg8l39xOyklkk4TzZVE9q4GU+KlcubCsgEdlAjA17rfrt5MqVKo/H8apqZymjnAwn56SyVxScjFHB0OS94MmoqWy18ak=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E7WLyjLZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E7WLyjLZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6125C4CEDD
	for <ddprobe@lists.linux.dev>; Tue, 21 Jan 2025 01:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737421553;
	bh=a6eqoyHQi2EL7PWXFjXp3syJcSssFA6WuYgfPv5ABkk=;
	h=To:Subject:From:Date:From;
	b=E7WLyjLZ7+1TVo3CnZ/LSfGGe/rc/AY6q20WDzpR+vWrLtAB4G2rr/pSbzJNbvjX4
	 MejgSs0hXM9I82uxnXolQQctvFcUcuAebqUVaRgZre6bY1WTAyS7XXLAZyncK2OgbR
	 94KtW2NT2mqO2H8yTqPa78AF0B4j3eeBhRsqzdy9Yin7HV7UwLRRVoEe85hB0t0yWJ
	 XkURoDg0X+/ZG32ICksblFeiR4zGVpcgTufEwLgI4BClj3LYqH2P7OfBsRxqLIjeN3
	 sK9T12WWHFwP1g/V61LQpgRHSB30NuWcxHKyhExRGgpDWoymvxrOYbwpSQeQA0OZG2
	 AvgXQKVQrv0ug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95141C02181
	for <ddprobe@lists.linux.dev>; Tue, 21 Jan 2025 01:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173742155360.27392.11729317822909792337.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 23c1807d3d5bfd524bd26f9d8179d537d762b8cf9ff266df710476d463fb9b00
Date: Tue, 21 Jan 2025 01:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737421553
