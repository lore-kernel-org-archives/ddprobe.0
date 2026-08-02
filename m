Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BFE7184
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 19:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785699634; cv=none; b=D5tfcwvMqJk55lYH8/vIYIiSoCF3VJE8gp5IVF2oqbXRDIGlwrQYYjKykfQAyl8nKLmKyInsJtRnC98UaoCxIaZnFouIXZbZ+slGyGfSMLIEUptMw9ryIxHcf1MjP61PVuRa6377Aeoul11MRHgTbNOlYZ6pNzCKvbcZy/J/a5I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785699634; c=relaxed/simple;
	bh=lmhFSo9OUvucx5rezu2g5uExZjA0/KiBQLJULEJBX7o=;
	h=To:Subject:From:Message-Id:Date; b=jIUQk9xuylp4eWM76lKMu9aI7/WjCxx1tkdUA8SbYprolAhYZfcykZx6lw1KvjNogVsYU+a3g0xkqnzJq/5UtLIxWvukiVbb2yWc5+BZlM7lXAzQFTi01ElmQj77Vne+H26IRmPqVG2DOu5pF4mGsXyJphuAwmckacHQ7+7fxg4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XsMAhmJ7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XsMAhmJ7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D775AC19425
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 19:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785699633;
	bh=lmhFSo9OUvucx5rezu2g5uExZjA0/KiBQLJULEJBX7o=;
	h=To:Subject:From:Date:From;
	b=XsMAhmJ7BgDEy7ad/m8g63Sg3Nx7H3WPMLZiYV55QEM0+2M8odN/X7jFj6TX9H1f6
	 cuiQ4ti6VA06nWW7Mb/GNpM/V6lybtBMXwtrMk0OcIGDamfprFOkBV3wcy2YjPg57x
	 eYtsdkPuLVr746Dt4/63A2SYNhMX6kClJRFXTgw/6gkn5/rXoeAxtAni4z/FLS0P9T
	 8cyJYcx2b1UHFfuzVQAt0dnAC6Tpfmoe/UFDaYsXMYtxzghz9d2vgGKZyF1zTad+W+
	 w1YgNnuR33Qabcqt95cSY8Dp38HX70+wZ723SHRnAUZdCW4nMKVOvpnSWcizczARWO
	 z8T5i71aGqqFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADA12C55162
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 19:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178569963369.2316.2859565255576760025.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fb6c134bd373056cb701b7edc7d32d728c2d0026a6eadab4bb5d5e3e3bbdc3a4
Date: Sun, 02 Aug 2026 19:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785699633
