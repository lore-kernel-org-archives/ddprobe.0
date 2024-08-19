Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25FC215E96
	for <ddprobe@lists.linux.dev>; Mon, 19 Aug 2024 20:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724100354; cv=none; b=DY0Gx/Bpkv4ryPsCFa455fyijFkgnHv/QdesWARsxOMrb7tmSnggEVhVz6gP8BU29CBuzb8p8KKUCR2/YLMQuY0MqqEzv8W33vcLmRsSfmrzR+XbByPOGrX+HpK8+UFFlwTXlWo1L5sKs8cBVQkOiEuJH0shadvQuAlU7JSjdZM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724100354; c=relaxed/simple;
	bh=3NRai1JHJEKVGM9X29ZRCFvisXmbxr6kWgW0pmLwo+k=;
	h=To:Subject:From:Message-Id:Date; b=jtA6lQMXcIM2/yGXIgJOtOHQRC91p5I/VoTmF+voDMitMOYcf0TGI1DgDWBfDzFJXRXjNENeorPOcKu/UugmjNt4wq+Puaz6aGONGU5dTt7YwSqOOBhj50qgsoFGUX4opg1QdMGEqe90Iqo/YMFzZ1+Oja3lgXP9uKiFRxKCgug=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cmysRdOA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cmysRdOA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3D3BC32782
	for <ddprobe@lists.linux.dev>; Mon, 19 Aug 2024 20:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724100353;
	bh=3NRai1JHJEKVGM9X29ZRCFvisXmbxr6kWgW0pmLwo+k=;
	h=To:Subject:From:Date:From;
	b=cmysRdOA8zRqz6KQOwxOcDKHK8oep2e7jnaeUC+ueXolCd5G7Sob/hlzEv7SlnEuu
	 cSKeKd05sWxBtYvx7ojwOOyNtjx3iDBRuCLlKO+PVYS+qAa7FQonmIEFnyC/LvI7Sm
	 P+HBWjuNx2B1iq7gr3i3R97uAxWxb4jvgWlSf3eaLdbzo89/whSKY7IjehiqwLxBzk
	 b1CpoeSvHduw5POor3l6R6VfaL3VVviDPkZZhK3qJhQCJc/xcR8o5lO+WLE6JU60+A
	 H2T8ucNM+Q0oJ0jjK/3kS0PVpPqqbiRd2jP4F+aMavnNtiF7yWsZu+4FPSId5pezKw
	 Wvo3rKrTSIJYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9261AC3DA4A
	for <ddprobe@lists.linux.dev>; Mon, 19 Aug 2024 20:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172410035359.17066.2510464422953071425.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b5c8e1225a81dd3aa2e3bb5ead7eb752701f4b51ab4ab959bb7295dc60f19779
Date: Mon, 19 Aug 2024 20:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724100353
