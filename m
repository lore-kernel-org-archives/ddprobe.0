Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15A41231A23
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 07:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766474034; cv=none; b=OUP/EmE7PNHIidVEPzih8x5XPi9di5UsFYJhhoYLtZPU1R6+YZHGl9L/Ssu9cD58He6fNAzn9AWVzBkiPL2lo1qrmzEskwIsSF17IW4DPziQ7LH5LGlLENV/cNZYqS/6bRuiWOXxhY9E2RoOX7IxPG4E4/on7BT+Fj/iVDLiOzU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766474034; c=relaxed/simple;
	bh=tO/FMTC3i1EKfpjBewyYyy8gRpS0x3yZ54EakClebkw=;
	h=To:Subject:From:Message-Id:Date; b=uvgdKv0tDI0WGxJbx5KFG0BAEPSHdd9Aej2pZTvMG6PIPNid0SfW9KKgDKQhk7A0pl+nezLEgQH9YsxSFEhqr9aZN7t8/BGRRvl6fze+tgNAcFbpmoSOgKNNqXLKMteHqS2pOQ6xuobxUpo3ZXt/SEpROTT1/l1EAQOnRxwXz0w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AS+gksi0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AS+gksi0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E9C8C113D0
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 07:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766474033;
	bh=tO/FMTC3i1EKfpjBewyYyy8gRpS0x3yZ54EakClebkw=;
	h=To:Subject:From:Date:From;
	b=AS+gksi0r7BJOtDiUsmflMSRDLRr3xlEYcvgKVye2BWT6NecS0l9unv3o6Gu6WLZq
	 93OUQXQqAkJp5w2ghLOaJepfjvo5F+3TFD0HqLhiAaZdKHeDZxmvd+3imRVWzsm2H6
	 pfr2rUJA1KOVd/xNHTdqwI2PMi7w1y6rscxBT0FCtAAJJBc3NllD77lMJlCH3StJ4k
	 nxzVQe2QD1YGxDfDBggPIwg0M+xqF8nUdqj/JgTlXdFWBRLp1BY7RKkOQdtQ4shp8w
	 l8ol92mFBiVFS6b6pWImac73dce7X08tsiSgmhmcXDtonoFYd5f78KOxBw/onbI/XY
	 3yT+QT9EXR4bQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FD64E6C614
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 07:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176647403358.5225.1625128130123644393.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d29dba6b5ceef66a5e8b9a0e18ee1aca12891345f4fd3e54051687b63475d85c
Date: Tue, 23 Dec 2025 07:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766474033
