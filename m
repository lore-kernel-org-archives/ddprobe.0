Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D303217F27
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 22:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768256034; cv=none; b=XJaMrPQhqxYbC1bO/2k+4eGezznHJ8DZRieQlnxtv+VHaEJdtr1q7WrnFEssczg/w3ajC88Z+XXr4O/k1ZMz9BsO7191HIjrFqQp92hdl3JlEbaD89dU86vbk6rSHTIUHkcQN9K88v0KKKCCP0ynuoxrwSglDfcDXg9m496TeIM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768256034; c=relaxed/simple;
	bh=mDjsjxY523l/7dSC/kbJfA3PKE1WH9sn+xk+hW9EGs4=;
	h=To:Subject:From:Message-Id:Date; b=P/O44GXTUa1G/CatPh2QJJ+f9UxZG8kPtl8bfWBwhRKiMzQEdu9ycfaLOJ+j5fOHUOhbv7ep8IkUP24mplZZzMtAbk++g2dUfJmLTwIdFugEHq3FSAOGb45jCU5sbQ0fG59z4xrdtYxD9IVw3Iibc9UExGg+bJG++0wiE4o3yTM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lG2dpC/y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lG2dpC/y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A178BC116D0
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 22:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768256033;
	bh=mDjsjxY523l/7dSC/kbJfA3PKE1WH9sn+xk+hW9EGs4=;
	h=To:Subject:From:Date:From;
	b=lG2dpC/y6UZZd2jTM8cTYVlN9FlrQG/91tOyAxDUIWWK/dz/LVxgxqJbIqmYsx4T+
	 puRQkn9qYPR8tEAKLnvUHAUiNS/5C7BHuNCV0WrS+ihXqjaUq6r/VGzBWvGNQDsH7J
	 XwEQXQArdxjoLrWMkJiWVx+5pXa0g0HpRmpRPEzXSitzXbzwwBw1x0iDEcnNYXmgVq
	 QzIl/A8bdHVpPwQVYVpNnK1A0peraRsbTcHgzf0AfjRZvieK0x7A15c6czOkrvc4Xb
	 Q0FqqiIPhowYrcvNioWY73+YVFjPV+xDMTYgMpX5OvM6r5clkV/UB2QKgFU+fo1gMo
	 rhZNDqjRG/s0w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F871CF45D5
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 22:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176825603357.28540.4929674140528582073.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c06b7c30e5aeca6f6abbfcf65d4baa98bb38831631b6cd2a4f9c3ab6f59c0ac4
Date: Mon, 12 Jan 2026 22:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768256033
