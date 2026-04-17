Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EA791D5174
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 00:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776387454; cv=none; b=nSJvbvWRj6ln2/W69OifdS5zfOiDZyxAIMTTL8aRPqZ8mUmfWS1sQgxItTWE88/Bk1u5pbJe7xpd2z4e5D9lAQa+KOK5hj8Frwe3ILX5prZbT5GjhRpuuq6cFy09L+GiU6FCZs7DD5iEmLg4lL7lrtKDUiP27i20Xs+6DB1lrPE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776387454; c=relaxed/simple;
	bh=NZ7hfstDd9F1a90zqOycKqmAkBzRNNLx3UNecEwzZ1s=;
	h=To:Subject:From:Message-Id:Date; b=tQc6dK4ZTFz+uFHAtbBq+S7MpejY9CriFxdFQJKv+5Qx3gbwJvcb9wrMaOqkVmxUxBjT5ew3hGY5jS1zJ4AtG52pTBZkku9sEwyIcCcbkS9JmceUlklkuydpwvRR0IWsm1Gbq9A1rCFputNXulQ0B1HpyuX/fcX1ObwyG2hpdSc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oYDbZLjV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oYDbZLjV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC649C2BCAF
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 00:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776387453;
	bh=NZ7hfstDd9F1a90zqOycKqmAkBzRNNLx3UNecEwzZ1s=;
	h=To:Subject:From:Date:From;
	b=oYDbZLjV3L6RSz9NiRsDAWTdQIVs0GVhrdvCIar5jXrLle/q9lXeRPTuqcZEUW5cs
	 xQqeurN2uZkwbwpbm27AjBncQIK5TbpqeVgqj2dkA3wTCWSIxknBpeWgoPnrd+zM8C
	 K8bNkoBWBFgbGj66TM8JPf+OhfCyi8/Y9KctY4IPo9Vcm7jUGchqQYDJVwfXNh611C
	 Wk6X8dLdgowls7iRgxffrU92p0nv8fvIS9yLVF4imSGVytKEDjxl9YUrzKidzuNz1I
	 pxxrln2cO3JtkOReTeDOKrlpGCg4gV3iddFMxtBHwqV7doGuhb6+Wvvg0Gop5h3JLM
	 d3J1XvkbdUF5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEEB7F8E499
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 00:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177638745368.15290.17033057082642176660.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8310c966f39f39d9d2b10762be892d2f9312ed33e688193334f0cfe0ed17750b
Date: Fri, 17 Apr 2026 00:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776387453
