Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C4A82F530A
	for <ddprobe@lists.linux.dev>; Sat, 15 Nov 2025 14:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763217594; cv=none; b=It1IxTNpJLn7s88UexDUFjrMl4PvoHdSLO/Zuvqc8agN2aFNBdzE/VL+8QeJo8Wh3tZnSp4/reiBzYP3mXREYCJ5ihwkeTyPifEUQLdZtyY8Gj8vvfEM75At42QcmWLCJYME7LOosLOWM1oknuNa2AFIM6jiAIzKAWtDWr4LwBQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763217594; c=relaxed/simple;
	bh=8skyrg5yUkHV1PtGEXHHx7wyRuw2437WCzGBpLG4vdQ=;
	h=To:Subject:From:Message-Id:Date; b=PTgbOzsvIfIgT/HNIJ9FdTq0P9wk7j1fgw7fdJqWfZMaEfje3CXAm/aJdCzUWHEBanb9DZKdgryRQ0kZJefofNNfPaY5urgbMQ4vMPed3xzxR17icWElPXDCmyjnQFNNJreFdi5EgrD3/GcF71KxkTjskzAv6d+DKrbVwMyp3sw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r70uS/KL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r70uS/KL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B91C2C116B1
	for <ddprobe@lists.linux.dev>; Sat, 15 Nov 2025 14:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763217593;
	bh=8skyrg5yUkHV1PtGEXHHx7wyRuw2437WCzGBpLG4vdQ=;
	h=To:Subject:From:Date:From;
	b=r70uS/KLqUOckhf56PqY9xIUfuzyBedSOBX2DPxZz/UUJCMTHgYlTra6ehJLC40Td
	 M4hN1eAHEj5G81f77CJpFHiWUe9L3so9q0qaQiGg1IyIniMfj6dJcyfxyz8dvpAsAf
	 gMSCMEwFDkKEa3XPYLHCpLqRO1J2Pcrm1ILqEqmRxjKmaix1V5BPy2vUXdKSvhRROm
	 REFykr8gaWAzPN8LKEuBKJMVbxfUjPdZkMWldg7RjoI/GHXQ3/sFeX54IKEKDH04Y8
	 ywrBgChim2XUGETZNp39IwIyiqdzpHp6Seai7xFeTFZStqUkZPaM4QMvz9l6Yth3Pf
	 OM+zR8Giydp9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F4DFCEB2CC
	for <ddprobe@lists.linux.dev>; Sat, 15 Nov 2025 14:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176321759364.13036.1431900028920077250.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7f21d3375a6274d71eca2c87028668b72b1ec9e915ab1198f8b919753efa321c
Date: Sat, 15 Nov 2025 14:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763217593
