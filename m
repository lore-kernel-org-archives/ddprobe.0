Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EBAC254855
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 17:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759082394; cv=none; b=nIwHUBB7PtlYYUMDDHKKACFWYWzkxrChNm3a19QdABus9SbiDXvmHh/igsbodmxxnfmVcrx6qllphOO79FCeL4njUdrPxwIH5JmzuSKSJkRLT6toyMRUbKfyq8UECYG6RxtyAHV9TQDF+qMCAjlx2au+AjjBSNlUdG2zY4phKf0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759082394; c=relaxed/simple;
	bh=9CmjyHdwVDZh0nTJaNcG4OdtgE55FIsyh/z7usmlK54=;
	h=To:Subject:From:Message-Id:Date; b=b1dwEFOAyCzA81U7Noh0bfwerzo4TPnLVKx23LripzOvPJWZsV6wugiyre47FcFpob5AtMr0cIBh31If1M0oQzKudCDvL5Ry4lBS9mhAumjrdNytgLRayfzgnjooWVf8Lw77/jbR59n4CRTJpsJiHrwVzFYQbMqrO/Pivm1VYo0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dyOsZAwK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dyOsZAwK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9231C4CEF0
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 17:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759082393;
	bh=9CmjyHdwVDZh0nTJaNcG4OdtgE55FIsyh/z7usmlK54=;
	h=To:Subject:From:Date:From;
	b=dyOsZAwKJ6JzG3+biiZC0HE1dEio0bbIXSWd09kYtddag9aFZnAWlneT1h/cmHlw6
	 Frsfp0YQn/oBev25H39bXRVhjelkSFX6VycnnnPfNlCQ0T3cEAQPg4ybdZfCrj5W/X
	 vN92tXIDRVT9rb65j1OHRSG8VqvvaEEiADRJdHllZF2oufNxyu/dYfeZVg94xNtHfs
	 7ZtMrL8x11XH01lPDchWiqt5yJtDY2c2Zh5QJhv9dZ65Mr7YrbqzlTQIZ2Or9UIoTV
	 xLwyK6jC1edq+CgQfSY8P6Tp1T/eNIemtWA+0+NA+SF7tMhAGs358Z41Dhcs9VYg/O
	 w+ZwuJUVRzfOQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95946CAC5B5
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 17:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175908239357.14670.7881991792854508811.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d65f22e3af50868b561b6fde225ecdd3c63e7ed7184368d34d9bbd1194584c9b
Date: Sun, 28 Sep 2025 17:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759082393
