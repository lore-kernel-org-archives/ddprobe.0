Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F5FC233136
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 23:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759102195; cv=none; b=iU54m11oGmrLFoaVq+J81X7QnSd5l5+nbrFu33yP+yqpVjtGIIyARaOy2+GGP9HsUjDJ73VGxl53hROybqNPcOmc3/H9/TjdPa6yWe+s77sBl1Q865IeesbKAkDDPIa5n4bLOxuU260bPZ9E0+zqLTTpZvJsoRYXuw5RpCYTkYU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759102195; c=relaxed/simple;
	bh=/qIVtlP75tSTgSRF/Ko8CgYYHuvebB/2OnNjAwYafsk=;
	h=To:Subject:From:Message-Id:Date; b=imlWoOUuaPc4UwnnLlJLhb63oCu9ud9m6seYMKuM9WlSDA0XbEhTIULVtAEpRg3fIKU16pB9DDo1kGtPbFZ7FnozjBtrk4iM4mkIASnB72czXdyWtPrhNG2a47GjpHpEEz28EHOoFcFlCIj3SdGIjfJmcL7AYf6WTB9Ys8A/b8Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n4AN6kpd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n4AN6kpd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A10ADC4CEF0
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 23:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759102193;
	bh=/qIVtlP75tSTgSRF/Ko8CgYYHuvebB/2OnNjAwYafsk=;
	h=To:Subject:From:Date:From;
	b=n4AN6kpd3khTXqH5+aMdq2vJfm60prcZ3SBLT7aQ9SMF9zORdfUur5+QWmK8DIobY
	 SJ9jeOrX5kt/+oZUPt2hrW7/xubeES4FPnnpuVULwhYMaU+QtXbcbp80mTT8vbQ2Mu
	 OddF0O18x4ThXYVFRpF4yNWzOEq+TzBXPgBA7pkilWhGc6K+vhbkiqAN3crP+BV5QU
	 GU7FTnEpM9XPZ1NMSZ12SJHULJcSCCJEPJo3U9swzy4++UpptRT4gImR2ntLAuywYx
	 Ta/aKvI55/qHp8OLeJXjdYEwVQEScNxHaG72sjy+TRlcMH5YnIu4tZJvcBgLTFINvK
	 LEyFoGXz9gg5g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F747CAC5B5
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 23:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175910219358.28114.14630142060004588609.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1435f4ccc69a282439a4711836b47a87f46f54a2bfcd7f88ad5c9f0985e6ea73
Date: Sun, 28 Sep 2025 23:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759102193
