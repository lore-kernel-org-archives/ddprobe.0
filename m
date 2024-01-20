Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 057A514A86
	for <ddprobe@lists.linux.dev>; Sat, 20 Jan 2024 15:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705764497; cv=none; b=bO10nLyG/Hxm46rKd4GHx8jEfqyWxEq4UHzFve3qMQFbZFPVDknu/2XjOQEcvlXY/clZU5mg0RnRC18qCcRk3Q6+4JFWqJl0R8CVz+0xir+SnYlcey4auLLkzyccdEhPcR0/PfUyM4BmZaVyp1HhmddAXSEACaJN9Uo3pfaPyUI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705764497; c=relaxed/simple;
	bh=HJZ2SwdyZAJZeFyb1a+ipnMeKKgdNxMz+6FYPNX+HgQ=;
	h=To:Subject:From:Message-Id:Date; b=ZYu0JKYKFZlg3K+fdomZD8MsANXi5MPW25TD+xnLMJXOLHf0dfjePvGIb1tFxjjNu0XQz0hXhuL0V7XTZsYtCILTXAaVJBTnopN1QqHAcqmkBXY1qOfUWNAGuuveQ5MK7bdEzwA36GZ3X3DPXahd8wskIdD5g4WsN1UNr4xs+aQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t/qmdCl7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t/qmdCl7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 74364C433C7
	for <ddprobe@lists.linux.dev>; Sat, 20 Jan 2024 15:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705764496;
	bh=HJZ2SwdyZAJZeFyb1a+ipnMeKKgdNxMz+6FYPNX+HgQ=;
	h=To:Subject:From:Date:From;
	b=t/qmdCl75EgLgGX6d+KPVo778MMZ0QPzR9QDFY3Q+WepEEiRkBWGYo+koZgnjqE5u
	 gOrsNhnB3HXfyaRN+4LJAhhfPHuR4+gR59kWZXlbmY1IXdVPvs56IGEYvY6eCqUypk
	 t9MWhxwNqZTCm2blvKwPFj+FV/PKWIctMmAH34J2460taICyr4533N5oNvmz16bKOX
	 +o5pUpmHu2j6rHp6iNApsIdf5zVgoWArcBCAa0T9kuMPy2ozLg2I+DPEFneOwTa2ol
	 dOk8NnkazUlMZo4eabyyuMmz5JIOm3RpWqO8ckzeArh6wmBGsdR+Ake7uolzaHfsap
	 iBiNdHpSkL8zg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5BF5CC47258
	for <ddprobe@lists.linux.dev>; Sat, 20 Jan 2024 15:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170576449637.32060.7972942066963950321.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6235e6889cf1d4c77c2f87a5e7af64f27c0c61c72b482cb9ee3dc4552d71ce93
Date: Sat, 20 Jan 2024 15:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705764496
