Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11FD52D47E1
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 21:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764710574; cv=none; b=quIrCjts+2mnBuj+P/TjB2Wsymv05O0bkkPzkO11AZmy4WP2V1Pfysz9a8vKB9cd6s+8yhkO3hNHhdWJErNBfArEMp7FFc4smDchtwwl+r8K2sT5XqjO2h5gssDZ848dGz0w0RD98uainyQyYvj3N8L5yA/mO78owWWR3e1K3Dw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764710574; c=relaxed/simple;
	bh=BK0a3bhgAU+RYlJn8UxqgTfJZa9lMw6MBzQhqCm25ME=;
	h=To:Subject:From:Message-Id:Date; b=fkhooJd6Fewm/nNfmlfI2J8L6lT0WrI53nU4mHe9HsQ6APNMr5UWXmuUh7t3/ui643cvLlzG6mM21+uN0aEtja34C5E3pAc6VSJIeYsakyQ/jMYvcwQGp3SfygRZuDP7eOplDuvk3F0LhuV8qCaHJF9K7a5aw9f+gJVhLUJBHWA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iwMjA2hK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iwMjA2hK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A29FDC4CEF1
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 21:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764710573;
	bh=BK0a3bhgAU+RYlJn8UxqgTfJZa9lMw6MBzQhqCm25ME=;
	h=To:Subject:From:Date:From;
	b=iwMjA2hKK6fW34wRbgNkEFYvDlHapBajNcgyFCcuZ9+xD/HvW5jfpbL+OJcEMiI99
	 stL/Fck5Wc9FvKe5jFbl8yejTQxR154VYX0XxaM5tVXr3A75ADIli5SqytNS7DhqE8
	 n/Q8KnmjceoBS2oMnQRMAaL+W9zjiGzgHswIaIpLEXcM+ugMG3XQ8dRVNQ26Ak9SuR
	 dyv18MLidPiVn/AMCER6ohS5hW8DXo8zdMbemanq/Qm83qN2p15FAwaqfvulX6GjZW
	 TUtXzHqisBNrBWNPIAn86yoz00bxii2msumQ0HzChgQFsNOmAV/jJgOL/zMTLW3nQR
	 VR/AhK+87jaOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90D20D116F5
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 21:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176471057358.22995.4521279946617686499.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fa16c62b3cb0250a79329ce8a2e4088a35490e875a9b3044c427bbab569debdd
Date: Tue, 02 Dec 2025 21:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764710573
