Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18ABD200110
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 19:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771700694; cv=none; b=UlNeohFzTtMEjDbGPi0N2BFnTkBXlocmGotOayxIpO2yFjNLIZbEcJP7StaCtSGh+nHKighVmTPBLZ9Oo+uHD/9OeEqv3NmTD9dQdfh3cSM2rI3XXjMwk2saLPCQ6/BvyeE1sBW0E+jSfRD6jWHM1ZDBnGF5ZWEBrjVDUq990CI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771700694; c=relaxed/simple;
	bh=yaOP/qim0oLj85gTr8IEtgA8kaGMyjw21EQYWXLPIAg=;
	h=To:Subject:From:Message-Id:Date; b=EVJ1s0xE9bT3Xj9b8QxEHFDCruI8p6QyVhz0m6YIY99QMP1TIKKAE9Aaa4gkGG2IYBmUDs/u5fo/zhJUF8M2KW0MajGIfwcyGex/yD2mq5kqmdszgyu2MATkFhNtBuuTErXDZdwHOvhuY7pKarolSPIZeTe+oi3xhBJBPXA9+Ps=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DPY0XoUI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DPY0XoUI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0CD7C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 19:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771700693;
	bh=yaOP/qim0oLj85gTr8IEtgA8kaGMyjw21EQYWXLPIAg=;
	h=To:Subject:From:Date:From;
	b=DPY0XoUIiFj/BF4D83fT5LFRtcM8WJAANtsfijrYXNbd+u1rcv73FdHkIGPc851yt
	 Wb6yb9gKD06Zx3cYPEb5mPklBW7v84IK3Vy+EApA7g0zX6UG6o55DSPi3XcqR+ccnM
	 cKR1C1XG7pJGyimgCAquU9GH3Fa9YW8hE4GmpLBZSDLC7sXBAZupKdFu+ldPgnCMmw
	 qNEtd49G6+JjjbAHaIQ/i4AGpPVoE83NVCurWK/0ucx+zjb0KISMlodfarpuGvNRB/
	 w/VhipscrUnVMSXvdY0jVpCQHjOaDH5pdPJpwtGRKO7Ko26RWiwW4uuT5w2drSO6Va
	 uhTHWIzqMabaQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CFEBC61DEB
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 19:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177170069360.17464.6225982525853192773.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a8eca0adbcf668e85efdb0703c153a0950ad0153a737ae92e7a8adb374f9f302
Date: Sat, 21 Feb 2026 19:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771700693
