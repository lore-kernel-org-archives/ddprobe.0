Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 79E8731195B
	for <ddprobe@lists.linux.dev>; Sun, 12 Apr 2026 23:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776036454; cv=none; b=Cl6IMUg3W+nNo+yrsARtAgQOrdGG3uHoum/sbAMeEte42OGV1KI57Y35Cms1WdiOUFhvqbwjv8o7/pkort7rm6kSC3P0Rv+iyR5JOyQ04qty9prS9GPqWiLpvCsbE6QaNwapkNzDdfJtG1XlkaA0DKpUUP6N6VjPWdaXt2XI0iU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776036454; c=relaxed/simple;
	bh=vG8R4tOoxeBaqbNbYPdMkUIaQGk3e8Pb2Hq8cOUqsm8=;
	h=To:Subject:From:Message-Id:Date; b=Ju8oi8joMKe3Bhztd/ybOXKm1bpYGLo61ooT80hzn/6F9sy8CeGeHXUId2p0Z9F5VRAihoiW2tUrTm6qjonnbX6HTDaDoxhnfzkUO6Ggaa/9oOXVpIgMKjXto/9FJjHWcR2Gr2u2YC6MbAuxoBfIOOLSnBgw2QVkc7lHMQSVM4A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PCTgy4uL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PCTgy4uL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C15F9C19424
	for <ddprobe@lists.linux.dev>; Sun, 12 Apr 2026 23:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776036453;
	bh=vG8R4tOoxeBaqbNbYPdMkUIaQGk3e8Pb2Hq8cOUqsm8=;
	h=To:Subject:From:Date:From;
	b=PCTgy4uLU4iRHwKLedzynlRrgtPfIs7e3MskaYFH9/UWTrDIHa2jRWE3+KSRi1kbi
	 7xplqjitf1ueA/UFQxXuetoEOQRt+/yP4yt13rOyAaiQXTVEWBfQNl2zUGnb7YW3KL
	 jFfcIitKkhCYj9tKdz7Cwq8ARyf+eexwLx2b3AjNdzO4+SE/vMUUMtNWq1NX9r8gsL
	 w1ckL2u9sf7NO77JDGyPoqFc9fxhVOr9qFBmC1GerVWnUAfXamKEM7OYiGM6aGXuJ3
	 dUH21vQxzUlrfmvlbSelo8lFWtkydHJrFkgzT2c+JXMo8la1CQyAkFJnZWYJ0pujFO
	 NcVL4oCXeAYLA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFD1BE93804
	for <ddprobe@lists.linux.dev>; Sun, 12 Apr 2026 23:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177603645368.28078.2512531992033734239.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1e126051c2b5e4e6e3d3fd92fb25cb775cd16477f49936c09fe14e4ad57e1eb0
Date: Sun, 12 Apr 2026 23:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776036453
