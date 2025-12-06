Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17DEA1BC41
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 06:42:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765003375; cv=none; b=P9Jz+aU7cauQ4V/a6gyzESDTUO6CvKIKodEcYu3TW4s78vQsq39758ZI66NpXr7Wi94Bdj1yWzvgoyTk6xTgIXTs4qaaqJwMMjhwxtwD0YULZ2RE3pfB3h637Z98N/xi6sqgJsn+jdhAyB7fkx3rk53DCh0C596leblRuWtJMqQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765003375; c=relaxed/simple;
	bh=HyQP3htzjm8PE06guT/WeVnhCM6qlgRvCVxVCB4/CPk=;
	h=To:Subject:From:Message-Id:Date; b=BKgwv4sjZM+avo1pDau3X036y32Wov8EhBH/rVWg2gKqwuRtVbJKpyX3EpeNVXs8ao5LtHcwLK9b6vDh3FWZuS2YU+ZGl5X+7P5VSdcHtEq2HnndkDmK+Rgg+X6QuoSmc1nrinX6+rHOMFAaKhdz1GriL3scjzAcS0nuFB/qBTg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Tq8IGCu5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Tq8IGCu5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB1BEC4CEF5
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 06:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765003374;
	bh=HyQP3htzjm8PE06guT/WeVnhCM6qlgRvCVxVCB4/CPk=;
	h=To:Subject:From:Date:From;
	b=Tq8IGCu5cLRgmR1DW+3CvUUljjIXePijPyNAmJ5yQmleuT2BWi0tAXcYkVRWFir2R
	 iPV/v2BuJoIt+cMB5XFaa00It/PxtxixaFcfeDSvpJbg+S+ctMSSrc+92B7lk74u5i
	 JmwtoF1cXaGBYEcYkFHqAZfZgThJmGdAk2T8CMbvpn8/5CgCMzCFizqbkf106+uca3
	 XW+qOZ9h7TDvgzjNd9uqoASSajVg5CEhOpLifJrJTocuV568GFEqmVOLKEBtt44xlI
	 AdaHqSch9D0rY6lRWy/4JHtJ7Xeh8P/yddSWr2mlSwxWnL/nPYoO4gPWCorGlnZ7c/
	 NxkiqomOBtkRw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94B08D3ABF6
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 06:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176500337358.29249.7523011671137141229.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 366fcf7179ab484f023edb48bca4f915c041bc075973e52872450975b860bff2
Date: Sat, 06 Dec 2025 06:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765003373
