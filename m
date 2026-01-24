Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A9141367
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 14:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769265834; cv=none; b=krwhmCdseiK/i1ZEfNZqMwrwqHn11wndZJQNFRxuUwSG0/vZq2utDV3BmC9SRxWfsnshWSf9wzLLpBaY0MQf4x6sUYBKDtSmYtcYsb935/S3mRnr2A/SmWZB8OcttX7Eft41axlPz53mcoavoz3XeLKe1KcCixC34oPdGysdMkA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769265834; c=relaxed/simple;
	bh=WKJQHJDHRYMCOQjjxioe6g9b95QC9yecfbWFsxGjXgY=;
	h=To:Subject:From:Message-Id:Date; b=lMLnVOqH5UNNa5pcMb27iyKUMbe+QkkYcq3s150mUNM+pxkxjhaaA0X9vun+t3XGQKgkukuzAm6xcDdfjwe4d/JX3hkDNegx4HLnfLUYFb7LthCLOPpFQJBwPFhX0Gpg3y0eGaBjHPP/b2L8ALI+MXVlMgFe0SrDeUbguKlasjs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FdzTz/L9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FdzTz/L9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEEE6C116D0
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 14:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769265833;
	bh=WKJQHJDHRYMCOQjjxioe6g9b95QC9yecfbWFsxGjXgY=;
	h=To:Subject:From:Date:From;
	b=FdzTz/L9eThKIgV6kM5O1hc+kX6lX1k0BAUaxxEAIz1DRKV/+J1JIE0d0ErylkFcF
	 M+v5c3peSTaYJRtRdgN3PQF89tRzPK+9sI2OuzhfoBugWXncDhPeTsMFtlSkNsr8f1
	 XAFmUfYtBnWZKgw7YcL/yaVZGOIKCpOlnCXsk10ZI04EHlPuWpmNFbqn78roJ1SXGF
	 lEMidA8dHmTzMJggn2F1or2jtp1PRm4DBEJSFxDHl+smX5OqGLwY24QQAGtnWFelCE
	 PVc4pEm+rBtX6bTz831vPQe+u8tqjXIh2bQo8qR2T/F3314YiYDby5owc/oS65469V
	 VqU19GsmlDRyg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D284D715EC
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 14:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176926583361.3902.3652703622778670464.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5ab011e5626181ac21d900681664ebabb7d5ffa90cf956a0d54a7b880ba83872
Date: Sat, 24 Jan 2026 14:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769265833
