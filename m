Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EC67B399026
	for <ddprobe@lists.linux.dev>; Thu, 26 Feb 2026 09:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772099094; cv=none; b=OggLcvNGlxlN6WGsqdu1AtmLpF0Bl3ApjZAyQ77plU60v1F8hRg1I5s+uCIjkU/0pdlLCwY8VpqxfYrl6CEcT436RwY4tXJtz6optAfKBFOF43bnwViRhcCvtJ2CGMBnHWMU6hJeRVX0/B0W7ki+fhvktAOXrJqeXv/bGNp+ZLY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772099094; c=relaxed/simple;
	bh=B9nffQic3VuNGarK+2EA+pWnhmH6FiGY9RpGilBtKrg=;
	h=To:Subject:From:Message-Id:Date; b=j+psqu79zV2WaApPSTWrEmHVXRKI9Lk/dIsTkfh6KJ8NLAt/YD3S6IIjWHEDaYdAxb30oHiKS45W91EHDOQcKemoy5bywuXr35hZz2HF/L1rhCqGjxN0xYo4Z4+e5IrGApoo1Ags2hmxltQ4hj32sX7QSJqJ+cSYKqtSYBhED+E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XSfr4Yjx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XSfr4Yjx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2605C19422
	for <ddprobe@lists.linux.dev>; Thu, 26 Feb 2026 09:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772099093;
	bh=B9nffQic3VuNGarK+2EA+pWnhmH6FiGY9RpGilBtKrg=;
	h=To:Subject:From:Date:From;
	b=XSfr4YjxN1g3gZB+2jXD0cyQMN5VX70Y/NcU5ZW2PQoQ9YtD6sqkgGsWz6Zf1OjCT
	 Wl6OVYxgRU1xADnDfcRdWSMSnz8s8Uhq+5GAU7QSEciFwnd5d0UetBHzhoytUiOjOh
	 oOksEc9CWM9CT6DJWLLFdeJUJChA9An3amAd3cQ9lj0PSWlM92T8V55vjmF8sNr6Fj
	 Y4mcw9221yEmAF3oyW6PAHUbW7uyN8NtVxgXlYWkKphA7aGSrIBbEcf0BOtXItE7Ut
	 QdeXGgHG/vbsssxen6rzSmT5jAF39wkA4mwr4tm0xaOlge/ZpFXGpYDwg/5M5wkorg
	 /HBRn0mq/hF/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93B6CFC591C
	for <ddprobe@lists.linux.dev>; Thu, 26 Feb 2026 09:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177209909359.23738.7314660298819145135.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4871a045e447f85cc77008eb1edd1be02fccb28288b1af1659d00ce5de30e81b
Date: Thu, 26 Feb 2026 09:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772099093
