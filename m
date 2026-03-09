Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 052C8378D74
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 10:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773050694; cv=none; b=KOQJrWNEIi4SBHlkzne9pF90gp1Z18yuvxDODWvaDRkSkChdhYhKz5J6kpvqq3gZAy5qPd00J2M81/qRTd2EQbQgVS4wQpyknfkzLLmKaDD26zN9zSlp0IHKsrEFdhGTtvYm7+G/FvVOVu1YdqjYs/lT3HOa1BqbwGrs8obwnLQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773050694; c=relaxed/simple;
	bh=0eNFwjEs1FEf+XAP0BQHvYhgv+Z1JfjHhWDrtxjtId8=;
	h=To:Subject:From:Message-Id:Date; b=QzLD46i5+mZUDuK3B3xbnAvaat1LI7Qy2vwtFzVo7o8lmX0HDo/q1t5a6ryBIgU+Y0LNcV2+n1FP7mOL57/rZe6g9Qa57EkS6wTnz2TIv9TUvUwiwKy8LyxLvnKM0f/T5tBDET1brRhdrU9t0cuvT3QgYO5rTs4tnUXa+asQzqo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gNbQKXhx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gNbQKXhx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A44ADC19423
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 10:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773050693;
	bh=0eNFwjEs1FEf+XAP0BQHvYhgv+Z1JfjHhWDrtxjtId8=;
	h=To:Subject:From:Date:From;
	b=gNbQKXhx0knR5047Z8U/9QOZcFvZeqjUb9jwFO+ATv6VF91fKL1D9T9tTglnGFjCF
	 n5Bf5kAaExVYSdkOnT5jcr8ULa/4Cjb4UjFmBaGEl+5xR26gmR8wXDWqRRQJDoiB59
	 tUj6ww7VEpCwK6XCUSDZyuDuwKrhU5SKL43Drxc83yeNLsfMXquCiGuKStQxoO0AfA
	 qIfkf3uUAzYX9rTEuLcQb2CpKF2GYIOiaA4Eg/be4AQeC2ljsQdu1KV5ZUkLj6XngC
	 0pL5Ljva4SfU1uaBE8aHcEWbwNE9hefFSMgYvZCWHeO3dUE1xchHDb4CHJy3ip67zm
	 L/fhY5uhxYsPg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 917CAEFCD7A
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 10:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177305069358.24090.1862497041699680378.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9aa5cc9924243fb777345aad2f84c1543508973d1df10ea7a7a4ddc6586a19c5
Date: Mon, 09 Mar 2026 10:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773050693
