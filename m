Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C18B2C0269
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 14:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768316034; cv=none; b=prebNq6PdzEXRXQu64ff1jmfgQ52xTuDB43P1k4RalDeib/57t1rdV9alGUjN5YcZhtucSL3lGvwnKorRIWJXWjV1I3s2BDzJ6PoeHbreAeJBpk2pX4ULMAnnH1rdQO3JmNDkGc7OgiQJX/uoZua4lrea5IpZ9W4OBqQ5v/tGMc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768316034; c=relaxed/simple;
	bh=v4ckL+u5yIR9nGvXIxvFw6XVbECAOZHnFuWE7dhQ0hs=;
	h=To:Subject:From:Message-Id:Date; b=ExAk95+Q2/g6khC3TkA4aBMWwBwY2VtG6CrEZAhjKxZSverubnZ9MMWmUT+XUADbuV9zjZd0s+tzNIKumxypTlCKF45s+QC3qWIgUo3T74ObDybVXwVV3hzZlfJtyG7p/HDHnKRFXe+/XDT8PdL8r8L8Wm5RJm+WimaH3ityWLM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=q34kET6C; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q34kET6C"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB2E3C116C6
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 14:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768316033;
	bh=v4ckL+u5yIR9nGvXIxvFw6XVbECAOZHnFuWE7dhQ0hs=;
	h=To:Subject:From:Date:From;
	b=q34kET6CdrmflkXuM9bY6r3JE0tbkVuYNLCQ0O8rj5jRK/p2BiqInAhRYfK1LO5ox
	 bj69oO/9bWMoTpTw3q0rzc+vRii94hqkDmWBGTIlDqndBeN7yn5Mi4KbmtVUkj2Ngb
	 9VRfJizoPPmZeT35t0wWt/fWTvSum6m8Us/ASMGGV8nBpCBNABH9HRCGqJhOMMjKd1
	 GYs1yzWt+YPrk0bN0HXDwZIngJkR59SRFJN3N+VqHFDvr/B0WCB72nmt2DvfwC1BGV
	 Youy79btaidEEpbK5t38tKJXLgR9qrKEvBnfcM/OkMq+3U7W3UfliumZjU+pDXhlo5
	 3lMu/jhcAVLhA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96507D2D11E
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 14:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176831603360.6566.13272961470898480835.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bd22e6aefa678eb4e25ffe74de5e3dad17d8dd1ae96f77a8be2c92cebf184818
Date: Tue, 13 Jan 2026 14:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768316033
