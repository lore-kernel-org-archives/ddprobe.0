Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58F103CF4F
	for <ddprobe@lists.linux.dev>; Sun,  7 Jul 2024 19:26:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720380383; cv=none; b=X84YR/rUeYrf9bGgaihr4qob/t0uzTzOQzW0E5A2qzhjDzmqjh58qKX8NfLHHozUDF1F+srTg5bpgCaulzthePjFgFfUxZj8lIw5KpL8JHyLymE/nslz3ZsTFPEVSHnY8wi52TRmI2q1tOISlGMOJiPmLcOl6skxhxkRroOw3zc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720380383; c=relaxed/simple;
	bh=4MGliMT4goLW/x50Df08K/SOMfhTAB43rQ5yoEs2c/Y=;
	h=To:Subject:From:Message-Id:Date; b=ErBOxnc2nulKKaQOVo32Lvyen1xCQBSjUJQhVblCag1GRyR25uywBTLN3QKGLjATcDVpINv04gVSRPbuE9uj/cbsXIbyzdU25IY4XDQa+pfxJu9ToohTG8+GeH8eatNVDGVtFML6xtxH5+heoZg8O0tRnbrSF9u83YDRSZkB6iE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mAlrdlUx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mAlrdlUx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DDAE2C3277B
	for <ddprobe@lists.linux.dev>; Sun,  7 Jul 2024 19:26:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720380382;
	bh=4MGliMT4goLW/x50Df08K/SOMfhTAB43rQ5yoEs2c/Y=;
	h=To:Subject:From:Date:From;
	b=mAlrdlUxc0+RP8S19sjaFBFE/61BtZTndVkuYJ1SL3OG5UlYDHRoptag/hMYJ5Zd/
	 JZo17vVthZStcOfRfexejT8Si2rF8h1as+x1M6bO8I/g0D/r7l3VyhhUpl/6rha9fX
	 1l/bEynQr8XCWL0vskTV1SrxMG9dTn6AoePX7V46nlZaKUolKBviR8QYUDYJyDCPGy
	 01a5vrqVixE4YoAH90VIGmJdD/r2N55zQGOFZ5CFWoUcKuopYRoQbcobw5/cMCp4DY
	 kjX7ofxGg0B/JndOnziSWKSW6+mW0pcVXdL8cgzBOKLdlVhCw9lOuNDJhV/IYdUyy2
	 +hgGbklWLw0dg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C6FE8C3DA41
	for <ddprobe@lists.linux.dev>; Sun,  7 Jul 2024 19:26:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172038038277.24627.6622198977685327415.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5aed0583de4e76cf731f59e900f85529626bca110d8856eb90a3a6d2c2224c1d
Date: Sun, 07 Jul 2024 19:26:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720380382
