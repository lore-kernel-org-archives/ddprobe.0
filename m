Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E2DB523A
	for <ddprobe@lists.linux.dev>; Wed,  6 Nov 2024 03:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730862354; cv=none; b=P/04wCK3Xl4WsXbuElyFY20cB99GRsETF8LaCo+S4od9nz6G71BEw5ntDMPdMyV1jH5iqLlr8yjartaP0ghQKjg2WIrsmQ2J1gDK7I6VasQnmptI75guIjNCQZow+Fy3Y1C0samxrD/6JHk1OaJlU6ifIMtjhtQy5MjBbPBJhHo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730862354; c=relaxed/simple;
	bh=ttCbdn6LRSGiWWF+rgaLr2+PKP01x0WduYydJ+FQv4U=;
	h=To:Subject:From:Message-Id:Date; b=mvoz8BPHvZUWxvb5WxdMPuPgy21jRYYYYzOZ6mRjUl6JVK60mLs9IS1iWANM2OZo1MqHJL5LELTC+rBoja5SCPQolqUNSWiv2Za692+3G15cPcjgnlzjHWZttTxTwQymx5rUxzVqb0L7nciM6BbzAoTP7Cr47SnFqyKrp9jS6Cg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DjjYVyfW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DjjYVyfW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8C0AC4CECF
	for <ddprobe@lists.linux.dev>; Wed,  6 Nov 2024 03:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730862353;
	bh=ttCbdn6LRSGiWWF+rgaLr2+PKP01x0WduYydJ+FQv4U=;
	h=To:Subject:From:Date:From;
	b=DjjYVyfWHOcj2SteiBwKATbEcTB5EJz0uB4o7TbYb+zSQwswHlNDSnmKz6Vc5ziuB
	 p8RwPOdCXLkgDam503I7pE6rtoa3Wya1cBPIqcZmpwVuQX7k/0jb+DniBiyCHcOmX9
	 ctVyv8sVTWCKbGxHNRNSpwOBYghxVQYYk5h4OlmCbbtDZr7MvExjOhoTYIIxbH2I5k
	 yzjKPylhhoEgS/btvZlUIe5JkzjaCcbUiVQUkclj1FUdH3XOctKqNwMxjCMR9U+Q3P
	 aveYnAwqKtGWamqgM5Ke6POWgy5r4/nmlQKdzTYbeGbe+Pc+YllqYaB7bHImpq1ofg
	 FSROtJqYIY0YQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9030CD3E787
	for <ddprobe@lists.linux.dev>; Wed,  6 Nov 2024 03:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173086235358.14739.2534092077921997059.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e0130c55ac14ac940c4755a3cf0cd60b8e7b8a1a54b92e96f522603d80d52a62
Date: Wed, 06 Nov 2024 03:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730862353
