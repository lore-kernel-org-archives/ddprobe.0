Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A86727FD79
	for <ddprobe@lists.linux.dev>; Mon, 14 Apr 2025 18:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744654794; cv=none; b=Dp+3IWtaXj+tstqlG+njH005ntFTrR/7vOIuiENDA/fc500N+7MNPl84d9OFR072ut7EQ5Om0sI5/hR0Mk0o4a1lEWcLcuA7q8Jzk9wcNawKiQpC4zSUiE/VF3NTw5LB/hwzm4e5Xu3L9sXze3MV19nIrIJII96sqHwEboyZ84Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744654794; c=relaxed/simple;
	bh=rtM8CQzAllvvUtJ1JUwZMSy0xG6tDi7wQ3ljLCilKis=;
	h=To:Subject:From:Message-Id:Date; b=Wl4MTxABTUUf5w4pu6EmawMgd1ozmy/FtdOXHZDX4eI+zsgG8mFqGxvHwFDpp9ey5VKeov8UYDIw9nbDgyBKJPpcDinlhr3QHoi732uEGQ/LF/LT2irE63DGZNm/JH9mzrXQxx377YZUJ649pkYmSQZGhAEPzzAiDou7zJ7v7+U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n5SPc0ZL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n5SPc0ZL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE97BC4CEE2
	for <ddprobe@lists.linux.dev>; Mon, 14 Apr 2025 18:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744654793;
	bh=rtM8CQzAllvvUtJ1JUwZMSy0xG6tDi7wQ3ljLCilKis=;
	h=To:Subject:From:Date:From;
	b=n5SPc0ZLVxHr0G7jq+45YTUua3Dd5/1GhIO5TpIrDRK+m6ZxnsRztNELlNLGKPPC5
	 EGahgsIr13Vg08j3u7QuNUJ9XMguXjsyS+jenVBDfCqfFaDyHUd8Ou54FR3HRlLtfa
	 Lg0AyLKmUwQRgzQjOFv+cUPXDOp09jN5kRcad56oP9U0OE02dOni2yMQ3zQWDRJ6xo
	 zma1kIhGH5RERpowlsH7iCvivdiv8QyCNnawg2nRyedpjf5lZw6/039pnm2Po5WYSl
	 ATcTXV6Uy2ECO+W7YEk54gYLg+ow4xPPDaRkxls2tniu22EvRlIidOUDAIwgnbCkrh
	 fmEmPxCQWBTuQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8474C369A2
	for <ddprobe@lists.linux.dev>; Mon, 14 Apr 2025 18:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174465479366.12366.2446469393468624358.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1c3fcb40da48e0406f7a45602bfeb59492d757f275c675d146317b466153f503
Date: Mon, 14 Apr 2025 18:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744654793
