Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 102E33947B9
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 20:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772484894; cv=none; b=eUnkusNNvPsUo6I9PG6AnGO83W4ByRidTM8zGt59SGNGGkkHQc2eCqJMI0jk1qNK9E9HmorRmC1/4NICbHom/B5p+C5XgI7Fjre8aFj/gErTrAicHms+MAf0len/2LosFcUuaK3kj+wuaDd7AYzUfgWVVRHiBXawRgBW+NWRgJE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772484894; c=relaxed/simple;
	bh=sJL+uVXcByVawK5sfk7+kk4N4ss092m87N+SvaY6swg=;
	h=To:Subject:From:Message-Id:Date; b=j1m9EHjAEFc5nZGgmc6KPTyn0GIjUs7PIi5PVaT0we2DorhjgdLQtrNP41MU0twr/El15hSe/SHwBge3eLqoPUp0iZz180DCgt9d01xqMjBasDJP3DV195Fh7SnvJI5oZjvvWXtgQV2pSvXoHhEov1b2Jov7jJX050EBoxxgSzE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CZ8lSdR0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CZ8lSdR0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0F8CC19423
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 20:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772484893;
	bh=sJL+uVXcByVawK5sfk7+kk4N4ss092m87N+SvaY6swg=;
	h=To:Subject:From:Date:From;
	b=CZ8lSdR0eDfFO1kNliRJrtLaguyMG7ologvLl6EbrzHGoI5PkL3638SP/Bi8tc6GH
	 yzU8tZI5eesrRuv5IEpyfL3u33HU1QsVHRICx9rk1/x8Bww8Qf7KpfYN/3gBY0gir4
	 BzmqNDbXnmE7wJuevd/QewrkyQmdUIS63dMeSZ/Ca3H8zzoZodsTJ40o0blpWKxPk5
	 9AGRh4NxLUwYK0aB+iFb/FjaHD9jDjyLTcWcwW8/nE0qXm0nB9rgwbiNIyaI6ghj8H
	 h+zBFNhSp6PLRsPne4QSEM+USfcaS4wQKDaRRq/5wFVmDhs7X6AbvBp8KToMzGzgGK
	 41TMiUy9zw9/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A4FEEB3633
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 20:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177248489362.16514.7879666623403907706.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b42761ee72636ff26ca4c150a6a0c2fdac1422c019b199a1c0c00fdff3b3c6a6
Date: Mon, 02 Mar 2026 20:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772484893
