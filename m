Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4316A2698A2
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 19:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757361594; cv=none; b=YKMYyoxpN7efXajMTGEobpcC5+gpH9Ghs8CnyHSKhRDbBgdTqQmQFuXqSUs934unKVVzydlVre2kcKjsX4y2L0jnN5DUeZ6fkyxt9Ex3xsp0yTkUPn96t/7bopZ4MgIDJUboeI9TQTYBdzExt21aBMns9E40IB/y0KwpyGR+LC4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757361594; c=relaxed/simple;
	bh=LfnE5LCh/PdTuS4wBG5LmF5lqY2WgmTDKEcp6uRIrc4=;
	h=To:Subject:From:Message-Id:Date; b=s2evN17bgoVwRibv73kshMRjJjDExTh7jKPEnPz9tq6hQKLPtfECPSRyHecZbuz91/Uhhq0rcBAoSY2Zf7T73BOj3dBW4tGDRhcLfYcriUBEzE5jOrZiIESph5zhjOZq8mPzmaOPmBWolKP8gdiTNSsgsq+8UckJcUndhnx/p3M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qfQt3OZD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qfQt3OZD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D671C4CEF1
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 19:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757361593;
	bh=LfnE5LCh/PdTuS4wBG5LmF5lqY2WgmTDKEcp6uRIrc4=;
	h=To:Subject:From:Date:From;
	b=qfQt3OZDp/PRhfuHdfruu+fNepMDXAV4vyvHr5ROt72NRSvEHpIY5DmIaJVFtIqyc
	 1DrLFwvfrSoklt99uU/p/BJA6x51LlMZMcCDfdDY6gRSJZA5WtjcZdWVg7oELV/sn3
	 E8Tg0bb3W18nc7v+VkaexbVjnIpcSvNiPwr61rq4MWjSj6+U3R58OEVb1D+t+/7+dh
	 L3qBdjqH/KAWmm2Nr/nizwq7U9qDsIqJS60HsGkVBCLF2VFsaY6SOSNAiF9eqW0lX0
	 kGvMzKMqAPc3Jle/tFfuDIK26un3LOfZSNTosewcrOMbuNh2Hqo6UqzgUVS3LmjQWC
	 C0m7at4MoP+HA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9096ECA1016
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 19:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175736159358.28135.186465738980752948.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 82ed093673b6d307b3a0bfd048e1441aff535da805a3bec494dbbe3dd5292eaa
Date: Mon, 08 Sep 2025 19:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757361593
