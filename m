Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34A5B18641
	for <ddprobe@lists.linux.dev>; Sun, 29 Sep 2024 05:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727589354; cv=none; b=NWDakXZ3WFvM8+17gWEmnYvqkn8Z8BIYZeFboFZxvn3OOl5cchS9pORrPeIXT6GDT2kDzf/gZUlogOWlfyXYpnQt0RyV1fsypWm7hE0a01TnP7qxrw4M5tZk0ExVjLnQK6LaqlYRTn6CjoxPtCHS1fbAz7Io3p3amcan7J9tnik=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727589354; c=relaxed/simple;
	bh=SMCZDzXL03ZSE7hQgB9uQhKYe1V698aypnElPvU0Xjs=;
	h=To:Subject:From:Message-Id:Date; b=lig7KNXnCDqEADIrBC1bJISyE0qTjGHXkJFEK9fguc9xFC2s6utDMPC2eZ7PB3nVp9IM6AxXhL+OA7E92tIyZw4PyLNmVNdWOvLIaJDO09KWWI6IC2UJZ77jQOjFe0PCCjhJ9iCxMm6dcNc7zIxxfBt5zq7JwCOLgpuyBbYzYw0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y8Ps0HiE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y8Ps0HiE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5696C4CEC5
	for <ddprobe@lists.linux.dev>; Sun, 29 Sep 2024 05:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727589353;
	bh=SMCZDzXL03ZSE7hQgB9uQhKYe1V698aypnElPvU0Xjs=;
	h=To:Subject:From:Date:From;
	b=Y8Ps0HiE9VHNYI7/kpP6Cdn2yawjxtZYQ3NsxggupPl+kIx8IVbg/ktiNLdi7xp2q
	 jet5HnPQ6hLhUjSaGDd9aV9qEuMxy4VInxmk+A6BQAqsG73XfS+6cD4eontCkEqyGj
	 QvpEfq61SkSIjCX7x0I74OAenoitoDu36a2TCYtMjvN9Umoc3wrlqxDVIiOtdcP1iO
	 ccGYJQwcRrc0HaLPkADnIcxI8yJR2dPsGd1+mxNBG6AZuk0AJ26f2BPRAGHYWsKrBk
	 ZHQkr20E7Qr5geME6szO1QvrICg80iI2bnFNbnP2pvgxtOg9imP+kRj0M6jYqCdLny
	 KnfGynXHR8uxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3D41CF6495
	for <ddprobe@lists.linux.dev>; Sun, 29 Sep 2024 05:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172758935364.1149.6062098150092223693.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2698a3d5a797a537a5b7e3dbc742f55b1e710719a28c8bdfd33bfb09b5121acc
Date: Sun, 29 Sep 2024 05:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727589353
