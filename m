Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 242E61CDFB6
	for <ddprobe@lists.linux.dev>; Tue,  1 Oct 2024 20:25:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727814355; cv=none; b=gSvYh4lbv8GPMzP1CEle1SUNm6SIgOz+9SmvUSfJ1fcmX9XJ3erwa8eLyeuHyZ5uStA198hIcb00IjlL71o7UimEomrIKRSJ4GjJxzjR5lt5SmguyZ7LfkcEccumREtmEIYffvfX12AUIHlmG7au197uPNMpdkkT8UP5+2w7dyY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727814355; c=relaxed/simple;
	bh=96pVoOqxTnoHVE+ceEUqSK3KCs5jdvaDLPbGWrTs65w=;
	h=To:Subject:From:Message-Id:Date; b=jt+fSbxKeeP34a9GZNrVVFeZ0bgkuzl6noMifHOrdRifBgoAcuSVwPzlcwRIgtH47t4l5IK9brI3m8wK0jYvHz+B6Wf7lB0EosE8lKNnYcKm1X+u2Jji3XJBzJWt8zeXDMYRQc4875MVi6d0q1FJSbrKzyFzLPDMBa0yyDxIAR8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=deAyBIxN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="deAyBIxN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5A1DC4CECD
	for <ddprobe@lists.linux.dev>; Tue,  1 Oct 2024 20:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727814354;
	bh=96pVoOqxTnoHVE+ceEUqSK3KCs5jdvaDLPbGWrTs65w=;
	h=To:Subject:From:Date:From;
	b=deAyBIxNDunzY5pzq7c3bBGTY/T3x45TMiQr5fTo21XrCw7DSRYoN5slpE6mmVP+k
	 ffg4fSbAcsHKqyqf03Si+mcHjNaAlPHRNYdBgp4nI1mrpvjqnnYbr0eAO3mx4wTg7O
	 tJChPn4HCBvlq3soDNPLfwzIJCjInIAWIC9QWnomdOk3SLwlR7hwpZQUyrEC63sByd
	 WA0+XFn3vJEC5Q5GZ7+Ij1wvoERdOj3Mkt4O2OR5sKjdzXo/xEfedxtmq+qjf1gn54
	 9M2CN3Uyhi3hPhYSswrUUWHpHwnGc50Ip17ixUSJpd0r5jJBP11QMNIOwTC7WvsHV3
	 Ei3B+8pAMyhyQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95AAFCEACFB
	for <ddprobe@lists.linux.dev>; Tue,  1 Oct 2024 20:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172781435359.3319.15027821564376860092.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a7589b016889f2ce54020b1956f493b7fc11c9c874e91fbaee4662f747cf02f1
Date: Tue, 01 Oct 2024 20:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727814353
