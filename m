Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D4C11EB5CE
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 05:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750657194; cv=none; b=U685MCsVQiR1kUwqKtQnFs67gbvjBJCthEsdspPUWs/6I+Y1w74uYOYBmvkx9LhSAgubI9Zmv79VmByI/7gFdw/90HjxRHINehYyAOMFsgi3FelrODl1WViy+K0p7ntC4+aqjcyrz+mpsL3HXCldRBvHtC1joZbfQVAYmHTeDu4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750657194; c=relaxed/simple;
	bh=gxGqXnlTyOg70vzXobGmNVslMt/gNd3jUBOfvBPVQwE=;
	h=To:Subject:From:Message-Id:Date; b=KQ6so+AjS3WfJbqAiMwbOummtV8PXTC+P9LdpPyISbDMdmdG3njbPa436BNRpIfdooQHEBMXifSAVgtDldkk5K5Iea5Fx0dV7HPYG3IdQjQzMpLa7KU1aMMk8wSB8NjKFDRaGT2fbK3pa3wZxgDyc1OCUpZ6cjK28dsl97N3V/4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fZ3cSnGx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fZ3cSnGx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3940C4CEED
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 05:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750657193;
	bh=gxGqXnlTyOg70vzXobGmNVslMt/gNd3jUBOfvBPVQwE=;
	h=To:Subject:From:Date:From;
	b=fZ3cSnGxlOWS7prOKQxG+Lw2ctZa1H0SkymBxxDcpLDUHCkd2macToWkBXxpPlCjX
	 +g0H03pdUkyhhWLP7kLT36C/ID+mAjEzoGPfsp6Nu3521/uDoxOwl+Auad649swW9g
	 KgzH2aY3EvlJbDQiGw28QwoGjp/R1mjR6ZrQU5Ehloq6vzGxu4YTvQnNc4P9SLQqW3
	 wZM73IzCtCF5wKftiWDlNDNji6YSIr2JG15zcP3HOuHG2ndtQ9U2GgBjGGFCeYdB8I
	 7Cp/z4uc2LN7Nd0XA8gQdof31hBy7Tre5Y/JZVCC//Dp/BcxgNoR7lVl1VOQU2RwyS
	 NaR+lA5hauvmg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9378AC7115D
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 05:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175065719357.8291.8167631325710542965.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 579105aa564414e11efa70a4f5d9a909c8e5b940d48b00f34e6055ead6528b8b
Date: Mon, 23 Jun 2025 05:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750657193
