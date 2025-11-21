Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 70713298987
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 23:31:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763767914; cv=none; b=tbUuV9k0rGHeET25cj/d45cUAkE1NyB/Weii0lxckH6mIm1HqrBKnqwXZKmUApoQvvtFNhdwK/DQq4zVLEMV/xukIOjm+uhHL+m6VP1yOK3KTKZZYpue/+c+qFjoHNIRcgeVSGUsAaw6H7VnQt7hqRKoHMpZtFf6ER5+IoaRqtc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763767914; c=relaxed/simple;
	bh=36SjBEgQiUZ3K1qNk04vdVrEVav3jM5bX10s3NMasfE=;
	h=To:Subject:From:Message-Id:Date; b=HR8IrvQ9rbURGmcYi8dSlTNuSfyTtvnwm+Zc6glbbjeJHvJ5rpUSUgGsG4TThrT1ZkzTu/bSZCT7Sl1TjXIY9TENW9ok9WF4jqUZ3NL04qo5AinNfAeAMm/TdJUwHxBXZUsIm0Jf9BEr20aZ6iUPSGv4yNyGma2aSBWrG6V10mk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L3UKIQ9T; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L3UKIQ9T"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD83AC4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 23:31:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763767913;
	bh=36SjBEgQiUZ3K1qNk04vdVrEVav3jM5bX10s3NMasfE=;
	h=To:Subject:From:Date:From;
	b=L3UKIQ9TmlhpCGyXGd4hxTFuoiUjxb5hNuZsF63TVi36N95bmUa7CxKdRFM0QGXgI
	 aRIuyD0dRL6sjbujBltFtGkcJfzBngXaOXF3HPt5BndoP7Pj0roF1V1chlLI+dCloi
	 EBCprDkGQytiww0l2EBxw0H6zLq/+YoeOco9eiqrHcyYQH0yMHoxoBCFVfqONAVEx9
	 W/mslXpFfccOW4op9PvE+kWef4RNYLPWWU6vMcmFByL2x6PYoVH/2FbbCQIWa8JFD1
	 l+dNqPwl7dOEKXU7A0dEaVAVoZq4qcBpsyRAjIOPObIKu350LpZ+FeSJwf2L6wLGQz
	 VSQY7ym3xJNpw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9972FCFC50F
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 23:31:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176376791359.27721.13981515897461530637.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e07e93c295d4601f7d0c8373545bf95dfeee10873050920a2badde746aa9ff9f
Date: Fri, 21 Nov 2025 23:31:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763767913
