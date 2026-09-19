Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48E681C84A0
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 23:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789860634; cv=none; b=Jeg5O5Hen0N2YJ6WJdIZY035dYDX6rcF+ImKom+SN0P2mYwn7iLloqF/MBvg3UfeULxia6d8N5jrVIl0kRXVl9IzQ8ap6Cqj2HChAcy6XktuagKeh9XlvibjH18xTTi8ytSEL5vGCWz/PA3Hnh2umLaWQ9K6UHXGkWUi2HvTdtk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789860634; c=relaxed/simple;
	bh=ZMOBFL3IzInFs95Hc6tScf0IG5srJuhtyr8ohkGfUs4=;
	h=To:Subject:From:Message-Id:Date; b=SP5ufO1khnkFRJ++qT5gDCYO7SCMAl/ktH7Fgl4xbaMr4lO2VO+xbm0r6SXmHUqMo3kYC0896QyCEHgGBKX5E6vj/o3nbZ6ur9ux94+BuX+VUd+9GbhRjpwxDxbiG98goDY15v4vlskgIm8yYFjwkgxjmJTg+8j+0TTTIIyJWEY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T9YZrob5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T9YZrob5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4158C2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 23:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789860633;
	bh=ZMOBFL3IzInFs95Hc6tScf0IG5srJuhtyr8ohkGfUs4=;
	h=To:Subject:From:Date:From;
	b=T9YZrob5MqmGHO4ZMEFqOmIRNOxVGexhimBaPnwT5WSdP7lCYSUlxgdIczsDhGoL5
	 VnRUJazh/oK5AH/n+TDaXMHmXId8ODqLlLxNbscC4MqXKf+P5ZZho9diIEGhNMzEiq
	 tLqoqzg2a1C92cBAmzFhCCPIfB+ghXetHi3pCHWSGcrndbXdE/frPhbBhaM6IIymFW
	 QDJzu6IHIpS5pI4L3+DEUAryiI9zK+eFASn7NZOzh2OfatavLd1iFyHJX9PnZX6XX1
	 dmDfX8r1HS8SwKmHotc4TN54zRKBaIXcceCtE0uQbK3lFXyY63uMM+UNBWuFHBJYgw
	 8loVh2REJs3oA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF4DFC982CC
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 23:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178986063368.13818.3630892568261088051.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a44c0fa6f5218bb27fb53052dd6ee06e384c4449a54c04c40c81183b4d3454f5
Date: Sat, 19 Sep 2026 23:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789860633
