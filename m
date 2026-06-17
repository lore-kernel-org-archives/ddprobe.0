Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55008347C6
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 04:26:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781670394; cv=none; b=dQULUGaJqN+cb3Z2yedCKI2PItjlpPCySzwVo+H3p0mIkq0fhDBgxA8OOE6dBDIYaEmjlpwOeDcIAKgqd0iEWn5ap4jOaqOdaLxZ/FumQ+Xd7Tf5DAZ2MUa7AaI9kGmUoh1gC4MhDI3CFiznf7ZTGlHbNaMOHW88HL+6ujKUyiA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781670394; c=relaxed/simple;
	bh=2dlSJFNMUSn08LaXWfoTL43Y5ljg3mN+E6dxK16mLt0=;
	h=To:Subject:From:Message-Id:Date; b=gxdH6DRr+dE0/wLACjbePoeGZ51iVRxMnXFi4fpfiM69Vghv3Ae8vLFzAxV5HV3Aenk5GLBoIkVk4HTZSrg+LFm43xU7aXw1nCb5jPqngP2+mwQEK0NEb1r5Ukr9OIsQCLdz2EqsK+6JKGGBCuOQ+YlSxZfbY50WWzR1RKb/dNo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ATvdeXD7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ATvdeXD7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 07160C2BCB0
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 04:26:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781670394;
	bh=2dlSJFNMUSn08LaXWfoTL43Y5ljg3mN+E6dxK16mLt0=;
	h=To:Subject:From:Date:From;
	b=ATvdeXD7sr3T3zizAiJkCib7R2TAqFgvM/xhBBPFamODSBQdPX0Naslc6iOynxwf9
	 xa0Y3p1aOafSwp+6OTbFBqAwKFNwS7jtoUFj1daEV3VxI/qjFH9ewtMRoAA/IgCFJt
	 JurrTzeQiVIBUvR8MsogCmRTOqj/izJbydVufRgbAD4CHBwvnPoWSPe/xOGosBttzt
	 LR88Ldayyj5kHXUQcOUxuap88zHh7j7PKK68/GuK68215GDk6s7Bf5D3RzHCgMLenu
	 igoJ6eS8n3cSrIofjb+TumFMHL6IRqPyrHgZZk4l/6w0OMK0kdYt0CdDp9jz3gEkcV
	 ErOcmfSiI8yqA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CB648CD98E2
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 04:26:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178167039376.29848.17344234013595784852.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6c6b5a3578dd8ff1be5cfd2f082c3192bdb4cc8075279d718572e178640a608c
Date: Wed, 17 Jun 2026 04:26:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781670393
