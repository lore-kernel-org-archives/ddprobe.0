Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 65CA32F3B
	for <ddprobe@lists.linux.dev>; Mon,  1 Jul 2024 02:04:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719799463; cv=none; b=o2+m2ttSMue120egRbE+0z7XvO+kfQe/psSLCdHyOB3tdozH1zB7M9s3oIf17DI1iRCOw0kpwqGs7ns3F+gMZPY71YVdkZLuqU9/sUxE2TQXwhehoou3d6JISXIEOI6lRL+eSB0pYYshcaBSGRmAgLvMuTsXud9VVPJd6DEzaxI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719799463; c=relaxed/simple;
	bh=Df9EZTIl52xK9msgiPZQRhHxcItur/rJ1JprXTOLmAQ=;
	h=To:Subject:From:Message-Id:Date; b=CxM/27+MVBHChbaALnRukZJri5HWNqjT9lDCGHeI1CEy/vBC4kJZ99yZFgZtJdnXuxUxolPASms9Cr+dO4ULWK9cIuG3qY+5DlHpcpQ83/U2r3nffNE0ptZ3y0OebnPCTu65TyOlM1Zh2HIxVJONC0MVSYf68ETvo0MfDyx6kNA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TdNjFPF9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TdNjFPF9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF5D7C2BD10
	for <ddprobe@lists.linux.dev>; Mon,  1 Jul 2024 02:04:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719799462;
	bh=Df9EZTIl52xK9msgiPZQRhHxcItur/rJ1JprXTOLmAQ=;
	h=To:Subject:From:Date:From;
	b=TdNjFPF9C8cwdjqb85SsV1qznle4K+4E8ZBnJ3X7AaWT4UtIHb0eDsFh6p9YzBkAP
	 1+wjdUhU8A1YrItAmCqSbQdd/EahfizWjAnHdcYa/8Pximw7gJA1qLR52Vld5g1kF7
	 NKRUeZ18pQUFYgYc1ufcVD2xiPAjBQeTAcqp7ZObrnZE0MpZaR75aZHbKaWqAGrTgd
	 jN0v3+qWlABHUyZf/CFLo66cO2MA4v6K+TjRamGb5eLbDtzrmFQrmEEWVatK3PwJis
	 fYjAOSQRGRYU43mjb8wYz6VZhNyprh2AKnuCwh0y5buMlAolz3bCngDubfcIXxPc8/
	 s4yO7yNgiMIxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C9C65C27C4F
	for <ddprobe@lists.linux.dev>; Mon,  1 Jul 2024 02:04:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171979946279.26439.1834564697824838520.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 163b36423d5c90839ba610c6a6924967ca75a49af849f9e15b38d36f3644938d
Date: Mon, 01 Jul 2024 02:04:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719799462
