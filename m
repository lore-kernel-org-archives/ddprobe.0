Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31924125D5
	for <ddprobe@lists.linux.dev>; Mon, 13 Jan 2025 02:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736733954; cv=none; b=E2oErSWWTBl/KFytylfa4uXzC19uZrf2IBg1oOb4socjDrDJ6tf1WOPKTxilyxztX2cwnJg1d3xEFmEQvacNNPdh0ucT+yafSbCEKvvpQBAIrt2Kg6K4wizchf1kyYteUF8V8orzcw/NUCNOYUv7Yb7q+KZoINWAbavi59o3rCE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736733954; c=relaxed/simple;
	bh=DIiS58S+GcuLdn46044eOeTk3687LR6qGA+oVI0R6BM=;
	h=To:Subject:From:Message-Id:Date; b=QVYc+u3rE6LKeZ9CPJiZZSQrj8kr4DaWqn5I8Yw6x5F9FTtYA3KmqgRMbPZU8YxzumzEYQBMoUnSBSxljrODyTt02MkfvWwGfbGNVVoDn7AfVI66S1KLlzCTKGZ+Hc6H7MERNogzS6Cx+zCJpnt1loZ6etNr5IqURXWj9iYftw8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gfuPTUKi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gfuPTUKi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB437C4CEDF
	for <ddprobe@lists.linux.dev>; Mon, 13 Jan 2025 02:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736733953;
	bh=DIiS58S+GcuLdn46044eOeTk3687LR6qGA+oVI0R6BM=;
	h=To:Subject:From:Date:From;
	b=gfuPTUKieNtKLiefVx430+Um8g0g63GuWgWg7lHprcAqejIHvFWxvBXkcnECdZ8E8
	 1sGpPg9XeliFXt5TfrYxyLLug6nDQSmj5NpWAcdxHUkS1SZ70QQ/WVZkFIHxAasnuS
	 Lnppi7z1hNi607Jyz1Ku3HYAWI2LM7bN993jHEKRQJqWbMPvwZLZpJgDgJNwKk7DBP
	 Pql0JUQd6TQ6YswuCcWj3i5Ur9djrUfeDOTD3EQXbu3HjkcQDHUDaSwky9clnEhmKR
	 90GR+8MQo5gkb8wDaxc0UuLCNV6Me/NrtP9AND2+yHcS4L/hFzw9ysLWZN12cjoCCH
	 NqKk/m7A3/9NQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 986D5E77188
	for <ddprobe@lists.linux.dev>; Mon, 13 Jan 2025 02:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173673395358.16567.6087421385582342547.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 57bfcf14d66441cabab2def9576d989317f3c532945ca6c7c71c36f4175aa696
Date: Mon, 13 Jan 2025 02:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736733953
