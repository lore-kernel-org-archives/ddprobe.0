Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38CBB8475
	for <ddprobe@lists.linux.dev>; Wed, 18 Sep 2024 02:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726625754; cv=none; b=Zxa8O49kKLCy09KoY227aXxMxvhZMlYE0KIch72if1sguCtOGLEozAF6HbqcEXlyjMPZs0Y4Rh4memBOEBChy323p3Sk+WmWw14BtbmY1iEKISIByETAkG4rq97u8t3N2MILAnNo4mXEk3SslZqTXeomI2TSK5Fx3F+UOAJAe4s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726625754; c=relaxed/simple;
	bh=Y8zyckfJ/M4h+37Oho6ftmL2RpAHZwu1hdQloGbHwas=;
	h=To:Subject:From:Message-Id:Date; b=R8tB+7fnFQyUokUV5BjVcNzb1re6vXvkMobx2IOpsWKZ1jeZ9O6C9DwR8jSp2gT1BT4MLt98yf0Q00wQuIQjH0JMOUM4xrBwsUufKfqsum393gkn3mddWmVdtTN3kHyXwes98G/0TAEI8vgJjFtjW4WqjdgW6hxiKNTjAnVBsZ0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cpCot7Sa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cpCot7Sa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B12A5C4CEC5
	for <ddprobe@lists.linux.dev>; Wed, 18 Sep 2024 02:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726625753;
	bh=Y8zyckfJ/M4h+37Oho6ftmL2RpAHZwu1hdQloGbHwas=;
	h=To:Subject:From:Date:From;
	b=cpCot7SafgNMfJm37YubWW5zHXnhrBxKMGLNSNF7qBJWq67TMQpaAc2mAsXEzrU/k
	 7NKat0obMFIpeNv5mrRRsTIstNYWWRNEpEuXVwFOfW66gyh3s8RSSEep4dtV9AkGSC
	 dnCJte1oqsu3V2VZZBb6vNE7Nh7M7ag4mNvvsSgL6E/VD1zDe57Bv9NFDdndSqfriR
	 7ZnsJ5hxlNsNGfhyAxcfEeuM3ff9mf3O9Six6A2JcqVhLhTrdu0GvjLf+pJPALHVJR
	 K6lWbT4pGdoBOoQEAW4xQgT7MxfE0S+yXmEkzoAUVQ/M7IW/CsIsIYWj/8hJOR1L0M
	 xxGeexymxOcog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96659CAC5B2
	for <ddprobe@lists.linux.dev>; Wed, 18 Sep 2024 02:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172662575360.2094.3885843445027122811.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ea9f9587c024a4b86389c6e968808dd2a81191817dd8ed705c70a8e111b2b106
Date: Wed, 18 Sep 2024 02:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726625753
