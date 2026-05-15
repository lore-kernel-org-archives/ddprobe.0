Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25A6C3CB918
	for <ddprobe@lists.linux.dev>; Fri, 15 May 2026 03:10:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778814634; cv=none; b=I0j2beuoXbNP/q1rCabK0VjPVsmzopS05vRX4uQN2tUL0CE4htmbv0kxZx1x3hqiRnR2j83/U5aPpvHOceWkCELu4ucoJrvWJu65vWZlPcwxg65R51tOtXQglmDJZmqaA9czF96pSs8WqASg9wPxE96LKI+kJ2qiPXPX/mzIpt4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778814634; c=relaxed/simple;
	bh=/zqkU6oPn/Kr0YuX3Wi+ATvkyqscQImDH0G+TJWvjfk=;
	h=To:Subject:From:Message-Id:Date; b=Oyj6TSwyDB97APtI5p68LHWBRdWkuesfZhjERFgNWzDGRYqjOoHO3SafpRjXgpE2MZyszPnJUibQ+7h06eCZUtzHU5EKtZx/ae5uar1rriOAdJUDiN5veno3dpxzt+ybOUKCsneSLc94QToOejGsmfKY97YZSob2uKsMm3V9Xtk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o4knUBmX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o4knUBmX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BEF9AC2BCB0
	for <ddprobe@lists.linux.dev>; Fri, 15 May 2026 03:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778814633;
	bh=/zqkU6oPn/Kr0YuX3Wi+ATvkyqscQImDH0G+TJWvjfk=;
	h=To:Subject:From:Date:From;
	b=o4knUBmXuu+z7xef4YwNLjnjcnEXBCFvDJlciEDnD+6VUGs5CpHLLhd/GTjoiP5kP
	 a3KV0uzjMJJwMW0Ms+0ru4zlag0H6fnRNPhpIp21Hk8M8tbpEDJV8I6gNvgooJyM1A
	 LCV7FP/RllGSFXdTeDo2zhXZ+8F1RTjyKubBTP8EZjI0fWYYjATktoDLHY8+kMvlJx
	 tK/t2Kp42An3UwmULccq+zu9qOrL15/dcV8ZlywHbyA2jDhB+4FN9nq4GChvejUjnV
	 I+lcC8RClcNcKDSr82MXmJ1Qduai2aUSaMWXZFPUPiTeks5UHrDrBgyq0f2LYloiJ9
	 ++qbvmHSRNFHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA858CD37AC
	for <ddprobe@lists.linux.dev>; Fri, 15 May 2026 03:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177881463368.26739.7893533345727614811.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 845e22f138ee030c6e5fcfbc541b3426a9d072b70f13f6874286e65342130ea3
Date: Fri, 15 May 2026 03:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778814633
