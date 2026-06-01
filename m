Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A81F1A0BD0
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 02:44:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780281874; cv=none; b=BSVllSrBx/Ew00iwsJHTOUDzXfZRO0caoheIDTKawjYMfb4teq7Z5WPKGI7MnEt3P0wqEUPJKtXdJZs9D+fUvB7VixoAQ5hrkclcShLqrMygZU05C1kNU0POqbq79JKwkb9nERfF5BVyehn8cNHvQrUdIxbUSDWQ++5xBQRUHm4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780281874; c=relaxed/simple;
	bh=FvEK+FlCR36KZyYHOfuTlzvfjLJhKP16cSUMIt2o7ZQ=;
	h=To:Subject:From:Message-Id:Date; b=bUN5qmfRWyHH/rlGlw7vwD7BInS15v5bUn5OKjnpjlklQfUK2Vk/Q0kqpfs6I3t+ild8hU6rJ3AF4+QmDwnRd13wrFFSI5B38iRWDmB5IUp7g834yQi4tNNk/hRt5l6G7qA5GhByImWpCU7/k0nJFrwWusRDiVyU+HOC0HAo7e8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a0ltZavs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a0ltZavs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC5DDC2BCB4
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 02:44:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780281873;
	bh=FvEK+FlCR36KZyYHOfuTlzvfjLJhKP16cSUMIt2o7ZQ=;
	h=To:Subject:From:Date:From;
	b=a0ltZavs/6avNnJSY553zuHSEgDMR2jmEDeo2OC9ieLjGs6/A1VKbZsyoGReHha/K
	 w9U1F+hwNXmywZcQ/4Oo/IKRWRFB6f7UEiuTMynm0zCg7lx6VlWDyzsBB/mSafM3ln
	 IHQoAN4kQdsIhC2bQpfBg/S2R0UAXxTFgRRkLbnWAqa39hS/2xHlBQQRBq/kDWyz8X
	 Ly5ID6U8IJKTtOyZzKyO1BoxecarLrDNXFRa0e8ps6jKWH3vp01nhyDU+9Fw6DBRd2
	 8IE8zOKuIKKrytHwj6STlThG1WseQ/HN9BuqbBZ6xA4m6xjcc3xZixV45QFTYuPnZ5
	 zpjPRtOoKuRMQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB963CD6E56
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 02:44:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178028187373.27793.14237768803740572215.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8a1786192f5bfc0d0ecb3e279da454958d88d7e78dc74a7b9ff2c4623a15b481
Date: Mon, 01 Jun 2026 02:44:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780281873
