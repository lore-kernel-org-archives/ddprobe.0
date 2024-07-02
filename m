Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45CA36FCB
	for <ddprobe@lists.linux.dev>; Tue,  2 Jul 2024 00:55:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719881723; cv=none; b=O6dV3fljCdrDZ0yPzg5K4xrWF3yl/AQCzOVSNGhfr/JER/5nDdGJ0+ZoMXK5jCCGGPP3xpWKH+/4bezDQ9zrDf0wJwvZdP5G3SN11mtWnxfaqRlIgH47vawCcK+ehsHzCXt2sa/dmiC2RlAm8tSg1B10z+7xRHXqB5nvg1qPDhY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719881723; c=relaxed/simple;
	bh=WoNi6KzgIyRSYT4sR3cOX2MDjxtAt3+p3a6pHXRrYss=;
	h=To:Subject:From:Message-Id:Date; b=bVVTQzNpA7ChOK7uM6s6svVYQj166nH9mFIrIIWzZZ2G6+SHRseQpjDwGoqa17s23j7nLC1SjQwL6qywYbZQzFNYeTfExhrjYqOVI6jiZtaOjgV+HXUqSQIa/HMRSw8t03Y/TQM/IkGk8VksXGJHCXUPuxU8QqngKQMVoE9jODs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AGRjRNYN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AGRjRNYN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE702C116B1
	for <ddprobe@lists.linux.dev>; Tue,  2 Jul 2024 00:55:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719881722;
	bh=WoNi6KzgIyRSYT4sR3cOX2MDjxtAt3+p3a6pHXRrYss=;
	h=To:Subject:From:Date:From;
	b=AGRjRNYNHfgmF6xcZsYxPuOhAXAbAxoYTgZy9s2Ir2Jhzk2HfiM9dSw1mc2nghh3G
	 VXC6NH/F3CUB0fnLr11KZ8qe+Ea569S6FRE/rnTZiOzTxz4fH9agglZ9zXFZVAvJew
	 9EXayw6a6F7xcz8WZStEGdvofVyyKcSGJCk096Ku5Zkj61cWSBIY0ECxxec3L+t+Ut
	 qgpiq3nXjJ78neZTe9s0Zica9EOuRWtqG9ITV9olGe5EYUhIsAK8ieWOEC6un+OS7I
	 6HJXKVE/7TSEMUpzCAvjwMGe0LD8nlqZNA2EOBmC3ca9TxsD349HUem1IekUIikx8D
	 zir/p8Tm5TZ6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C903CC2BD09
	for <ddprobe@lists.linux.dev>; Tue,  2 Jul 2024 00:55:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171988172277.13723.18344920302621279528.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 707d9c4cebd91ba5ecb5de1875ec9163c5b9ef00d0ba743de61aeefe29134512
Date: Tue, 02 Jul 2024 00:55:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719881722
