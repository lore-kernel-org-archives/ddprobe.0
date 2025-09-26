Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3363E34BA5F
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 04:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758860995; cv=none; b=fg3vcIFKPfW4WNP68otcPCeDl9+kXL1hSAhya+xlZENA4iBxwmXQpT8E8z1xpzlxLcUbsxYAGkvkoYFIlMhgSaUvlmzOYBATb9GUlvuLIF25YOCG0Q46n6z0Wc0SkYH7lE/cBAw40WcEgNgap6J0hL5XIm2oKVvfb6zcuu5hBe0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758860995; c=relaxed/simple;
	bh=xcVof3c12jGDsN/ETKWicXLSRgGFOl62Qn6GWNB9UPI=;
	h=To:Subject:From:Message-Id:Date; b=OJNEf6XviOIRzNwsRuV6v/yKzp+b70pBD97giP6UgtFwRtMukfTrf5FnynDkdqxpEejYLI9GQTxyUqabveQ1YHeCvmTY95caJFNQsg5sv+0SU5fg/8oVhn21bF3CMMpY/KOtR9WR7HmjkYn/necOE5qCNaQE5ji8S4lonGyfz3I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Dh99A2cA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Dh99A2cA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC55AC4CEF4
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 04:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758860993;
	bh=xcVof3c12jGDsN/ETKWicXLSRgGFOl62Qn6GWNB9UPI=;
	h=To:Subject:From:Date:From;
	b=Dh99A2cAWtUkmhzXlniaBZhxrSHJwbrCAcq19OgeOSddosk+eKNuYplyoUWVdEw17
	 Ym9QVlcRRhiZr2tIIjyICFxdeAs7KKG3+/Qm5g/AFiWSkE/p9tMKSN0oyUmGf0YlDD
	 wRCWnGbsSYs5MTC7bc/Ukg4NB3KyR1J3P8dtUnyIjNkDM2Y1lM+hecBXY1iETgv9w/
	 nU9F1UPmcYaeJClBw/Bu29pfdd+765WiqUfHAPnVWyFK39yyu2c1/Pj+Tczq3RD7ND
	 EQz5c8fJ9kOgmd9QH1dhUHgNEwJhNP59qjNRNOZAxXwE0+5U4KFARGu12yzqaL8SIy
	 9I8ItgCUWe9pg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99804CAC5AE
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 04:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175886099357.23627.3460313762726200672.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1aa6bc2d170bc6c5e1020c592a2f5e839abca312c93c4e8faba8960dc1efd4e8
Date: Fri, 26 Sep 2025 04:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758860993
