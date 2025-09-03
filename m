Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EB8A2FC887
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 13:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756905594; cv=none; b=ENBxCx81MIkGTsspplHUgl3po/tHO2obGsiDH8aHs8tXDs37v9GqZJbycNBgDTkKfyrwisuemdSw7C9QF9nvzRh92WXhGRBo4clti7X399VWjKyK4lv+WvwNgg3xQ8vq+7DocHWrXsVRWY36YnKb+gIsjdDGNhNnarn364rjoRg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756905594; c=relaxed/simple;
	bh=JlF6O7s5RgtdSmGJeqw6lSqNciia7wjYEBzbQUhl+go=;
	h=To:Subject:From:Message-Id:Date; b=IASOOOjDsTfSL7Z5fygC6sc6td/RTeZ4ymTcYnMV3NOlQahqW7vDv0wQ9blyVrGzqXkxi94VE1bafYdQ/0C2h82VVZji9QFwl+RMWR5J0i4SzKd4xaMU0PivijB/8jBlBa7gTC/CeH3oAKXtGDtCCeNKCyjyQPP02XWa4swwXck=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JVodwHfx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JVodwHfx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3DD2C4CEF5
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 13:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756905593;
	bh=JlF6O7s5RgtdSmGJeqw6lSqNciia7wjYEBzbQUhl+go=;
	h=To:Subject:From:Date:From;
	b=JVodwHfxMF3SCJoUMuWmRLjlSxstOWuFhpTD4+aD3DrYQ02tQcNMDZjedZk/ZlBUK
	 NN18lhMAtPjjCduoNlGLoYECwVT3IFZklbh9fneT245Vrwdon/AzfWJg+FBWeiAmgN
	 pdoIb7V0qPoTbZwVzKxEYT8YDvoPznh5iwMasyfFraJhk+DAmK5cV/YG65kv96GGPG
	 G2fTBt5loF1FfWFG6QQfvN9hXgKXnVQjFmmbfxfKuhh8mb+8VaPi77gB+qssMYYJdc
	 WkNCv4Dj5RG3mORpuM42toGCShdR0ulIGX4XFAnGfW/jn7sOebuqoqoVQ4gWukYxRo
	 m+1QzUTxQaGAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90867CA0FF2
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 13:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175690559358.16816.7402774449597810485.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5847fb0d98458f521764fc69e4d9b39ef1d2009c5bc234a613068dc1a64cf6d2
Date: Wed, 03 Sep 2025 13:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756905593
