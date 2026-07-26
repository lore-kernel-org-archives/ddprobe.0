Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6017C3D76
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 04:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785040234; cv=none; b=PT1B0R/fSP0WxrsZSXw4CPVoYLjMvAuNkWAnwo259E+bMn1f8LUnPkERRN7thj/ChUD3erKl6SmxtXeq/GXlfrEbaLTp+K1ifPEF7tms3IXhZMZpFwsPYXnoFb/HjUXyIQYaH/hWtGG8IgjKk0DOwfS5Rejyhmuqmis1fhnfHo4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785040234; c=relaxed/simple;
	bh=SivLx0gZLcF04iTgOwrhrq2UpRrTIobvnBGmB3n/nyw=;
	h=To:Subject:From:Message-Id:Date; b=cPox185c3sAs662GSD5e0neBNqXwaBSFPcJqga+158YOpx8PidrAXyUx8apVNh19T3DoQOB5DfxxCziLZzoi0Il5NCihdD/meT0rCvBJEbIiuSBHt5lQflwc4va8RnSxYB5FejaYgsZcmgiJ4sygSwmr3TxTQJ2r1HFV3N8YTkE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lZ+qI/64; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lZ+qI/64"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7087C2BCB3
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 04:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785040233;
	bh=SivLx0gZLcF04iTgOwrhrq2UpRrTIobvnBGmB3n/nyw=;
	h=To:Subject:From:Date:From;
	b=lZ+qI/64jU0/Vjr8IOVrWOAf8/Wjya1alQyxQiqVtdFI0m9LaBdOyKidbBdqb6OZt
	 00ggp1UZvKZyRGh3ooTujWbEPSRiYHD1artOlR4+JE1dTNc654fk86GZMlKuQloPMp
	 XQ1ScclhIu3qsW2aDO+5u/3qd+5rLbb1JR5iEdk8cFPHAnLOdWYeS9LVzwjtS/vEyg
	 u/oXmnHIwJTCfTulwER3dtIsD3ZCS63+qWjKUkysu5NHOqwk7XD5wmDbEEFrvLKowa
	 nOtpw3wEyGTqL2yHOW19DRPk0Ii63XFVr6QaRbLIsvEgWHrQtC9CzoXXaHfhzAX2CP
	 YW5ddMonxSu8A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1EF9C531FA
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 04:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178504023369.28486.18260269644785651620.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 72d17d4233d974dac11d33d8ed4db9ab3a58453fb43fabd865fab213761a08e0
Date: Sun, 26 Jul 2026 04:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785040233
