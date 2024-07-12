Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 551581741DB
	for <ddprobe@lists.linux.dev>; Fri, 12 Jul 2024 15:49:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720799363; cv=none; b=QGReJGxwfeWBu/UvZadJQzVDrouW2e2NhedkKqZ5beXeg4vrzGBj1IjdqVGv2FaUxxXbAGaWgqwV3qB8YFUsP9KVkbA8V5TJqO3O5IhkbnQI3Rm8lNIDBYIbvyO5DzfmoEokC5PuCwC2NtHW43/g3GuuxpvGBHN8S+tDjsyHjfo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720799363; c=relaxed/simple;
	bh=CuZ5co5YLxRK9vQ9yVwlzXXfNVBU0WIP0+rNjLMEHJY=;
	h=To:Subject:From:Message-Id:Date; b=uvyZPTghQRg820K7uASyTDhWR21gte5wL9QI23uLW9j6HcUEjR4BTzD6w6UK/s62p5HHd/AZwQR1llaLvX4BULOSNGoiJihGA4J20AxDaSixDOdT2iMUqceRM9Nptq002WnxJA+NJxwF9cnQH7zDN8qHgIiWh0ObB1LSAxHX1PM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vAXyzCUX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vAXyzCUX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ED5E2C4AF0A
	for <ddprobe@lists.linux.dev>; Fri, 12 Jul 2024 15:49:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720799363;
	bh=CuZ5co5YLxRK9vQ9yVwlzXXfNVBU0WIP0+rNjLMEHJY=;
	h=To:Subject:From:Date:From;
	b=vAXyzCUXF9qjVk1fAkUoJtMtS/sWvPoi13Ij4O2tCmkV4JzcBVBIw0/C10qpFldZQ
	 UhlF8GgTZQCzGN/okCE+9GBfjDrvQrB0m18oeLFFL9BGp0YVtFUy9BqNHv/nHKDA3K
	 68xNEDtqVIyOphiCz0kjrlyWAbs5LSBAUt30WgRikPppMPF+cx+UY4NThxZpFjAQR4
	 j+nOV0admimzSQLfPPUSlnlww1e6G/Md5Tcu9Vx4Sa66QqO3eE4bYk7EUuRoxkW6vv
	 0D0m9cMum6HUnlE37kHPmDsrEvYVq4N36JosfycbReGtZDvbwTxrDJSLiZ++Nzhvz4
	 KxPgQUr4FqdtA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DABE8C3DA4D
	for <ddprobe@lists.linux.dev>; Fri, 12 Jul 2024 15:49:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172079936286.3415.13972688471830597019.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 48c798e45125e90fd69a6ca14e793e32e842cdbc424ad5a9af88eaeb5f49abb4
Date: Fri, 12 Jul 2024 15:49:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720799362
