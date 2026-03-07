Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 284B333263C
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 06:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772863494; cv=none; b=FG1iOtul4OdrxLo0Kd6R7pGeqIRzaMTxqyXrG/rb8Mz0hJD9bI582OAjIU2QxxaNORkdniLoz7fVaZTUhneqz/Lyv09nEt+FA03/dYe7dkii14bh+LFLkF+B2jRciI/VeqNjb0ce0MRGExzaeAr4BZIQoWVFh98QItqrxJWw4uk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772863494; c=relaxed/simple;
	bh=oe/V4KpyafMAlqwAjaS9ahafAWBi8RVyELBr2CBV/48=;
	h=To:Subject:From:Message-Id:Date; b=ptZN7jOiHfZxM6XiytcGEhbkQv96pUt2e74GoRGElJC6li4khoAjOs1ENmQkOjB8Gs72Je33wLXnrDCPYGd3BP3pT2VsG9mYbaBTh1jeIXp9DBibYT1HWsr6A4Hn6GztRg6+Zn3uX+hCfP18+3H9hzazTO/FbJjK6mmuUjCXeQY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JGqOW/DH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JGqOW/DH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7A70C19422
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 06:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772863493;
	bh=oe/V4KpyafMAlqwAjaS9ahafAWBi8RVyELBr2CBV/48=;
	h=To:Subject:From:Date:From;
	b=JGqOW/DHajFNx0eaZqT1zDVdsLO/MUmqGzWUSC0Q1AIvI/5WItrpvTQzkQ0qXjRHZ
	 cL+0ah8lp85Zt4yCdH1SrrqyckS0AWbeBNm6e9y4971an2qLIvt/keFV+Xl65uISKP
	 NpRfUxop+paHTnZoNPRwaw2SNli8lPcnTCMJNdtXsPvPWfGOn0Vg2SNwt7rzo+iHKX
	 qTr8QfaqqC2BujxHcyAHmU96HVKer55d7YXdbUV+xl4PwH0uXiIOcFp2biNnGLtkj/
	 Wodn8pNtgX7yJoAojMFcOPwJJ3NVOEy419onA/ZdH1vVw3sBl7J3JSx8IjJ12Nf1Ak
	 WSSH6l5SEWNHw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C764FC9ECA
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 06:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177286349362.32595.10444401361070788604.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e7641bdde8a61ababc6dce47cf401bd6895331e738c60c1728e8417d3bbd0320
Date: Sat, 07 Mar 2026 06:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772863493
