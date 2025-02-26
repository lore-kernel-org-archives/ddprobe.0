Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CD9B218845
	for <ddprobe@lists.linux.dev>; Wed, 26 Feb 2025 13:08:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740575334; cv=none; b=ZFesX08pt554Flvi1UuClZTOWtyUz1hjdXHsSfj5UKbJUmxq9XNqq2dvjxhDnNhizP6EJtYggbWRGoi2ggiEjD8C4Ob7p4FfuFh9Lr9Vt7TF6xLsBvQw1FTMhhekDS9mLVj9jVyEtVumQgH4lKmjlhrKOyWuz8Adz7d6zKCaL04=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740575334; c=relaxed/simple;
	bh=1lfY0S1ZtAMFb5S7I6ZWqs9ldUH0oy7tY7/BcZwl8GA=;
	h=To:Subject:From:Message-Id:Date; b=J/z5Fzz/epk4c3N1MXS12RsLlAeNIMP6ygWj4mvMk4cHoOpEcoOu9yW++bcbsgAGtjW5I6xrRlYFMlFIK60yiZW1sPPpW/xhEzqmVOO8TOmjnd92x/VjWGC/gEqhaYv6JQ9rTlgSlvPe8ydG0Q299SBEgYGiKxcocUoxyxtVjb8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LHvU8Tnv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LHvU8Tnv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7820C4CEE4
	for <ddprobe@lists.linux.dev>; Wed, 26 Feb 2025 13:08:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740575333;
	bh=1lfY0S1ZtAMFb5S7I6ZWqs9ldUH0oy7tY7/BcZwl8GA=;
	h=To:Subject:From:Date:From;
	b=LHvU8TnvMygXZ3CtnAsIi/W9Rtb+NYHhPazIUGAR7b0+ZfOgmSdienyV6xIDKdMJq
	 SlijLIcD7hFZjm5gPM/0tq50nBXWL+St6pMNX4Hb3zhV/Ojt4c8pjekNsepnml+cp6
	 RFB24cUhw8+xhy55NnOfgdgy3mAfXs4RnW3QEFXMN2fM01FMENlycsz6lUQJaOS40M
	 HDSLSuIHJMcpC/g6bY/TcXRYLIen+yxFkABqUHJiDgiJnwamxLfTDAztMpZXdseze1
	 NNguBYu2s+Zku0BGKLSeBmp2tWhZlfVHvYKp/2sz03gWCsIqK9mwd21Nnk3R+hnrEB
	 gGBTtxNePwZHQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93631C021BF
	for <ddprobe@lists.linux.dev>; Wed, 26 Feb 2025 13:08:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174057533359.19024.15568691205051162311.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0b91af50d1c488003e8bd8a12d5c77d12b6cad4b0c73923c7c7f093d7522f6eb
Date: Wed, 26 Feb 2025 13:08:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740575333
