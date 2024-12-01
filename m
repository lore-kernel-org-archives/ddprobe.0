Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32ED1320F
	for <ddprobe@lists.linux.dev>; Sun,  1 Dec 2024 04:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733025954; cv=none; b=ZvGizQDES5flX2FF+5Ps7uoMNCWvh6r+lqlkFSIrRP5uk57X2dK17jfVOp5TlC4v0RQSsADNp2eqwdn6wkg21U3rBgctuTISy97hvvaiAstWdnfc/igBuBgCQs9VQj9lG0Q1aj/cNhpMxuXaHVNipAjy40tILGRQ5a9WMYmNZcQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733025954; c=relaxed/simple;
	bh=UYjKo4MuCLPRh5gjilW9F0aknMGFSU8n7X+/qIanuq0=;
	h=To:Subject:From:Message-Id:Date; b=ZmIWukUQZ1XV7HAOuQkXAI10UDbc7l59FDbKm9Dgzrz3pylHaVrAx0BXAZXNoThzXqeoFCwXqMr3n3bZt51UamTbpS3I1OOwnqPS2+y2xf+PwgPAqXLE7543D88eM97h0C89PMBQXWZcZZA3JcOG6ZyVvixorl1SKBgNi4aguNM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ifkO8PVV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ifkO8PVV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5FE5C4CECF
	for <ddprobe@lists.linux.dev>; Sun,  1 Dec 2024 04:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733025953;
	bh=UYjKo4MuCLPRh5gjilW9F0aknMGFSU8n7X+/qIanuq0=;
	h=To:Subject:From:Date:From;
	b=ifkO8PVVAkjfjoIQM7XmRuOPPyj2qcotFDvdDYImhr4LZDKVdmaewS+UU44pUvLsf
	 v1BfdVP4PkXtqDOw6ZZHyMy4JbO8kVrBO1oHvd3ofEcVBecingBE2+F8pNFbE8xkgP
	 kVL5SlWUWMgbeiPJakcO6HDazCZWQou/1JzErTT5yAqBiE9Ia6DdCxYoezxGrtenpg
	 ckSHke1WIQybGvtBsuoxIw5xlTxiso0oU8dITaOz6nLH5vzocJEElueT+TnhJbscyy
	 NFVTWLtVcYoTjzKTZnBtmcQCLbdeEMU/xVlmXcKLiTRnoDeLH00sgDYe1M6VXm3G/+
	 t18kvnFqlBKyQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 901E6D70E0E
	for <ddprobe@lists.linux.dev>; Sun,  1 Dec 2024 04:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173302595358.7523.3584186537850293617.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4991abf314111d53e78d79e20bb5fb50fceef2bcc5afa50efd8fed230c500703
Date: Sun, 01 Dec 2024 04:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733025953
