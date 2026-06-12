Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3ADA03AB47B
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 09:26:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781256394; cv=none; b=DL9pglV1fbJykMDKMXZsIBvpWl9Ls6tPlIguVgYS1vzAiDGD2ZUVkgyL4i6C3nKzZFExJXvrhifeDHKMAUhwaB9qMY50wzjrnBqX9VPP9yEuNtQrScuCjaU4pLESdkrNvR3ZPkL/427AZAnWstUwOrP37eTMn0FWbLAJRXhPd94=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781256394; c=relaxed/simple;
	bh=gVi6QCk4dfFVBcvkvhLZgDGr93XePJR2OthBG4SF/K0=;
	h=To:Subject:From:Message-Id:Date; b=tEccqDeeY0VpGDF5r3lWDjM2ZHH/HIW4iDrpr4dfejtEmd6BMgynXvNTBJPxjDAPTZq7PqoDTkbCSaZ5rgouxIOTT42JXvbwP0vUnXBnnSAdxCOYk/skom+hyoha4bouJfYGWm7dARICvMRZvqU4FCab54fda6SWxJEhlRj4BL8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u5cYxXk6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u5cYxXk6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C638DC2BCB4
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 09:26:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781256393;
	bh=gVi6QCk4dfFVBcvkvhLZgDGr93XePJR2OthBG4SF/K0=;
	h=To:Subject:From:Date:From;
	b=u5cYxXk6egxhCztuS0X+g46kIVdSJXg91HN8hA0s06H1Tsh1hgf7hQV/7z2qqm/67
	 /YitZyd5cRe1+poRlAJohEn3Rcchh/ISL3RXBvuA34fHI39b17I/2tJS0wIwJEr0y+
	 62hc8GArtmj+MIp+ZUkwlps+qEVeYDbYDAw5S/+gZj4yY0LCWSJkABgvrLu240NaoP
	 /S44Y7v3vV6b6NTcUYb4V8K2K9PBi6KNhuDngf042nAP9XGJ3B5O/GuhwbJX8sfUy6
	 OuLrqNTF95PFW/1Vb0JT4Jh3499RJWZa3qG7OjRy95XBa4vZck45zDA0jyR1xIH9Ke
	 p+XbnNgGthMfA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA3A6CD4F2C
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 09:26:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178125639368.22001.12475971694379073186.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f1275a72097dabf085393b786b3ad8558c49b22b4feae7e8d0e9aaeaf1025f7a
Date: Fri, 12 Jun 2026 09:26:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781256393
