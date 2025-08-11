Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C82091E3775
	for <ddprobe@lists.linux.dev>; Mon, 11 Aug 2025 10:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754906993; cv=none; b=IsWfW/WyetX0CzPH70BMioAcqvgQBmY26gbBTjIhIIijcb/nCBwTEBQwLsw9Dy8/CgEEytwJ4sd9bhowJrRHpAlAjn99nbyHGAse47ymB88IHB21OmE0NjSX+97kLZVBCJ1oTOihZHmjBBQltrvrMDvlnMnscbdNGn3HonsIMHc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754906993; c=relaxed/simple;
	bh=T+eGddTwbhsc2jCWk7rVcu9WHlva29H61qeeyEA0i50=;
	h=To:Subject:From:Message-Id:Date; b=KtHp9ZETDi41MRiwlJcpk1wgANUqhLg6YNcPTnIjzfz/lbq+j/f/Y+Vct8zVprNet6JXHbFsGGx5WjQ7eyOrhxjkjzyqbFV5bERuqre/iUnzVo8dmxXpiJMQ+3wgtI/tptlU0Wmez8V78ywAnzPxhgTb/nmEFx8OGNQ6KyZe2/A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DJNVYj69; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DJNVYj69"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C5FBC4CEED
	for <ddprobe@lists.linux.dev>; Mon, 11 Aug 2025 10:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754906993;
	bh=T+eGddTwbhsc2jCWk7rVcu9WHlva29H61qeeyEA0i50=;
	h=To:Subject:From:Date:From;
	b=DJNVYj69uxbXcXMdyKkg5Hm9Yo9v2Jdk02Ffc8xDrgtgPMBjrspOH2gWhe5STffX3
	 u9MIBYzmGEkweIVW3Nie+bGc5xNcOgikgBYUng7K6GGHhyXAqVcqoqdMjDGjOJKfkz
	 EF6sYtvnchgAQ/wExg/jXz47m0CMvniPb8c2Gw/BGUEbWKfcNjxkKd7S3q8OoHvox8
	 kCx3SIl2A+PcEUCRSI10WjluxOfnzvmd++Es2wTqLbinJ/RZJP2n/xSeKIvwcoMEQo
	 x46hUI1OaX04h2umSKelwkgDT2fDavjpbv/X4OE5u7guGPdeeP9t7/F3jHJj6Vxznc
	 YwDct2tE9Yyfw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EBD6C87FDB
	for <ddprobe@lists.linux.dev>; Mon, 11 Aug 2025 10:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175490699357.17986.11531937591685095751.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2ac4c11b727d8d1a4574a7c7f06484afc36aafc1f4b67c0f411aa03b43694026
Date: Mon, 11 Aug 2025 10:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754906993
