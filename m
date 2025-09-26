Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 303C61C28E
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 19:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758916194; cv=none; b=BMZwY+7uRA0SEp/OjE7r5M9MOgLmnyhiI7SPgddDcA/GHvvbaV4F2uUVqgRTjoBaWfFCWr+kAc6QoI5ZxQB8VcRCpcqDsfaiJ/7/bcw9j3R92gAC1k12s82wZ8mjJGpA8boXuM7FV7dm3Wf7RClU3O73AebRdp3iJgZqfjnVg1M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758916194; c=relaxed/simple;
	bh=eRpu45nFekjePjvbBA7N3IyTwwdf6a0i6P6hcpU1Wpk=;
	h=To:Subject:From:Message-Id:Date; b=phTJ5H0fbwrGg4vf3SBubLgaNUFxLFnlkpdXqJTKoYudriiRc2A5vbSw6Jrrj36JrAfCCTP1yDg2xes+R+lI4K0wAyYLWF2NJjFUYOl8Kze60lSrL2o3lK96PhIwlIZGRiV4O3mQ/U8vpJ14FsKKAw3rbUrEcoeoJNt0QmboKhA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qknrske+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qknrske+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A93BFC4CEF4
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 19:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758916193;
	bh=eRpu45nFekjePjvbBA7N3IyTwwdf6a0i6P6hcpU1Wpk=;
	h=To:Subject:From:Date:From;
	b=qknrske+on2UUR0HG6q9GQWE4UZZl2QEiDzrOQflO8LjvvkmNWip5Kt9zEP4FLMso
	 ddrSHJcswQCKR9+eADWqZtzwa6TwLvZVPM7f6XEcifHMjqA2wK0MJ6dijtswQJ9Ygq
	 TLhUyDKrsWzXS016V2WtA6NIwVgPlwzU1GgJKYatabNtO9HkMqA+2Pv7o85drdfvOe
	 RSqCgA9czVRDMmsbeuzGUka4xrKalKK6LfUE4P6rieU6OF9wPjJT1aqmI7k9Yu89+n
	 oZ38xhI4NTnlzucw7EVHWWsmCv8tA3Ud/PdEoii0FNYDLdLS88u573MOU12oqYdO7P
	 KEe+r2E53wNnQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9571CCAC5B8
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 19:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175891619359.11895.14653770694930085669.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e828d290e3498c04c58cfcce53b91eef5cad8eaf94c20f27e310b03f968b5e61
Date: Fri, 26 Sep 2025 19:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758916193
