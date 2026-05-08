Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16745397E75
	for <ddprobe@lists.linux.dev>; Fri,  8 May 2026 12:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778245054; cv=none; b=J6sYrExzAIw1Y1EOpm2AuwnTHjy6NBXSPLLiCkr81sUSHPZ6Itb10+treZFldt6QwC7+if4XqAhQHlsVOGTBWWIW5xyrcM1M6DLPadgG5MQO+ZnfM/LAwGLzbT+Jdw1/1zMvUPlApR0zLVx15oQTUj5iEY1nDes50sY9ktk86uw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778245054; c=relaxed/simple;
	bh=8s7NLsCKekGsrUYDFFT/ohTcBflLgyhNu1ytvOHuK/0=;
	h=To:Subject:From:Message-Id:Date; b=qPvTh9cnYPVeG40VVcUKhsnt46ZFRpo4deag7MYKfcAjs6Fc2xA0WO3MX5t0Ry0hy83lKNxE+k1ZAdCNsMJcwUNaYV7bO8GMUSvF4vfwZXfeVroGLmHWinVyw1CmhYJFvIbS53yH8rldhyxOgBDl7qEKYM/MYTdkk/LZzuvjRVc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XMsnUUhe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XMsnUUhe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA0A6C2BCB0
	for <ddprobe@lists.linux.dev>; Fri,  8 May 2026 12:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778245053;
	bh=8s7NLsCKekGsrUYDFFT/ohTcBflLgyhNu1ytvOHuK/0=;
	h=To:Subject:From:Date:From;
	b=XMsnUUhe2VPkPQabt4a+D+CXjqTQaaNMNR3GWsf0/4EuKemd9xoq4UzWcPUpufZXv
	 OFvbiHAlFvFr/mIaS8KLnPgzRKNg3oKkGn+M7kZ5YFtVA/V3pEpNfeDY1qEMnB8l7U
	 shJ7nkQLVpAo6UEqMGQ6oBO4utYmftrALYbIHyX7YQc9STalZxg+KzqxV7GyXz+ePb
	 9Ixh+jMqV29X81WI1ydx9jrjZVyW7TER5C78MYZoSC4Ie0Qo5lJtSn2ip2WXU5LTxg
	 asV/nhvxRnDroJf6paBZ/3O5usx557Fw/C1jAJVVBNCs7mnVoZV5ty8Gb/bIdAgfEZ
	 0V4+ENON7hnEQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB8CCCD3447
	for <ddprobe@lists.linux.dev>; Fri,  8 May 2026 12:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177824505369.19227.4705442089712391826.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1d5f31ed8c6600d2d31937c6bd285163d5d4efa6ef3e22c7c91e09e5ebf29296
Date: Fri, 08 May 2026 12:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778245053
