Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33B1B2D9492
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 08:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771662894; cv=none; b=nA+fj9uTtmUaNdhatwJRxaQf/XxDEsvm18djGJC/6TW+M+XJh4X/F6fJhsw8ggCrWxdOJlZPmm6JGwfwsxx0DhXX6cMBW4tj1B97LHKeardYGtsJhwrDsEvYo6f2wp5s2kHWk8nifbevpMpaEdAb0GJ7lz4rSHkC+Oyvfmr6QX8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771662894; c=relaxed/simple;
	bh=T89K+WlQt4yXCDarQ+S62qYKuOWFK2f0YPpbuPTwglQ=;
	h=To:Subject:From:Message-Id:Date; b=oK+v48GxQHeMk5TvEDb9HVAA96a8G1Lnu03bgIJ9ZSDcpv/EQFeg0RvdZbVynyU4CnrIFy2nDQr2U6ePDRTtffvKjCtCBa7cct7w1dIKfFNhbiexgZNXC3lNYK3UG12fvo4BRuP+XevOkYaZnSOl8YhgNZH367EE10Ath/r8tZg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rKCqW7T5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rKCqW7T5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE361C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 08:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771662893;
	bh=T89K+WlQt4yXCDarQ+S62qYKuOWFK2f0YPpbuPTwglQ=;
	h=To:Subject:From:Date:From;
	b=rKCqW7T5aED6jRzjJpFtxTkXmfuev0Y4uk81S7UFtZZPjTkwRTV4hwagkpM5/3mRu
	 T6aq7bzOJv1e6bj3mbYSymo1aKD33lguJFhePjgfGajiSRV21XPTpEglZ8HbkCswV1
	 9rfiiMgOBjsYoDk7HeNi1hLBlj31ovAmZ+o4EYjdKQmCraQYBctGtPij9woeaZ00EZ
	 PLSrZklaIEZT7Qx0lvMtcu92OS1EW44HsK20hHMi+ZpZM7PepGpE1m9qcSymtdl9Vp
	 BIXWXiTwzF7dRg5jENihn+N2lZnD4H8zch9NUYqq7eGHgTxLbEkceb1D+QNvGjiDb+
	 jDnY0IFumtQQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96C89C61DD5
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 08:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177166289359.21362.12406446229424687240.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5294f69fc5705b5a86fc515ef2ed9dc9679cb7018ff0b174d8bbf0a615da70f5
Date: Sat, 21 Feb 2026 08:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771662893
