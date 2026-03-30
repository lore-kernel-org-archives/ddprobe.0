Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E5953AB27C
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 09:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774861494; cv=none; b=BqrbE5OJj/AYyYtRA9Zeq1FI2yf7c/tRmyyOTu4IfD/viibrFiAWPnjZZqvhuvEpSp+6VIui5efp8D6ZIpGY6WvUAFeWMiAUJMlySirTV++H74c5IOZQcqvlniDj71a14la1gn7YBMEBgU41TL45LYprbuTbUvI+1pEPdzwxAak=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774861494; c=relaxed/simple;
	bh=iZfl8LjhWXqvwnfsz7ElY8UtH7+uIF3CMXEWcgbZG8M=;
	h=To:Subject:From:Message-Id:Date; b=bB/LfLTyL/sTrgeZu9lYIp7EON3Gs36doDcA6H4L8tNuNRdSiy4taToetHaEvthKzyh3qOOSDhmAjRg+QN1SXTbbgSgJBd3Iqh+uGbPJN0grvOrkE2bhjZVJUu50/iwFMoFMNt0uSsKVdqHgnIK1yvVpVyvQo9F9c+zcMKknMV8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BI98y1WM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BI98y1WM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB5EEC4CEF7
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 09:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774861493;
	bh=iZfl8LjhWXqvwnfsz7ElY8UtH7+uIF3CMXEWcgbZG8M=;
	h=To:Subject:From:Date:From;
	b=BI98y1WMk6uNKhI9jmCMOkDkffuFxltKCacea51idBrl3MICzmxhdMcsPB7O2wP/7
	 MTorzPdK8WDoCDc4ZG/DaV9YpZHiQKLh0h4mFLJg/Z08NvMxeZ4hT2dZC4RJkFEZCz
	 5q9DU34WQ3zqJSJWXIoGStbTNuMLvs1tgdt9q7JtjfC6S60DDZ9kDqZgrCtB6uNl8F
	 GfGtx90tsOxr0iR5kC7YGU8jPFoy46kMETAzIZfhVX25cEdXPqbU051FkwK1XffzdS
	 TkH6tIJt4nAfz5zdWh7xAr109jRHSNrLfC5w9MWTVQs2Nr3Nb2eP1RuHNqhIGRpS3c
	 TjDThT4UzuvmA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90F8BFB3CE0
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 09:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177486149358.13315.317086999165611815.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0cd44bdfd8a9d6236e481e700f3a5ad3a617bd869bf3d119781edff44f78761c
Date: Mon, 30 Mar 2026 09:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774861493
