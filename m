Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 389CC17B505
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 12:04:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770811494; cv=none; b=cqGsqXgfhhQECGWPzSGlaUEDoHR5fON3Gzfkc4N3WlBxHizjHd1mXrooWAdELIV8Y0Kkg/j2Gw3MpY7vC5QfrZXZCCH4GgkEzlGRjE1eDnDTHbrJknM43dxKY3EPTsTM53+s/yiJpouJ65lxbOBM8wGsvMEvKo+0qzP1KCzRA7g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770811494; c=relaxed/simple;
	bh=VSarqHgYVGR912CZnzuwzYgmPGc3PPr46u2xaG7WQNw=;
	h=To:Subject:From:Message-Id:Date; b=bRjbj+j921QszxY5llAcV+Yxh3tTMeVT361aaAsMjcI/6OICKBRoDlddawQwQAjn/kUsiUZWR7rvtp+ZgAZeqhM7FtSknf7B4sLFQ33P3jcR8smKp9O1A20eaugJuAy6Gb0lWLVqaDfXC4KzwGAnFGgCXTR2jWLLRk3QSfz+5HI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lj8QOyRA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lj8QOyRA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D921FC4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 12:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770811493;
	bh=VSarqHgYVGR912CZnzuwzYgmPGc3PPr46u2xaG7WQNw=;
	h=To:Subject:From:Date:From;
	b=lj8QOyRAyTVjmbEO1Km/QDeegfa1eGbKXTgRLMQQsvECeX6qwo0qpHo5qD86D2T7r
	 4KOHuDxjzr2Enf+yg1bZJWkaIKwuLX7EIvIVWvAjiREY1dD7XL4+awDhYBwGBBDkw7
	 tipJNTXmmq/hr7vupc8qoaHxGLdRV89qFoLuY9QbvRMpZytNdyb/D56s77DeQuAoqt
	 df+rh0kujoGr7A9oytVQPHMrWu7+9/PwN9CJL4j9WRVmCkMznLd4li3h9RbPgsFXbV
	 xd4HhcauBnNZVOyMdN3dHLzi/5pxvFchNV9KB45HHbIhE6nOGhWY/fq0fU2/7Ym1Ws
	 tup11fTUHSM9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C374FE9E2F8
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 12:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177081149377.19432.14349786282028796890.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0f996b12b2a44017fd64bfc55a324e3455a3a5e9acb27e2f844ea3af1794e19d
Date: Wed, 11 Feb 2026 12:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770811493
