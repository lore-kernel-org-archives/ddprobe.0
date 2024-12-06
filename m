Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C6E61B6D04
	for <ddprobe@lists.linux.dev>; Fri,  6 Dec 2024 12:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733487354; cv=none; b=ISuJfK7XiM6Frruv9F/pdYOoTYMTdojsn1rLTUGcngypZv6sAPhGIkxCtDM2bHBHQF2xkfML2y2ujXCj2Lw4iZ9KaB1DcxHolyTAj2csKxPokjIaEjSx4RxGisuazU9aJPuEyCb+hfovjCeQUH12H3n5R6l4/CT5YfkoTmxUjjI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733487354; c=relaxed/simple;
	bh=5c3XoWm9fLcyKKhKmf9ALPKY60iiD+Rz4qm0pNusd1s=;
	h=To:Subject:From:Message-Id:Date; b=I3nN9yfdjhWzYiP222Ls0F5pZiFs2cI3ufc4GI8tjuYFdfpDLM04oPVn3pomRsGEDGkLHP5s81q+UnwradULgftWW0aHyV4ODfJHqlgRrvyqNCAz6mXWNm8sAlc2W0LO5nfH6HWyEurGSfw1ri9dlGuY16xO7FzmUMFFFwQdZl0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bYU6+JVC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bYU6+JVC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFE91C4CEDE
	for <ddprobe@lists.linux.dev>; Fri,  6 Dec 2024 12:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733487353;
	bh=5c3XoWm9fLcyKKhKmf9ALPKY60iiD+Rz4qm0pNusd1s=;
	h=To:Subject:From:Date:From;
	b=bYU6+JVCb61leMSj7c/Y1IrX8xXTnNvN8B+FNVTmYH4wNSYjWR3oJTj424v2dJyX/
	 9yGlgTfaW1HD2qRh7jG3zOhkGmiYaH/3eVNTiaM9S9kuB/LxgZSEiJH1OsFdHjmshr
	 qiwAez2o6amGsGY5b+JcSdT9/ZtAmL5JQqbHNOh2qMSSgkHBeBMdnlsJEKDJ3j833P
	 VPvZVKgJHkOMQS/Zob5ZVQ2wd75Ec8loWZ5NoNSx5EZx1B9Elj5cPL1vFBRn0vQgxY
	 51Dfm0nupZZiyF4gXJmJliOoC+LgUty+bqgRj1U6HCTGct0RRiegFEzMUS2gHrzmul
	 MDkj4RYG71K+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D095E77173
	for <ddprobe@lists.linux.dev>; Fri,  6 Dec 2024 12:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173348735363.30869.14345953418828637587.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a3ebc0863e805a4e78be834d5208bcc4be3be1f5690ae162aafa09701e7c772e
Date: Fri, 06 Dec 2024 12:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733487353
