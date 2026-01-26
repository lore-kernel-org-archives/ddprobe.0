Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24E151F19A
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 01:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769389434; cv=none; b=QrzApvy9Y8ZdiNgQ+gAX9bn1VD5KM+ca0mN/hLAxgdNU3ojFVcrMyPDb57ysDRcSl4DDEOMowXKuoLfm1vErjLjmgwMR6b67Vze5QeCCjnsVIbHiIGctNHlirYkdGaRml2oRk2mZ2AB8TE4OTSxDKIAAP3lfOk/maiNcA5yrl9E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769389434; c=relaxed/simple;
	bh=A0LGuQ4uHrdwLbcYuoe4mVWeD4/ZHserU05lGSdORqE=;
	h=To:Subject:From:Message-Id:Date; b=OWNZusS9B6YMl77UGpPJ1u1nI+SyfPHzXeXm3e79qPcUdgK0wEK+VI78aADIvqYyxjsDCZAd3m5VWaferVCquNZOgmfRdMWd6HYxuPYP/6m5woRiT0zpQN/PPsinq6V4m/Wi1hjXA4mS5ZT9+4ugH25dTxVPHCu6Yxm9hHFE34w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KDl+ZShV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KDl+ZShV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7007C4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 01:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769389433;
	bh=A0LGuQ4uHrdwLbcYuoe4mVWeD4/ZHserU05lGSdORqE=;
	h=To:Subject:From:Date:From;
	b=KDl+ZShVl20pPgFtYNkvYd54NBwJyYrxCDsCP6MS551rmhC+b6na/EihHoBdGN8Z+
	 ghxbkhbS44T/oclvVe0kRSLJ5O5k8IuAtaaNAhLSb+argaYriCTwJhJLjwfLGzvYtJ
	 glFvRR3OaKQ2kbeOK7TXPUzKcd41eXs9Ttdfz7tc4UL9hPtgi0N2lXj/VV7cnNtMuF
	 mZyxzJiahsCCImQ3VOe++KA7kl/kGtKDZ4okLgbKxZIvY6CovFv0Q9fdqfB7tOc2Ho
	 b5YJXsrjBl3bbV1Q8P2yoERTkwaVD9xYLIeB6vzhcqYeBssOWb2Wb7f8XumSwHcjAs
	 dRypslI3+4t/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 920AFD778B1
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 01:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176938943357.22389.1389585063528631250.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7bf553c81f84dcc9fbb01852058ae53368a9565d87349969b3a5bd48e0663a17
Date: Mon, 26 Jan 2026 01:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769389433
