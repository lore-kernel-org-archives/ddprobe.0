Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D866248BAB
	for <ddprobe@lists.linux.dev>; Wed, 15 Jan 2025 10:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736937354; cv=none; b=WW/fBjVwPmVyN75JFeRp9+f1YWdvBTB+K4y7+u9ub7Xcc/oG/09JCFnPnKGfe6oi6vt21a/uP3Kg3VgKIkDVtfqx2+VZ+znbanHFsuXEUxKcY2xSqRuGQXTf/YCawKmDO40zdiYa3DtHSg96oEgKQZvuighdwb6J1zP1aJZipLM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736937354; c=relaxed/simple;
	bh=6GUfCnx3Io3sEORgWVNdt7YrrwutUqhcmtYOd69SejM=;
	h=To:Subject:From:Message-Id:Date; b=rMqxvfwywTlxhXNAUZT1jXzK0McPO4D/gtIYyW0lcvaVlZ5TB3d7wVgwa4oY7oqJZZl1naLgrdf1cPflbEsSN1s0ZwqYXvyONrrGIDliClRsJwnhi5A3p82jtkaHoGBjYg36tUn2L7Z/wHGPE2+zJcj+lsUWgxqHBtpWQTBBb20=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r2VvChJY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r2VvChJY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB941C4CEE4
	for <ddprobe@lists.linux.dev>; Wed, 15 Jan 2025 10:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736937353;
	bh=6GUfCnx3Io3sEORgWVNdt7YrrwutUqhcmtYOd69SejM=;
	h=To:Subject:From:Date:From;
	b=r2VvChJYE8oia2qfEA+KFrX/fwf140J/sKr9SzusI8FRCbJILwQJcCU+JOuBAN0IZ
	 ygUSlZai76L7l9TgO6L0GLxOg03P0xw6UBtLFI4hOSrk+0oUdLCebbcKShIsuwpwZE
	 gOYmlgsmqmsrXWnIJLIs5Lnb2WlMGYiuOdxFz5rwaiqiy3/YpcG8MKMsSAxs/es4CM
	 pISQny2bXvffTY0TQjTWbt0+yO2B+sRzh6QTYS8RybinrAITm/kYdd5oNiZ70+SqOB
	 cLJU9S1QRLB+hhYmTZx73VWNEwgCna/ZRe4hhOoVd0ZPicQAMD31TFW1cGBQBveTEb
	 VOAmTvkewnB2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98E37C02183
	for <ddprobe@lists.linux.dev>; Wed, 15 Jan 2025 10:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173693735361.18957.449520033501979110.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b01599a02b345702da412afee28255a99e772ae6ed99f37470d9749b8da10116
Date: Wed, 15 Jan 2025 10:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736937353
