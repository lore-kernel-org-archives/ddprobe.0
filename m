Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3416A2580D7
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 05:04:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780722274; cv=none; b=V0NFMMyNFGKS5SV7CBkujtXQ8hgBS+CqUfDTBB9PxJarzJPrb8ZQ/XBO8sLbPlqM7ZDj2H14weoHU72y2bjYOW4ZPGDrtu9A0wFlL3qLRRCG2b5MOxWzm3Lt4nOfbjLzq7tj6+lg30Pmq7sYV5rQvjzqrALu5TNl95+MPucJwAE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780722274; c=relaxed/simple;
	bh=TnY4rBTGItjHcjaK2x6DqtTenAT5M3dWNcMZoQIZYgU=;
	h=To:Subject:From:Message-Id:Date; b=CND/qn7pe9CZR2cMoiiC4EBpm8XlGbNDAAM5sFQaS9Hpn3k7IGE08dj6I5V0wjIE9SUP/r/XpYFcdXsp8jnZHjwplfDjKFxsOIQkhve8SmrNqmexRLkwI0nkE9DPnNrOuNvSfKrDwGi+PcQR43mRxiEhwVL6vz6EBTIDNR7sFo4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pyDsOCjr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pyDsOCjr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C483DC2BCB0
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 05:04:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780722273;
	bh=TnY4rBTGItjHcjaK2x6DqtTenAT5M3dWNcMZoQIZYgU=;
	h=To:Subject:From:Date:From;
	b=pyDsOCjraSy/Pa3XnpjRWyRQMI+2FPWQq8V0VanGRV1TDmNkprpKDZvSqQPlXJ6wE
	 EUOfWStfimPFMDfRYe5VCLvnPJxXcmnUNEwBTrGPV8Yw5ahtPL3IP1Kl0GcaPGOI3b
	 dxecXQTNdk9XJaQ42yFaYkbqyqFeHQu8jjOjhKa5rydr7Mz+XkkN2vj0c/d0Y70pdS
	 Lhj54eZImwvhbTyF45RZt9wXBZWR4ofcY2BkqXhyOUJH0QeRlt2Y+bq5lKThOBV8pL
	 qOUh8/Ck8/l7lR9Ww1K0tfNz0GhjKA/3Sw9YKWI4IwrJYwu7grPiV6e6uLvMZVgPQ9
	 U109L8OT5KOVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC34FCD6E75
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 05:04:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178072227369.5870.8982977784290980428.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 80cb12787ebe8cfe00727fabc6fabc206f9dd7af9e0171356b440d672458c1b2
Date: Sat, 06 Jun 2026 05:04:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780722273
