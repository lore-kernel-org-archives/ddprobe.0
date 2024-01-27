Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 057AEBA34
	for <ddprobe@lists.linux.dev>; Sat, 27 Jan 2024 03:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706325497; cv=none; b=QuRCTqyAU2+XKw2Rkkot9dK5Hd8goQVr6XUAa8xWaYuaNT1CotFQdMxi0blfuJYmSz4eng+q8DuwtfsXuXsvQ7w/Xd38PLNkUTtdG9uFohWfMCRXewJCMW9vK0DNvV9OTPfjRHTez3A9adedXjv75Wf2GQauF4i1ubZPFxPGa2I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706325497; c=relaxed/simple;
	bh=jbjVWhdi5P/am+Vz7fA8LvvQm92ClgBLfASPbKt2m/8=;
	h=To:Subject:From:Message-Id:Date; b=eGZkKPsqLQTwreBDdtpyHGALu8CgMU4EycgPTLjUZlazV71kCH0eilc4V3xVnY8fRG6PnVEJwSkMeQ2+xb5DPKmFPQUpLMI8UYrIzLjy6JAWUaCvaZDfXtGkJP08MGg57FzWASBBknuKsVMs11rZmPkHTqBeX51Ve4B8iwsBC0o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=j6glFJ8j; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="j6glFJ8j"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7995EC433C7
	for <ddprobe@lists.linux.dev>; Sat, 27 Jan 2024 03:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706325496;
	bh=jbjVWhdi5P/am+Vz7fA8LvvQm92ClgBLfASPbKt2m/8=;
	h=To:Subject:From:Date:From;
	b=j6glFJ8j50flwb6z2Ob6g5ZwS+Di3rr6n9w+DTUgBlC/Robv2+OMFMiQBGpUtjFdB
	 msIsNOVC8YkxcaJxOrFsjqArdb/aXd6CW/RRISe/6QRArGQMf1feYsmFi7/6h2ewBT
	 TijKvsLHar6PaumZL7v3aLivEpigB7kEu3u3Dtx1lNmsgCQmS5s5Ii9U/ZpSxA1muT
	 Y8erWI7FpfNXzP2WxWbV3zUPnBm1sX4xpAwIPqgPcWkxvHUgU6QBDYxivf73BsYjZv
	 4IC7MzLsg7zzTvp2VqdiUsa/B24myH/2I00rXJVuxjx1TP3QJNPEslYXqe7v+6Jc0w
	 wE6SKpsPColFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5FE62C47422
	for <ddprobe@lists.linux.dev>; Sat, 27 Jan 2024 03:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170632549636.15138.11248974584600933523.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 75c117919e22ab9d213a70d21b658056e82716ce2408445663cf4076580e6b1f
Date: Sat, 27 Jan 2024 03:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706325496
