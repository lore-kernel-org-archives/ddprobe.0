Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4305C14A619
	for <ddprobe@lists.linux.dev>; Fri, 25 Sep 2026 00:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790296834; cv=none; b=u1xcyvQdJNv3Udlx7NhKI2Jb2TPwe31Q/9AFUsANDF3xwzWspYwfOheVAyQ7jIZTQz/gNUsXeVup9PyewTG+XSSMQ3CQdAcogwDtOYGx6hFcYIIg439qd1rOjQS4ZaTFapMgah3pQ+yaITt1F0Ai7Wji87tXyfUBHm9+ieIx+fk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790296834; c=relaxed/simple;
	bh=dRwinh9HbLatSz1ntHHCxo4E1slBz9mXj6aH23jW2yg=;
	h=To:Subject:From:Message-Id:Date; b=V49O7NAmexkD6I+XxX7YMR8XjVaXOSCT3y/Fu3LGA+GS2SpHSKAGHTRttgc33BKS9LOQ2puN/z3wLLMREZA7NEHgnC6oetHgUWedPqokDcSAENO0p9FFe/owaXu5/wT901MUeXTUjPI1y4ea5ZVLMNSCwm1zkC06TBpL13m128Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f1FDwkXP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f1FDwkXP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D494FC2BCB3
	for <ddprobe@lists.linux.dev>; Fri, 25 Sep 2026 00:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790296833;
	bh=dRwinh9HbLatSz1ntHHCxo4E1slBz9mXj6aH23jW2yg=;
	h=To:Subject:From:Date:From;
	b=f1FDwkXPdNOwFKy78oLKVozdI/cWke2f6G8q6B1ElDnCSZd2pATROB86VWx4a9Izf
	 HLSbh6ibj3py0kYbJpbIcIQ9Izay7xWdja4Cf0tILQGwGtsktFWgBCvrtIb5LxL/wz
	 foj1AZdGzEKNj4hGKG1JiFkTBYUkwq/wpwWQZsxCzNu7bd4raaIVEMrMKwzuK/8lLK
	 1AFC5s9IhUPYy+d4CgkYc3rfhjBAVH6Zru9LJJQjzM23A8O/xDUqJVwyjpd48qLvY/
	 z0RE5g3ieANvHD8WgSo2A/ckCclRfAJpPnTkyVG3x8+R5HvqPxbeTkbvzccXt6vmEW
	 XfNX7bJWqMHqg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B07B6C9831E
	for <ddprobe@lists.linux.dev>; Fri, 25 Sep 2026 00:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179029683368.9781.1388878230734031971.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6781a94f2c5d64458f0061fb32fc92aef01f9f8650a3dfb4a5453bef15342ce1
Date: Fri, 25 Sep 2026 00:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790296833
