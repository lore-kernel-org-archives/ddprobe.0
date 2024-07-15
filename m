Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B13610F4
	for <ddprobe@lists.linux.dev>; Mon, 15 Jul 2024 01:02:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721005343; cv=none; b=RgV528aEbyQK0J4qEzufv0JZpDGUAipz/ugNTdvX3lECKKi/j1y9mezUQtE/lbt3HqNBTMfPjRq0zw6amnmzUljeGXkSz/zdBXQoOLcaJi50DMXJxmtfilduDTd8BJ4E2mCSrJCn71RBLT9QQbP5xOAZOQF1SIsdnwP3C3GqxOQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721005343; c=relaxed/simple;
	bh=u7bBf1tIjs6P3t94H/yKPZgMFCPGlH1Kn3UjSTsrsV0=;
	h=To:Subject:From:Message-Id:Date; b=eTzqPQtT5joWCnzat6vh/4yY3rtgc1W+4zJaXJKUEdleOJ2//wAUgZG4QdhFmVvhrJMrmQYxxBcVMeFRpUTnHU+sP7b5hm4M0rp+12qvWCPr0D5qEYh8u56gIuahjzg/S/nqHXg13W5vYL76/SYHv+1jk/oR+0Dj4Z9kuJghT2I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B3NctPXE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B3NctPXE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD683C116B1
	for <ddprobe@lists.linux.dev>; Mon, 15 Jul 2024 01:02:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721005342;
	bh=u7bBf1tIjs6P3t94H/yKPZgMFCPGlH1Kn3UjSTsrsV0=;
	h=To:Subject:From:Date:From;
	b=B3NctPXEid6qaFgZMqQUXjc2Ag7otvxcOSsOKBIZDz/Hmrvy+W7B1psifV4Iyvdcf
	 gNizWZZ1b7c/EO0vdVLWk6gznvl1hZ5jdGnRNom1UtiPbCrWb2Zrv7zTiSh+UDg884
	 8vSVwMCfTewNSvdcUj4ze7Z3hjpnQntZJbxW7mm1AsJ12LZMpEk9OvI4c5brxtsllM
	 tACZzSu80s8+qaaCUfjlu7jipkXdvaed0xkrr4Ml0sFCmRORG4bNVZ46RF1SZqTIv2
	 +Jzfm6ThPzmPC94Vte8V3yDJOK0GWByMpu46UPtdZK6i2h0QGuejZPVXU/LYlinnUg
	 aqDMZHSw89heA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C6170C3DA49
	for <ddprobe@lists.linux.dev>; Mon, 15 Jul 2024 01:02:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172100534277.13583.17453335648361468238.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 27e8f57502bbcbea9add43611ba5e91dd550b2a0e649e5a54a5d8582fcafafa1
Date: Mon, 15 Jul 2024 01:02:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721005342
