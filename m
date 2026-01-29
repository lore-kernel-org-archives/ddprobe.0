Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CEB0B2C3256
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 22:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769726633; cv=none; b=jrwjAK3Dw6qVjGp0ojtKuT6zNYRMUdVzedl4w0o7MWpqqOMy8V8OcTE9IeElZd5mRE0zAzSR4s7vDc0GqNs0G7cyx7J6lj83ExDhNoxmfKKcP5v1/mnInIgCjXdMcYMOAEbvcRyJVIEMWZPm31CgN6JYLXBjPwx0JueqwSo4deo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769726633; c=relaxed/simple;
	bh=fQyFTrbn59bByU3oBHYr0jKTe+pS8t82Mufi+MvYEr0=;
	h=To:Subject:From:Message-Id:Date; b=tzrADos5l+pH+Q4LPZ+3+twtLWgHvL2Te47UwhXC1JIs2ItdpD5vodz13PGMvQRDXMssf0XHUq9okLnnge86eJc2xdDjswCWkc228KtlrJobv24fP1KbwsqD+IsuChGNKwui19rhrdbdUKuXPUIYl7/SYWeeXbTYAaHvrI23YWk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LfsIhIQ9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LfsIhIQ9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7082C4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 22:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769726633;
	bh=fQyFTrbn59bByU3oBHYr0jKTe+pS8t82Mufi+MvYEr0=;
	h=To:Subject:From:Date:From;
	b=LfsIhIQ9IDaSvtmkkc3B2kakGU0CwEU16uiUqJXTgq0q58ZZZJb4aYxPVG6LcvPGE
	 QOxAtd7BkDsPOUrXfcFKZpvYF1X7GMD61tk6ecW2QvZbsKGiC1q4WDO9tM7msG2FzU
	 1ltmAcMJsFvrF+xFE3k3IgoOrSUuA5ulIs7H+MXCSAF1N/ihOF+MF3vi5jRapyGriN
	 4cawdQDByHECJYB/zIO2DyzBMAekCf62/32+L7AM9NrAYYLWN/gIg3rDENwZTn2mve
	 GX6URv2Ld6E9c8cNWPHP7H0P9F81DYKqy1Wwe9EZk0luxQ3S1knOgSTRF5GiOSOE4h
	 l/3ltbl+0vJpw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94EDAD73EA0
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 22:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176972663357.29478.798828895815063055.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c3b4f8f3303c97647730cd1b36bd8c9ecb5ee09ae26e4ce1d710e2f0b2f36774
Date: Thu, 29 Jan 2026 22:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769726633
