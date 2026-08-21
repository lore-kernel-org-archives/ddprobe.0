Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54EAD270EC3
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 03:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787283034; cv=none; b=MWUmk/NzuVuWDUFPZ0QGptPO36xw2q0rshvkGe1m5gM5RV4KpgPdslFLEpn2hd9qjiqJz5f/i2ElMhZx+Qr0mHwjpLIhREtwM63ap42n6/WZodsDPwC5oxODLr2TmN/a1xr6Jq9TajZTjrQSsi1MU9e5NgXlaWuX6ffWPSJPWYc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787283034; c=relaxed/simple;
	bh=pSn2rc5RncgmIohOVITwRXJr1cbpD5ehyi3HO3TOJvU=;
	h=To:Subject:From:Message-Id:Date; b=gmmIntz1vilDh/OjM/Hl2bS8x3N6WGXGKLFfUaRWPhkHBwpHBFHozfIPdRGBx+wsJBQoj+WojXGbRG8prKQ4q2Hcpv7HnQxw+/pizts5H9dGI1M8u9Q4XlPZs2jicdNuTt5bOhlmv7HPSFJXACbF6Y1/OEyfPa/9AoOwNOgpNg8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DHNYkf3H; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DHNYkf3H"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4D35C2BCB3
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 03:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787283033;
	bh=pSn2rc5RncgmIohOVITwRXJr1cbpD5ehyi3HO3TOJvU=;
	h=To:Subject:From:Date:From;
	b=DHNYkf3HpT5jmbw9D5vHJJOKFqrQaIAWrcXRtsNHBnoaUpa89d5aMmkDBSjY74l48
	 Jt0CMupXQ/cyHY6kiQXKeFWMRM7oh0kn9/RXeVZfbVIK//GWf05yK5QkzYDXmIuQDJ
	 RVXiGCFQ+toh+wnkK44hkTRAsC6td5AP9+QmRP9ylrXgUOXM7lKQETBWrizRZnU/Gb
	 i4Mi2ACvzxmxEcqTTHqyufCGZFCxmZrhA/R/p+SkRVmR9m3R/D5cjJu5jvGo9Z7Lz/
	 sFM9kxiNf8UKZY/MqkIwxqVFcimdch+hCh9UEfP8yD+4uPThRpNJ8lrjYQsNyc9YRK
	 wa0Sf1/IUNyaw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFF6CC5DF81
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 03:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178728303371.9007.12585077904935055226.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5dd9e3b59fd9082a3fbc85088522481152df308e4eabf12ae097d161b81285a5
Date: Fri, 21 Aug 2026 03:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787283033
