Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 163CF374F1
	for <ddprobe@lists.linux.dev>; Thu,  1 Aug 2024 07:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722495954; cv=none; b=h5GZONpBQqVyyUlaMghjwxrwtL19mPkbM9lZnVOByaXJUwUJdNHvfXq+f6atUvIFZLf3pjhsuL4nuB2MzPLpXUkxQP1krNsWjq++4Dql9iKu69QLrbU/SQaRJWSIIO+nPt2v5n2coGzX2mVg+C5Ot45EqTSqc9oC5qdmkQy4Gi0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722495954; c=relaxed/simple;
	bh=TsiP9zXPwuA7UN/wONSxWS+71UyvN87TjnIuHdyuiuA=;
	h=To:Subject:From:Message-Id:Date; b=QLO49cgOEE5MWypNiQXhHwa1Mx6lncyW4QqUQjttDAPZ2dSwjzevrwF9xyH+AH5GPqohW7VWlDaOSdbP/qh1vthil1SGUv870h63hKO10lRjkqDOzgvkQOB+noBDu3Ne7V3tUxqGfOVu4O1hFU0mNuQrN4msZy46CwtlRhBKFzw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XWcp059e; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XWcp059e"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0A4DC4AF0A
	for <ddprobe@lists.linux.dev>; Thu,  1 Aug 2024 07:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722495953;
	bh=TsiP9zXPwuA7UN/wONSxWS+71UyvN87TjnIuHdyuiuA=;
	h=To:Subject:From:Date:From;
	b=XWcp059eOv5yx1DQ7sPkYp5SUlge2t0gQ7XnvfuNqGkUW6mcrJHTHudzClweQKGJl
	 sSDoTpBOJXAZiMbsIIf407n8Sjj3NOQesNd8kM63FC4p0AuuX0S1MzdToRx1uKp1wT
	 hD+hlHwiAAVB8OlNYwfWBXmrTDlUozRcNLxGV7B9RGRE5trzGV+MdfMrAZ3aDdQas3
	 B4MC4oQaVGuqUfMBLASaalD06l7kLJXg+PRIDAlmUUmtpZA0ns4yVpnkk0HVZEtUOw
	 q7hpR0fGdduGpvSRWbdJw9cfn+DMCWi6ElvREEuUD3Gr6z7WY+LIMbHl9ptduBRKum
	 ZhtDdPy65wL3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E5AEC3DA64
	for <ddprobe@lists.linux.dev>; Thu,  1 Aug 2024 07:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172249595363.29265.3498714920996492121.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 940b867d4c0ffd775dc484352361ee3d200587c48a7ffac4433180a5ca9a45de
Date: Thu, 01 Aug 2024 07:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722495953
