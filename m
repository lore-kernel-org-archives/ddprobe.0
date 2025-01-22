Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3502D2116F7
	for <ddprobe@lists.linux.dev>; Wed, 22 Jan 2025 10:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737542754; cv=none; b=UGi7sj41/1s+4KtBCQb13wajeFhK6pBshw+OlWn1/RSQ+AyveziVZ5z0vUHy0X8cBHk+eP0w2EbAEIFXSW5UwEZ58KEdqog8JosoHCZK8KtqcMPbX54VbOrPpendEMiXjdx+ub7ZdEAhkyTCuvYbfyVyt6EUBCXLMBs+IinN8ug=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737542754; c=relaxed/simple;
	bh=JBz+6y1bSR6XGNOZuBJLR5fFve+CbfyXJkq4Xa5e8/8=;
	h=To:Subject:From:Message-Id:Date; b=l/ekMAfjbOvqtB6kzV7oo4Zbc8t/7lNV67p2LUjt66Hh3aZWGo5UjLirk6bzknDCxG+XgiQJrN8N98WOcI1asylxLXHlQT4jx8mVxk2TIpISXOLPdSZwwvGpYUXPyaO7GM5cxDTqBkt5t/R8+EjqUDqoB7O6aS3EJ02MtqZ3/7o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d9y4MMac; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d9y4MMac"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FE9CC4CEE2
	for <ddprobe@lists.linux.dev>; Wed, 22 Jan 2025 10:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737542753;
	bh=JBz+6y1bSR6XGNOZuBJLR5fFve+CbfyXJkq4Xa5e8/8=;
	h=To:Subject:From:Date:From;
	b=d9y4MMacCKlTj5HwMtoYgA/1E8vMMRP6Q237iZIUKgkhjrqPIc/b+SA50okktR9vo
	 VaXhCUpC5VnKmY3O8jZsPtJ5gfwyIp9Rh2wEwuulh2JjSBDL86P++Oo+C5TH9ZwN+c
	 jfQ0YZCcAkbhxSgSTcG12vlBa/wR16cIeXIsDtqpNOl0sAQckjh3+f/63q1+b+jdNP
	 MKDVzI+sCl4wIZKHGUYexF0vexuUyrZWA/PEY/m8SpAioWQ5n2Qj4W3b/RjmZ9bmkK
	 zKguctOa5j4O43UKoiqbYO5TGByYPn8ApBCzTdgfEAoIbcZUjL55TIXly8DC3t4mXw
	 PJSmpCjFYeYaA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EC52C02182
	for <ddprobe@lists.linux.dev>; Wed, 22 Jan 2025 10:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173754275357.18279.13687013793293769016.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 14a89ee7f42c91ea100a10834ac205e701fe1df0911230d1cee7e855f6ea4bc9
Date: Wed, 22 Jan 2025 10:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737542753
