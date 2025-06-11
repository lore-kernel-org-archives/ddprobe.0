Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35A12C13D
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 04:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749617995; cv=none; b=jbcdbTYNipbV+tYqVJIYrxHa1aIyIIF2UdDAu4cLlpCX31/lZGNcrXe0o8y2SRC4R1QEm0EjotOhN5CeyG6cYGYRgiMDttfHvaRFL6OwoR26Qd56g/cImmMpouPKy+CmUVWZBVBagSsoxJStmL9SmNWO4IMD0BqHbWCPko/TYHA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749617995; c=relaxed/simple;
	bh=ejFWuQrLuEsiYzIncLojTGzNVuAqpUJyhP4cOA285wQ=;
	h=To:Subject:From:Message-Id:Date; b=YcqPLMDgOQAcxMsxbJZr+bq9CnpNBEGQisemEYUG6WtfVl+coQVEJzyT9f39+GNmgUX6CkoYuqwkZrQOpOJojBSaijhKo3N/bIgJceZ6C4Q5/yhC28XpAq6hTcbHdPjVGbaDzOu2O+dWZf7/7GUHLmFsDckcnZX4+4kebWWEKbI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WZSiixPV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WZSiixPV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8A1DC4CEEE
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 04:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749617993;
	bh=ejFWuQrLuEsiYzIncLojTGzNVuAqpUJyhP4cOA285wQ=;
	h=To:Subject:From:Date:From;
	b=WZSiixPV6uXN89oafAruJ5QGKua01q8WYBgrgCA6OOnjNVvl4d1Kt+nZH94Z4+Sm6
	 HDjgNcvC/VoBGk0jMtpxYVNMGaGe67JekjRm2KMUESBwcadqO3YKH5ZOcmSOXpkL0L
	 SUB98ypbc1HLnV7XjzprIneD2igGYTHarLyPBXegD0QvCslWuH2eXT6+5gh/VPpEqW
	 SkLCpo1FYmIXhIXACcGp8w7bFAuHUOlGu1sqZfH+EPFo3632/p2ieJbzl9h7TdQh5P
	 VcAbATF05BB+2tGDvAHbsVClGZg4z+j3p0RlJkxPBEkvcRxJ2MSNz8A/Lw6b0MvEbV
	 gNlvnIK0ISbBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92922C677C4
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 04:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174961799358.14264.9352983307634113784.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c9aa9c9ec379ddc29f3227375c9ff704d98481041ccee49073273e83299fc09e
Date: Wed, 11 Jun 2025 04:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749617993
