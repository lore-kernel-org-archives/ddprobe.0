Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20C9A1CEACB
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 23:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749338394; cv=none; b=iYO6emEEZbSE6F5SsHA4v3Jv3j/NV8XqsCcxIh02PKqvPrEyJOVinflNBDGPccFt8U6sqq2Kths9UCd9SBLYARugmvE4Eb1favT9/O0pIShoRiM3yrw+YDUQ9rsmJpKdS71spFKJPveDOzyoMJlGI7/4aFD0XnAJn4wEbrP/MoM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749338394; c=relaxed/simple;
	bh=E9yMReuIJvqlxwHG5/Pr02UGTX/I4QJ/y3/nQttrU1k=;
	h=To:Subject:From:Message-Id:Date; b=VZ/oU9hQrQ5koj+nB/3jsBjIId8EJAEr0c5h2V42Z0FlfJV3rVLEKbuuUmjp3rm0zfQkLW44zMb9y+BkX7Yc9nGVbEE1xze1iqEroaymE9e6x+OA8Wmu49MTYbvoBnVcpHTxxqq+4jhCc1bMbF3zt+G6UHW1n2Kpfw7bcOUVPYo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LzQ4KTxm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LzQ4KTxm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A233FC4CEE4
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 23:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749338393;
	bh=E9yMReuIJvqlxwHG5/Pr02UGTX/I4QJ/y3/nQttrU1k=;
	h=To:Subject:From:Date:From;
	b=LzQ4KTxm4ScnUGPy/I7PT3U7XoEHO65e26ifvB3aG4Mje7vejeOhM92rJ6M5pgV+S
	 YkMDYOyj2BBg1qA9CG/VuLyWkzasRb6+2z25LXiw+hUF3pnDjhZms3Sz1wAPq9l4TE
	 fVe9XsBl3gKQvFhHfJ9Q4H7CPDGfDxKwvV+0FfmvJxufFiFRfm/rkhbzut6jcLuK3W
	 fRO2vWyOAC13gPy9EqX/pSd3zAs5+keWhnqY38j6jM1SVJ0MQgsFE+qq3S/XgyaeRW
	 fv2A0IdAYypvesgd6zdl9HkL6l0qMFvypcuWvHynplFV3c8W2Bcqi7/Q/HPa/ujW08
	 N9tplMyQRh/tg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E1B7C61CE7
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 23:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174933839357.12542.10297873172757805588.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6b1e11db2b478d21eafab994560397037b6b2bdf9dffb6c9ed780ea91e6c6dbc
Date: Sat, 07 Jun 2025 23:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749338393
