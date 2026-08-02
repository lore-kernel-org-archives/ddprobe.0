Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 62C3630C63B
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 10:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785667234; cv=none; b=r1zDOGbBLJfCpR9tKCKvwVu53YOgyrSxAWjRFaJhn6ji3Fqznv3zAnwXd3V2Q1BzOFt6TuFnfPeEa3Kk4Sup52VLB/PzrxagB/XSyknSKrD4+VxcPMOWsvYKlcwJxh8t1EDtNzv4Kh0fcJ/+lNtKu+mviCiJtbWP5tI6Wu2ex0Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785667234; c=relaxed/simple;
	bh=CMeSSusUzmd9H2pG79eE0YKKXvfp+MhaBHta8vGuCos=;
	h=To:Subject:From:Message-Id:Date; b=XFf5LcgkLXjWV+Vwkijdisx5eNsGKbyqkY1F+GoacQSxPxKomxuTiXXvu5HJDUu0Zl5NSWNMFu4MbUFxWqi1L4UNgZWRHVt7suXS1ckz783B9EwjjG2fx7i9AccgPFgj7uWkBl8JVgvakK62GwWkR2yh7o+dhilMtW8+6YdIrQo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RczICisW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RczICisW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8C87C19425
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 10:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785667233;
	bh=CMeSSusUzmd9H2pG79eE0YKKXvfp+MhaBHta8vGuCos=;
	h=To:Subject:From:Date:From;
	b=RczICisWdmewL1mbYhoBziT+NZqPx6WOaGDwmxoB5N1nqyxmEwxSzj2n2pINZ3UKI
	 JtRfXuyvbek2dovc7xbAoy42TLpUMTGdWWySFSKG/dtNYDAefRKY8dzDco26lT65lb
	 EmuUmq0DdN+sRBYZ7AbqVS8/ycc89yZXsYupytEwGEXYqyatHNW2IErduxdl3EvkGy
	 hdQGSz+WuUK+bQWpQuOmE6mVtNB8ljrq9sYgMK5xvwz3Uq+xKSERar3GCP23Wh/lfP
	 GdsYYY6DlgjH+3GQk74K6mt+yA0twWM08o7Tunfn/XmTcuCyPG5/6AxGGyHNSQ4CxN
	 xMOHa/vCkIOJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B16D1C55162
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 10:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178566723370.1652.1160464594656428094.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7a0ac0ea868f1601310c412a429482daa08b74fe327975649272e39bcf595a01
Date: Sun, 02 Aug 2026 10:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785667233
