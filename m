Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BD2BB2D3756
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 05:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756876193; cv=none; b=kSJ1ByvPJG5QGsMB6IyGPv3vo2RqlUahb8Qk+rVgGF+5vQ9DbdfFsKbmnwe0t9wTr/FTQt4IPTLvZrpaxD4KCGuJfBmgmK2o7DIaKY0LL/k7TxPo8u2I0pzgadcikq0ps/RPRmVitiIZ16872V7LtoIOqFlqkSHqaO+13FA2E+g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756876193; c=relaxed/simple;
	bh=wEJtd6jRTUgj1qKqBunSZlrbXEs1nAtiCO5Q0JzrFmk=;
	h=To:Subject:From:Message-Id:Date; b=r003BY7MfGcqY6ZsuI8k9i9SR6gSDKx5sHPP3rnGb7oBenbWf+xZ6KiE4LuQ6d8WklmMhuWrLW4gBEXuCrpeMnIcfnWoi3J+NXO6LG53gKIpAgK9Kdex1IxKbPb/FRBQ/xWqW+pHAuEg5sJtIZowSOIpnrTFzhBVcZJJWrmXj0o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FxIv5Iy2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FxIv5Iy2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 958EBC4CEF1
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 05:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756876193;
	bh=wEJtd6jRTUgj1qKqBunSZlrbXEs1nAtiCO5Q0JzrFmk=;
	h=To:Subject:From:Date:From;
	b=FxIv5Iy2I0DVxNr4UAt7e8fJr+z+0lbZ9UQWhMjijibbBhWyC79XYYFKB5eRPq1Qg
	 9rSkcboTpMwXX01n1mHTCD2X8mpiC7fCVRqg+VU5TTgQp9ScsUOjOP8K075eqrFuxJ
	 P0OiidjmJv8X42vG23vn2sXIgya8bUMVxvIxfVyqi5k66cbBa9bFIloXydyGjp8vKi
	 IyvF0GG1P/FZxRPG516SOOych+vwkV5CWsap6Te/b3GnXSYhAhe5HKcjGYui2YTM0W
	 JpGB64ZZRY5Dlj6LQGJIsqfMbbtcBMd7mf1KmrnEsxW68A/3GGKm0wyHMY233xja8K
	 Ig0J6nmAwlJIw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ED5ECA100B
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 05:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175687619357.13358.331208597348127865.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 29831e7cf05e8c45101e080f417eee235a93614efb5e1eb1e25682f62643ae92
Date: Wed, 03 Sep 2025 05:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756876193
