Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7CFBB25776
	for <ddprobe@lists.linux.dev>; Sat, 29 Jun 2024 04:54:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719636863; cv=none; b=LX1ClJzv6RcwQPIKpTAuOhac1K92Mzq66oWByqxRUfpsLpsnUU2Dn66Q7akZxK19oHGazc+bqwFfUY5E6UbGbh3z8m4oCmbc57uKYhkfTV3NZ8e3WF94ReP5liu96NeywkdIykAftkaNymZcG1r07xnf5Y7mAXwIzHJx34h/FWI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719636863; c=relaxed/simple;
	bh=4h4+5/6kNleVaEBJQSvhvNAAhY7ycO/e5mU9RUzW/BY=;
	h=To:Subject:From:Message-Id:Date; b=TjMXT7b66VZ0BeX7gC3nrkJBleTDyZjqQ2DKCGx1Tv8juV3fwWwW5XjD0SBCcTUmUq85Lbn/oEGrddMJ16dxggl6boC+dyhH4CO/Cu2FoTyGYlrOA0Ju3ShlArE8+uFzwpUz1d5/jYXqCcoTyety52UrlS4pJN0RJ6js9VbWvKE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LTyW8YXV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LTyW8YXV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id F0772C4AF13
	for <ddprobe@lists.linux.dev>; Sat, 29 Jun 2024 04:54:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719636863;
	bh=4h4+5/6kNleVaEBJQSvhvNAAhY7ycO/e5mU9RUzW/BY=;
	h=To:Subject:From:Date:From;
	b=LTyW8YXVQhAAL4cHBr/7QGhLf+QLOVe0L9kOliYOlt3kI+3sl9MnPp9UjQzZIgiAS
	 2LD6sSylx4ABt1FU6DA3JkdjE7Qc5ey1kSNOodp7M5XcpnrV/FA5HSaVnarCIU4NYy
	 9fYeP0ZfLKvihiPGrhBEbviFpKaO//HQ6cSaGR2jcGwmRWQheUe1D0ihbxRgSnXUPF
	 7Z85sjzxdo1G7Ca6TvmAN2m6ZsgbWGFWqvv6LAS9Br1uFmee5ddquGNT1tfqLepuKJ
	 MLg7h7/CguRuZm/UG9zM6JhcBUWMqVMdy3K+MbSM0tTP4pbUtAg/ehMN5gyWM3kn+a
	 CuqmJOka22iwg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D0722C27C4F
	for <ddprobe@lists.linux.dev>; Sat, 29 Jun 2024 04:54:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171963686284.24732.7639919696284806571.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 67840f0863eed7497965754dcaf3c1e3e4406214f919f2b513a28cad4f3ae418
Date: Sat, 29 Jun 2024 04:54:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719636862
