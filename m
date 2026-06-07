Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AF3D1A682F
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 11:24:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780831474; cv=none; b=Jpx0rjOMrlUhvgwJ0KNqb6O4IG8FI50RriYg1YbX6lUVa+zQ1CvAeqdqbhvTCitujJ+D9iltH74gwa/pxsR6Ac+QgYazGaA9uY1X4vuUgQTxUUiNj4pArpfwe9dT++AHZUVXbcRZvKrvxmHK3BgXzhX/Mg9rusH+swotPpJqab4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780831474; c=relaxed/simple;
	bh=ASQ2J4UBZ4e9VPfvlFBbEvIIhKHHViKS5ftbaU8zgwA=;
	h=To:Subject:From:Message-Id:Date; b=tkLq0RC1PjUSUbK/jeeev2rBSKfCSZMUeb6PrAYQ5tQ4rfBQfRjZQZfZeTj5lAyIDRrHRfDF3M+r7E91pHiukosYjhfphu/x40USEf34ygVUNdM4yQWZ+HanzFsrqTN84ybramEyEI5t1ibEXJUnixnjoGLbs7g2TGV9lnkS6b0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ccah0OkB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ccah0OkB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB1C9C2BCB4
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 11:24:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780831473;
	bh=ASQ2J4UBZ4e9VPfvlFBbEvIIhKHHViKS5ftbaU8zgwA=;
	h=To:Subject:From:Date:From;
	b=Ccah0OkBKkzmVtGFGZ6+DseyINuv54foZP9S+czX/LYcRPnvYjn+gQOFuCacqRYW5
	 fcb1Z6GWomdVAVfYhkDmqbtgZryTyCUzTfq9yOHQ2QLtKAYo6zi44fd1PMA9gRGB9J
	 4ptbOVEb2UaMVs1ZBNJYTpvUTe0RISiXgnS9yUzc/MUQGfwXkbl+otfhCUqrYT2DRC
	 I2dIRH0lexeTza6GaYSqfv+phsNNb8Tb0DHPreoubegQVJNB/h54fzSXFE8LVeQqbk
	 DD1HWYGq8p7LZmi47xUcI5Tt7tf8uZ04HFhir7O0NGzg+sT0TJLd5Rzq9NY7Aj7NUk
	 Q6r955hxMSo8g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2D76CD8C88
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 11:24:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178083147369.3543.2398630736493008929.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 31c8bbca8a973c3d7a93377cedfc76236b77dad801d194b82358611f0a97d507
Date: Sun, 07 Jun 2026 11:24:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780831473
