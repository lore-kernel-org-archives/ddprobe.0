Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2192D86359
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 00:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758932994; cv=none; b=WMGTYr6cMAPa2ggCgHcb713296iPKGZ40K18aa2WwHCFZ5m1D+HNW1pF+tQO7XWe8bi/jYM7imAqT3zbr1wEzqhCHFGBgltm/6vIO8CKJXtU2h3KNytzhiaBs8rRr2c2xMqXesYRUmVTG9Dse9mDNSqfZ3B4p4U64fWALPPbC8Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758932994; c=relaxed/simple;
	bh=kdggLkR65FcvWmYyabZaLeXUTPu9EwVhgwm30R9jmWA=;
	h=To:Subject:From:Message-Id:Date; b=u+P3y0fI/wpBCqj35BcLQ/4LTwcdrEoeV0k948MoCwkCJIk3ewB3kP76K/fjAyV6l9McOuBx9Eyo3223U24lYIU7Ld47IhLHSIQs/Lg4f/FFSTA+Yp3wiVM0SaEl75Exz0tv7AQny5zJ5rfG/wJh/Jf+UEtB4HyaDWqcEszWKOI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T0NzBqj4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T0NzBqj4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A41D0C4CEF4
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 00:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758932993;
	bh=kdggLkR65FcvWmYyabZaLeXUTPu9EwVhgwm30R9jmWA=;
	h=To:Subject:From:Date:From;
	b=T0NzBqj4oyAgmIkEMxI1UtFCn+YopROxu52nTAsnBYyKKqsUVu/+tIbk/NIreYQi/
	 GpwLN7vbw4syAf5cUmkIaOOK7yqJ+94JrGo4ewM4JTO/iy2blTuBGb89iJil3qBy71
	 6d/1rjq7m2b9x2FaQweoA/pgOAHJ5qPq0vLJAp6Jh+nRH74cKzJvTUo6UebDqRiCX6
	 AIGKpp+0XGuTuR8lrpyysXrs3wNESQBKcAiCFor5blobI6Vq6vwBdDRWKpU1MbqH96
	 h6kYrwT9+IQ+5rbBm1yCk8VcMSRKe0PG2YD1XvL8lVvy8jmD2vcpYX6IooEXewIVKF
	 Rl/fDL4e8muYw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9112BCAC5BB
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 00:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175893299358.19026.13035169302319028969.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5847aa604e8be8d89e531396e2f6b6ba8cf82ad318c4d009b2a7c3e3231abd65
Date: Sat, 27 Sep 2025 00:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758932993
