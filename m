Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 120A229E11D
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 19:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774208694; cv=none; b=Z3TgNWyJoUeCXqy+cAGncOCD/ie/YItJV6zltC9LKeQt/w9fFZflCKixKr3FJLPDlBA089TIY1tGPWE5rsR2+JeBLhSzTeSTswAg7jPewm7Jv1/O7u+vyFQJK7oeuRY4cYiNJ2T/+ch2T3YoiHPd3m5kXhyJG5aWAaNKy83AlOA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774208694; c=relaxed/simple;
	bh=fkdsKsFPUtMZBLchuN/l567nsBi/Gqv24xbRyEFiU/4=;
	h=To:Subject:From:Message-Id:Date; b=Yr1IZOJUVrO7eZBbxl4MB2j99W+5yigXQJMS1hCzmKdBC8/x5H8MEhyvRbLaVe9Wp82zpPZ/qZOgRk2JFiNGuAd2iotDbSH98VLS5FMz+6/tA9NC9BCBY/K3bdhvqKvOJYCY9gv5pC8ICaRcn7b93BlY+4U6lh03745qZM7FOcA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FnwsmoP6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FnwsmoP6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4AC4C19424
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 19:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774208693;
	bh=fkdsKsFPUtMZBLchuN/l567nsBi/Gqv24xbRyEFiU/4=;
	h=To:Subject:From:Date:From;
	b=FnwsmoP6tjcoYer3zuyppj6ij/SvTqVdrJz8nYSI7aKoEGVpQ7v2A2VLnQzYxkOOE
	 2mwIRYvCcg5cVALLRkeJxM+d9GFAnsDB+P0ty9+2DT+gnkn8a5UMjxLGLGbCAZYjO5
	 wBw7dYG8msweJoc2EJGAlAwuMmcma5ZV3DrazPN4WcvoJJoXIrbJkMGxRQw79Tem4z
	 EePM3tpICDASGR5lUUhACOjsMTmqeN5GpsND8znV3HCulHfJqHiXdvzS3FrhN4EbIk
	 hk0O2BtiSncOSqzD2tAqPzc0APiwfgdc6evm6n2PXHhn2Z144ztT4QYzCS+xQJ59R+
	 6kBpft2qJmc0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96815D58CA1
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 19:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177420869358.12477.16098765413689855728.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 26525cb71e854deea9479d9ca9cbc672211c38b3ea62cff1da6916bedb8ba416
Date: Sun, 22 Mar 2026 19:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774208693
