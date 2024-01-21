Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EDE74383B9
	for <ddprobe@lists.linux.dev>; Sun, 21 Jan 2024 19:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705867097; cv=none; b=IJruaYLQGqDN6w1nSUGfBWHWu9HL5t+7qyfe1vKo0/zUUUY8R1RTw8TUdEo1gSWN9jch4ZEKoclb3Quk2PfaeokL9NT89S7hAcrzAnRkD8nwhGbbD0+OuAafeAiQGnE0rTJSD/sxdS+V11nV/1Y5Bd8k8g8UB/XspTSaV/K8GU8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705867097; c=relaxed/simple;
	bh=BBcb6dITdC/PUlAcwdRx7ym/C3NVLrbHYM677VfZp6A=;
	h=To:Subject:From:Message-Id:Date; b=QqhS5v7QRJUsPqUeCXkmc6OiKUhJH7quPK+hR8jxJW3IJbLYsLTrdvaIWiPmguEVmbZtPSJcEkuHrW0d0+BtH5Pd97q1mG0KnzSsQ0ktVaAquu7pB1c8MdYbx9DEsg6Yn6rCzeSi6nus54ubl/5WnB/DyeuuX0m5YicUtcRxIns=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GxFhngNl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GxFhngNl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7AC63C43394
	for <ddprobe@lists.linux.dev>; Sun, 21 Jan 2024 19:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705867096;
	bh=BBcb6dITdC/PUlAcwdRx7ym/C3NVLrbHYM677VfZp6A=;
	h=To:Subject:From:Date:From;
	b=GxFhngNld2eaD/3xaPIta3AM0AHObWBuUbX3fsPluoc3wB5cGMXMlPAcmAZyXOfj5
	 9gTDN/OgmTscxNGayjaLgzeSm2k9tTBYXODadKRKsm4kdVTs+YceFj5FFKDsvyaBSg
	 TP+zmvdffY85Vu9Ro3BX9XCkBMnSgLt/hEdLH0piSa7r3g9Q4iJXt8aus5vZsnLoDg
	 aLX6eVyBodDrzstahWUZmxk1QDkXYw7STOVNIeOHcorc9qFHtoVhYe684etP0Kd2Vw
	 Gt7iuQ8hS8btw7HlQhzlnQKPlm47GVIo5oe6ZJy14111zO8Eocx1LD0NEfZjzYXjX9
	 cDF7RIJH3Dx2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60FC9C47422
	for <ddprobe@lists.linux.dev>; Sun, 21 Jan 2024 19:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170586709636.21376.3432930089233445875.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0e92a552255d8b9bfa38d06429a9c1f9b3a69152bacb40753ce9b16ba919c6cf
Date: Sun, 21 Jan 2024 19:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705867096
