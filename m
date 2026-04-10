Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3110529BDBB
	for <ddprobe@lists.linux.dev>; Fri, 10 Apr 2026 01:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775784454; cv=none; b=HVhi3NRk56GFMmXfXW5oyRbgs0tZiw0AwVmaNebfzmnvLdZVGrA5qYYnjo6ol4IJ7qylv975937J+3/8tZE5/R6gEXHnXDE98JSTaoSItvd332V7FG9KnJ0q8i21OoS2HzDCE0/zNZyf4nAshhhcglbVPcVHtx+YQK6CvWVhfrQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775784454; c=relaxed/simple;
	bh=mbaQRAHpgZ5fuGuaIIAM/Wz/Hac8ybUBz5yP3C2y6us=;
	h=To:Subject:From:Message-Id:Date; b=ZY9Sq2lgyMyGQ2605DhTQZ018hSYZRpwmGSES+Qh1j95qFPOJdt9uEAzPpx1UUooejmv8Xn7mzF9h5A/GPeFyOxnVcYafv43pblUeiTna1Bs38JCOWqiz8z9Z4siWyJ30o3FmQhtRQ6Ja8L8fI/f3SuVgf8PTre88otfUHzTjXY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cPPHrgd8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cPPHrgd8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C18A5C4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 10 Apr 2026 01:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775784453;
	bh=mbaQRAHpgZ5fuGuaIIAM/Wz/Hac8ybUBz5yP3C2y6us=;
	h=To:Subject:From:Date:From;
	b=cPPHrgd8kbwL4pDHEKSHqy7jm5bNGhF4XlI+QG9GfBLc79RAY+U48hbIJjkxC7iIq
	 Lkdtj0E/WjkkQ6FuUFNt1vIa8iPOTWOy27S5ESaRACE784yVO9jFL84eGEuUdEFBio
	 yOEfKl5A89rckmB2paDNN4PV4mlcln8LoYwFdQG0yna/R+EKb6ZzpoBbUsiOqTWwX4
	 iiRwE4AK9wZArSJczrSPoYfXbIqU6BBx1EmShutA2yZKGtRVOFGE9y4jpIqWlz27u+
	 0OKIYLaOhu8AeWl53l8hiN2dYvPiY15F103079gCtRmfSapRyH7uUU4ztU3XFk73Uc
	 yxtdtlxGeCsHg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEE86F36B9A
	for <ddprobe@lists.linux.dev>; Fri, 10 Apr 2026 01:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177578445368.7661.17980870547503768624.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 98c5756ff85d4395a1229d58729edf6c0546cd8d68055675afec5da5be8b2a71
Date: Fri, 10 Apr 2026 01:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775784453
