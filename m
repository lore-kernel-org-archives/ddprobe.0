Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55A1A481D7
	for <ddprobe@lists.linux.dev>; Fri, 28 Jun 2024 11:24:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719573863; cv=none; b=A/rSEhaHhTxsVcP+qYRHW59XjE9n5o1eW8SfNbOo3nWHm7M8rabOhX0RC0nutKpycAc2seZSzhdzV7IM81x1Su5QQjRvT5kCLmkxSpo0ENIq5DnqS6jFyBaqhgbR8+7wGk9+Vs24ccC47DnCBUxxHdNwYDhI4hlPJyV6fPVOvnA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719573863; c=relaxed/simple;
	bh=8QDi3MWu3MG/pqnr816MhUUHbpfCy8n6prpfdOGjcYY=;
	h=To:Subject:From:Message-Id:Date; b=sBSks4UVJQ3eitkbzI+phyyWiHksAOAkpNMVw8eGCUzt/xpA62/IAjjRIlRVtQvgeyYkSm9qNr6DNr59HYFoqXmyVAr3orhcCpnllBjSaqc/Adb1fhmKQu4W6rkg9+TkAzx2xNDh7uljBBWatZr3DqgLll7/uFnay8EgKu45ogQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y+ylgt4C; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y+ylgt4C"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DCA9BC116B1
	for <ddprobe@lists.linux.dev>; Fri, 28 Jun 2024 11:24:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719573862;
	bh=8QDi3MWu3MG/pqnr816MhUUHbpfCy8n6prpfdOGjcYY=;
	h=To:Subject:From:Date:From;
	b=Y+ylgt4CuqFUpDVrlJ9BzBgytIJruF3DJ1P1FLxEubtx1LHquJZU/zG0s+sCuUeTo
	 0mKkRFNCiDpReZNbozwpB7xGKWx6N8jrM7nAO36UTEAItw9g5JkbJHEXrk5mKUYpVN
	 C8aeF2zQWPRl2AuXFUkk4W58kq4WpGnyrA+hm/siEvTA4trQwESeZb7vSVT6tKXDfq
	 klKo94FJc7RcQkITKpy5EpjRz8M2AGonW+tzAMRoaQRNhppj7sazUDDFnIyhHfHJy0
	 JWoZyES1BX0w1ssB8XSI5lTHikq8X+jamI6AHRx8bWd1ntb5HvvpCuAKtYXekGoG5e
	 lnPOoYzu5JY2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C9E5FC2BD09
	for <ddprobe@lists.linux.dev>; Fri, 28 Jun 2024 11:24:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171957386281.27387.7680584386074297046.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 602490f0b59088f506adabbb246a8898cbfc6b64c48977f818d9c3f98eaa83e3
Date: Fri, 28 Jun 2024 11:24:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719573862
