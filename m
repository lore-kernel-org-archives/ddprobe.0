Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DC4854769
	for <ddprobe@lists.linux.dev>; Mon,  7 Jul 2025 03:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751860795; cv=none; b=YYNoN81IG4mibaa/4WXJRF1bStOcSuLWIEtjDmPk2Hch//IcOHDTSHtZ4oGODNoGKg+MTjnqejK5xtkgeyJ/qO2/2udcJdxvnj7CuOUbpqVY+UDDA9AN5S06FFW3cWy5P0ZZP8Rti6PqQjpogIRK64NH+togjKRVG1jfwxu3IcE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751860795; c=relaxed/simple;
	bh=sO7BHMWUHtzvJPtE4yGO2QVQvNXRmJ9jAT7CeI+DSSE=;
	h=To:Subject:From:Message-Id:Date; b=i8B87R3AWdoLhmAf/M3OocPfYA/staqQkUHI1A/H2D4p3V9EFCKKFG3oJmh/cpushD5Uf/e6Y+jPe/8FeJx3IBXCExr3u3y2w9QIpPZOV72IEEWJs13LLVfVfMuXFlgCp1g+JQdFcSMZj0LueLpYYEaRPahqWKe9UECHWurMPWQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ruwsS2rs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ruwsS2rs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3885C4CEE3
	for <ddprobe@lists.linux.dev>; Mon,  7 Jul 2025 03:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751860793;
	bh=sO7BHMWUHtzvJPtE4yGO2QVQvNXRmJ9jAT7CeI+DSSE=;
	h=To:Subject:From:Date:From;
	b=ruwsS2rsxYtEyNguVieuIiAmXhFFsmR0w4fAzByh6aLGCU0bLsCpbLj59f2sCMoWH
	 nLqLgQEyq/lfA6KJ+CsN0f8x8hv7xAJ2No4ckonNxX2GAJSmjTLLX6cBM0zBhiRPZ7
	 3JMWxspifJYR7yDAmBUUh9LBFgtilOf/3z7C13bJINcNF3KN23bdR2C4/egwS3RPVr
	 lN1YO5854x71eclBBd3w30OTyspJ7AO6jf8/hUzVWuaBaRph4ZWhjOSU15sh1LdnK0
	 mvuMdwVpOoG9bxxuhIORIsRq61qLM6FAdwqK4f+kzWqAmRMkK6iOwzpJVbVa53mX68
	 0Pw9HNv/j/PaQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91957C8303C
	for <ddprobe@lists.linux.dev>; Mon,  7 Jul 2025 03:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175186079357.19411.10076691920212666984.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1689db67a9c377be5227d5bcc84d740f748c8714fe8ab12876755385f2091bd1
Date: Mon, 07 Jul 2025 03:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751860793
