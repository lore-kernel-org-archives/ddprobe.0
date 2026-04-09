Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18DA21DE2D8
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 10:15:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775729734; cv=none; b=EX3FIkdmdNrKs7X5/gDvHwBxU3tbKPWv+T6kUqPaI3VoR7m25XnkNN+/FIhwZ7LoUGPc6pxNvS/r8Cws8jSbvN0H055KUk5MzBMJPmlrNwGAXyoPgI0n1yER52lziUwiisIApbi664ZYxsqQ4/0oJl91CAJo0cNsAPyFgNr7IvI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775729734; c=relaxed/simple;
	bh=CNhDfs70WWSnP7TCG+zbzNS4LXijsV2MeyckO5zMxqg=;
	h=To:Subject:From:Message-Id:Date; b=NnJ2DwxLitGmZb72YSnUre5pje3OOfYM8RyC8oc3zacTy9OaKk2WEhKjjkS87b0LIt0+JSvNTFdI99Fymqy1HSrAi07BVZyK67pUh2Ym2FE2x+JxwvYGMmr1ZO57jS36rG+x6u5thcw550Xp5dC7inTBbCMmz7mHRCgrZ1E2GBY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I8U5IYJD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I8U5IYJD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC407C4CEF7
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 10:15:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775729733;
	bh=CNhDfs70WWSnP7TCG+zbzNS4LXijsV2MeyckO5zMxqg=;
	h=To:Subject:From:Date:From;
	b=I8U5IYJDjmJBOjqzJJC6S4aZrSopVxPZsCiZFN9yHJ1h8v5BxM4JI7DelUsI5G0e+
	 aLXZbwb44K3LGGAbCQND+eXxPo8Y9yfxMYbWbODdhx0RY9aiD6ecAp1c+ibdT2wwgV
	 eYp0fHC+GVE+PlLJt5Ui93YMsFc/KCqYmN6U6/M4Y5tNDu5B7ydZ+sb75Ncugkq3cI
	 sUpLmg5RS9bBKx4qx1G8MZyJIDZivdElrwKPodXXwsqAq6olwcAJi6jgyXdY6ANzSI
	 ux3YR+RtpN9D87XOBEMj2wGFvE/pgMJjN4BRLoad+u+YOVRPHmQuMceCJ/v1gU9nmw
	 48BXEW85y7Zlw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB24FEA3C20
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 10:15:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177572973369.25966.17791101669597538449.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ff702adec739ad78d0adee050993c525daad11a5e49cf884e2737fd062252728
Date: Thu, 09 Apr 2026 10:15:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775729733
