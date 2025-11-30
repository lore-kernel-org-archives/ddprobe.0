Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44890222597
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 15:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764516174; cv=none; b=hoMIEu6VYhttuOeKQr+NWsUKPgPP3Mu1Np1f6T2J3fbM9Mp7c/mmblOdMIx+IercQc1UH7QcmsaDQrtV2AWfjyP5iYt7Ob+Q1cw50CTBRCqzYB8FLDbofFiyofjCqzEDp9OWfFG8LkxJx74jersbgbB4RaGDU4L9PaO118aMkDo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764516174; c=relaxed/simple;
	bh=x3PDYYTOruK4DOYz/xGyPGST4I2S2u+awrfq+oZF1BQ=;
	h=To:Subject:From:Message-Id:Date; b=bErd0vjWS3EIT2oIxVp3tHzMIl6lGqqGWh2g6JHue55wXQt2OSrWsSYTzLn4pfWq3B0dJ8btxFRD9FSCx0MnPo5oKen5TyPj7jEDPPOeYNaeMrfrzuvizHxXw0yxKCcTIOO9MEHCQ5DxWbjyQX5PvPKZlXaMC5sYoqUwW6M0+QI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f9JugGyp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f9JugGyp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9236C4CEF8
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 15:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764516173;
	bh=x3PDYYTOruK4DOYz/xGyPGST4I2S2u+awrfq+oZF1BQ=;
	h=To:Subject:From:Date:From;
	b=f9JugGypwkVka9VqZaaC4ZzJ6HEJhBYOp6HcZXcyU+N50oUSoMKN2jmRipPLjlqup
	 /lsCG2HVMqK0tUGeFI2sEn0E10jKOLOQ1HpXkTDG0Fjsr9ghfuSXfXfj2sIPp1Yxxy
	 CPL7WVA3e9ruzJF+A5ikVV3TTxzeqLtR5XE0UOzUPr75i+WBRUvrHqOYKLNZOCbBC4
	 4MW2hh7Ze3rAmLRkMB11P/8UhDYWLcU/C99Zh16kqipz1beZn4jIPXRkm9Wk/ML1Nk
	 SYCD9UEc0HILB5j/jAIBzaOi1vybWM4sM0DFCX+sbtjEYMFIkSQBb5LsLlYHMGt7bY
	 cM4f/HpHvsVfg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98974D116F3
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 15:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176451617358.9422.11489174681854427059.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8f0d08e0c4b10e2a2983217cd6a0021927349a46a8afe5970df14901e4476b30
Date: Sun, 30 Nov 2025 15:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764516173
