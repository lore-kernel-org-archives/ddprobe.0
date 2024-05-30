Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5563E183989
	for <ddprobe@lists.linux.dev>; Thu, 30 May 2024 11:34:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717068863; cv=none; b=P7pun9JENMdQMbC2szDC4vSqt12L51L8KxawWnKhxeOQEoS3frrwslJRYTifaHp48L2ISMn21Zaq3EXhmOkeZ0qmzV4HBpDq6UUcDyn5lT8vhBSYvT/dr0+9NCo2bxZv+fkB2wWHp/JVaaam5hh7MZF6tO0gR6/vgMq2zc1eWgM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717068863; c=relaxed/simple;
	bh=zYfHtAZYt+4sDLmjyncKwQdilwZFgFOui0IrtsSNPbk=;
	h=To:Subject:From:Message-Id:Date; b=LOPw5oZ8xGAfrvgzDA1d1zERzpdKpGkLQNWZCDFsy15mcI54zUwEjPDm4DupnnJChxbEWKntJNkspxV+yoCc8apJ9fOHyL6BJCXZJmNAU6ziTf6WXiLyCr7QUatLhicsAk5FwtxQKH7TbzO+l7Hb4rMK0UAxMXGmyPLPrRosfsw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g8PwARbj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g8PwARbj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D23AFC2BBFC
	for <ddprobe@lists.linux.dev>; Thu, 30 May 2024 11:34:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717068862;
	bh=zYfHtAZYt+4sDLmjyncKwQdilwZFgFOui0IrtsSNPbk=;
	h=To:Subject:From:Date:From;
	b=g8PwARbjGlui75F8twKaDOKr7f0UbH8/1V3S9mvS4uMFaTUfOK2GwsXhMwaqlDC+Z
	 yx3MK1Njkv/Huyqi3DgzkM5UboDSKi4c7UdC7XEXAgCdZSBe2TLOEugQsEROp97oVE
	 igGiUV1d4v7mmvVWl83fuoI8Xag1j1c/W/Ib4NKGQ0xBvZpq2gyX21YhGxl/t5ABaZ
	 lmzB5fJT9nsw3vuAccjrlQi/lsqF3Bvrs2HI9hzMUERiFhofR91srkXapIbYA9wpXQ
	 sOAmcLU4PmAhKQi8WJ3NXrzL5TVdN8f9LK+c1DjhNobXQTklzEP9x6MRf780LMJcvb
	 BEkp2tKqp+Nhg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD69CC25B74
	for <ddprobe@lists.linux.dev>; Thu, 30 May 2024 11:34:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171706886276.28389.10725794779349287284.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6e967fe9e2ba9c0536f19606e69ec676de5b191e833739bdaab8237cbd48ebbd
Date: Thu, 30 May 2024 11:34:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717068862
