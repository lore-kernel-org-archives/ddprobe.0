Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E9B616729D
	for <ddprobe@lists.linux.dev>; Tue, 25 Jun 2024 14:13:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719324803; cv=none; b=NHKnVGo2mZm0WrEDHiQCUc7dTUWNRaCEyzjGM2hi6XGSDmfyT65Q4LpBe5RmHL0GuVbMJ47G5T36/6Q069Nerbls1KXqkRyLcrQ7snQ0OusizrKkuyXiVhrF3e0RQxu91iHoIU/gWo4x1TVaStHRg8OjPup3sGBT/GRbUDZX3Ro=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719324803; c=relaxed/simple;
	bh=HHFrNk25kFWers2jK5fW0UJdBzMayjEaRQpze+5Iq8c=;
	h=To:Subject:From:Message-Id:Date; b=gSVSju0mNtIeCS9MN7A+Qvur+bcokQIm4dWBYdkZibHnlNILI/0yzLkOMafFkKa5gG3FgRCrULQwRgBWPRIusJ4k/W009+zN7wDyOKWD+YLlbhZKB4d7nL+bG/bPN4d6G7A3Wkgy13+B/cVItPRQJULKTAELdd56XKOTd91K3+A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Uh2KyIml; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Uh2KyIml"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D27F3C32781
	for <ddprobe@lists.linux.dev>; Tue, 25 Jun 2024 14:13:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719324802;
	bh=HHFrNk25kFWers2jK5fW0UJdBzMayjEaRQpze+5Iq8c=;
	h=To:Subject:From:Date:From;
	b=Uh2KyImlJQrF6AUsA7B6I0HNczCrZmf8Y8YrYHT2T/696dKCWnGJcYHclKyQAIypy
	 jVEQU4J9iKS+iTtJLhYVZrkFWMsG+CJWHF9B1PiCaFOiqEvV21YiVF0REGP/9LeHoP
	 zOEHKqIToeCDLuzFozEgPRH3PM7+STVpNIvbqIlsZT7IB0oTn3EPn4XGEMV5A8a8WX
	 MSELPpgtBusAN1UxCIAdsUVDYMPfepjJ1+DtujcCipwO+YOZi6Qax70m1ND0xPPalQ
	 Tt8x51Hvj+rpQaPyYhvIsPxU/ClwQWTexqFWKUMa5DoBBzx2pkuE/+lQ7mvi77xlX2
	 KyDXJP7U9D5Ag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C26BAC3064D
	for <ddprobe@lists.linux.dev>; Tue, 25 Jun 2024 14:13:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171932480278.3686.4858575193467827267.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bc41f7b91e7394dc9b769893320ea2b13bd0692bdab7b4d7cbc5b5bab1f5d521
Date: Tue, 25 Jun 2024 14:13:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719324802
