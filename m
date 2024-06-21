Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4EDE7153BDE
	for <ddprobe@lists.linux.dev>; Fri, 21 Jun 2024 12:52:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718974343; cv=none; b=o/hA7DWlo5SCLdSRBdH8mjPxoA7k6UpamjsS5WjnBVel12Jnz743juni2l+uKkoGCGFId3BHI/jD+qd8pIOtXV3JX6XgGs6/JPtPAk3uqgKo3HsbyyYNBsDSdcARSLnMtFI2Ao46sWYqdys0UUV4uJJ190wa52+KORb1wENjV1c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718974343; c=relaxed/simple;
	bh=ElBk7dVhxRtc5Dp+uEAKW+Ag9MeCoYqIth+fwPw8vRg=;
	h=To:Subject:From:Message-Id:Date; b=ggwjAY9Q6bpfud/TbdrMNcyXqL8EZctw7SKdLh2EWN+U4p4jzOlmR8335NHTYKbtkqAS8PSY2eJMML5t7NpTmDb3lQNnFLrPWfcsxXEyIECI3yfg+q1pZIGaAj5GJ2ni1NQfBIYCHR29jvhgruelEGTheXqa3XqTaz+UuM4Krh0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uMq52gsR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uMq52gsR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0C41C2BBFC
	for <ddprobe@lists.linux.dev>; Fri, 21 Jun 2024 12:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718974342;
	bh=ElBk7dVhxRtc5Dp+uEAKW+Ag9MeCoYqIth+fwPw8vRg=;
	h=To:Subject:From:Date:From;
	b=uMq52gsRP0lm2QAulUfymuXkKgK0TGWKKyjFwrdHmgSwqz52nayV7DXrMKJU27HFF
	 T+Sh7aEf/8r2DhOevP5tMKBkFrwR2TIfE1C+XCjmo9VMK51F9RExvICu5lIOjYtx8M
	 w2Ufsnl8VzaWyAprHH+T0ptFzJjgMfKjTPqn673zV24C/mLiuWzJkPX6i17a3p1v3d
	 6twawX1kFXKqplPu4+Z/EyscUHH0txsaDV0cxXr/kudfl61Jlkr1IGWO7fk0ZDoKQi
	 7zgNYQxYoe8J1wPR5WIeqtZPrTA6JjUKYmO6I8XNQIgznk+ss0orhwShJmLfXaQDMC
	 Ej5frRO/8E7Ug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD3D3C27C4F
	for <ddprobe@lists.linux.dev>; Fri, 21 Jun 2024 12:52:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171897434276.15029.3276311060582068871.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7c1b3598e144fba944be39c23b274ff2dd0ed3bc644f9c03129776b9df6e8fb9
Date: Fri, 21 Jun 2024 12:52:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718974342
