Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E7071C3042
	for <ddprobe@lists.linux.dev>; Mon, 14 Oct 2024 15:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728918954; cv=none; b=nEr8vAES9CbXY8E2yHKsoxrSOMePxy/tOeCKqHOpetQYU3iUXhavTKJ3QWsEyN9HHPG6L1zumDZD7mAaiqKlSyiQw4Rk87K5Z2CS/DnLHsCvUyboJFwjPD5841H6sPCJwjsh9de9zgyqQvOeZ5nxqmSIck/+1x9dsGyBQbnT1lU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728918954; c=relaxed/simple;
	bh=engskR1HbPTCySYfxO03QpMZ7j4bw+v5CDzosIS0b1Q=;
	h=To:Subject:From:Message-Id:Date; b=jv+Sk/lvyGmRHJFGR+nuq8EpowVwbEFz/Cj6QqNoVwuagwWnoqlecCwR5xcZz2W7NHYt6XZ2OF7UzDAY34Il8aHfus/YTsv5MFOSCvc3FByxfj4b6Sbz3g2SAgSFRfcwVcNa1R1OOCsbhMzaEe2F7WSFhH6o6qHL/4uK/3WHqOA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V7wk7rXm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V7wk7rXm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7631C4CEC7
	for <ddprobe@lists.linux.dev>; Mon, 14 Oct 2024 15:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728918953;
	bh=engskR1HbPTCySYfxO03QpMZ7j4bw+v5CDzosIS0b1Q=;
	h=To:Subject:From:Date:From;
	b=V7wk7rXmMo36VvbPxoIkj4Pr3mevR8AwwRWF1gaEZ6ZG9KG4oYxPpeIrsbJXcPUmH
	 iVY7qayrReu6wVM3Y188e9EF0O7gNyf0Hqwps5pfpO8OpPCTqZDvqxjFC6tXSkqam2
	 LFi8+BX58mkhDcQkGbx52kQ8T580H7RHHB4ZuPA8ludfjK8Rwh9Ys2Nt6cjtBWiu0p
	 Z8kALbZfKRUdIUCBmiUCbSeyFuDwaBV0zPJiA/BQT1rtuXzxeJb4eKtEwxekdSCFHC
	 T2nYl+C51aGWbGl6L+rCfhulaIojBKH2b5JTzLpSG30CS8MyLGBXucb8OB+kAKWzVb
	 7B5a12YeI5G2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9304FD18125
	for <ddprobe@lists.linux.dev>; Mon, 14 Oct 2024 15:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172891895359.31861.10257857967498271659.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 96dfc5d7480f3a02c2fdd4ef2a79945001039684f6d983db40ccb6f15dac73f6
Date: Mon, 14 Oct 2024 15:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728918953
