Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 417853CCFAE
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 12:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788871234; cv=none; b=FuNHJRKFien8A70x19hO8r0Mfqu0N0wCjjekvk3LrrBAyTq3hMZq/5nwKo7tHJJGVPwjsSAFIELdaet82vL17n+cs5IuNiqgsbKit1OXMCqUt3M5ALPF/NhcSEe72eWukx57r8Pjpy/qXjYfJiyLYuzga2aX+XLTh4egPmEm/Yc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788871234; c=relaxed/simple;
	bh=dWfai7EtnvrCPN3pN4qRzOTKnLCaYuNLQMQnX2pnwzc=;
	h=To:Subject:From:Message-Id:Date; b=uZ4kC63mX987rOAXXONV2xRMxeusi1KV+Bj+a1oAssUK3YVlK/MOC9pRjuFVwrNXkfWVIMzRsyYZj7NnGGtlXIlAUP1uYv1bJbtgzNCdDub0RPqyqvFit0H6LgCWLsGKl68MD3PLoNTkZao8C9TldaQb2hGp56HDLufmLnAcCOA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tM9dA56e; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tM9dA56e"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7EE4C2BCFB
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 12:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788871233;
	bh=dWfai7EtnvrCPN3pN4qRzOTKnLCaYuNLQMQnX2pnwzc=;
	h=To:Subject:From:Date:From;
	b=tM9dA56eBGxlnm/93L4kvad/GPmIKBPWRtzxSvwBwoUFwJe9EB2VOLjlDPL25nFSI
	 YwH0cDmSu8p8EaZ6kh4aEtyI8iz67rvZ+2oRRwCSsNyguUm0gbvNUAGZ+pFL0cxmTW
	 CcNj8D7PcRCcem7HxD4esHAczNI7J9DDy0p+XoW1EF4obIlmjnvkjFE002fZAIgMqO
	 /OHjKGJTxOoqABLq7a4nP+gp3Mawqn0vsjrgI+/1l28MXbnTwEFsOsICF9XurLa6zO
	 YdDNUS8kKg6S5haiSxbJmshXwAL3B72JcyCysuVCiT1bde1jO5z+OsYm7RPS8LeIMt
	 8AaFXg/fCmTuA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2EC8C79F9E
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 12:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178887123371.7203.17141061898569722635.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 58f7c38236088501cf3a9b52e8c88969246dc5ae7ba2122d37e94d4b576c70a6
Date: Tue, 08 Sep 2026 12:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788871233
