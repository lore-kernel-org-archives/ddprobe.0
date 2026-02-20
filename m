Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CDE986353
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 19:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771615494; cv=none; b=iuqVG934g5P7vdI39m1sh0Ujo4acrgukA7KxRPTz0QeMT+DFMYspHcv05Mr0bOTcbJ4KtYINLIecNOML1Yk8l1dwC+LiKt5GqZgq0dF96Eb4ciiYR3FRq/iGNLpybXlBGAaVpFAK7KB2Dhe4GZm7ZJQX3kO8NFxfB00AvDkhxMQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771615494; c=relaxed/simple;
	bh=Zc817Watp7ThT2FlgJs+p3hxDvF4rbm7L3HrChR4QEo=;
	h=To:Subject:From:Message-Id:Date; b=c0cY7/KmGUKjGntfJC0xvrBZMvlkTjkSJFdWM27AhMbUwXbBdipFWrvR/ARCCK5R2yVTHXYBDSAEH0yELhFmihv5wTIWZQugi0/OD/SAYtFxeXwa1SQBiHzzvS7cLLjLLN/3rXf5nWfec/ui89KFh3e2SPuP/88SaCk29GGAftE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=as5mBsQ7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="as5mBsQ7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BCF25C116C6
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 19:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771615493;
	bh=Zc817Watp7ThT2FlgJs+p3hxDvF4rbm7L3HrChR4QEo=;
	h=To:Subject:From:Date:From;
	b=as5mBsQ7D+IrzA/x38iqUQXhPyZdvzAK6b5Gff0kwEiEn8cP/OUdsrSqgXLvHkYtd
	 IsLQ9zU3kpdCqabS3rwbr+KZYdLNlvrnqHpWUkesustMrarf3xJw19FEoW7W8IPhCy
	 +vs/Q6PDqi2+A6WFvk7T4j2SqQHqWGLM6x8eQaiPKSS9mSX7iWwHwRAtz7zmfW9x+u
	 82J/JpgIZjHH7s+8oMPsUVdSVnUqD3x6zd/wUVFrGUKyUvKQktmn7tWl7ALdmPPIvj
	 URN/qHTnD4FNpJvGSO98LcP2d25s273yRTIsWmjref2NJSjZhI1FYkOPWttMHOQ7+1
	 /FHgCzgh9D+IA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3CC0C561E6
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 19:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177161549365.28560.13687792822438986428.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 723a52093d739ffb5c1b28d4e6d1dc2d312d116504d6ad5b7cacd4086f870709
Date: Fri, 20 Feb 2026 19:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771615493
