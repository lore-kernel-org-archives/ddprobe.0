Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10AA341C305
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 18:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778091454; cv=none; b=ExSNOxySlOJ7eCi4kS/tJP9BokyChs4ieFPfVFyL2n17YmZiEmGSLdWrAVMDOuDX/JjNip2STaxnmIIJqdxkqwj3hE3LWC5sI+o4qXxClx99neQHcYOER5kSLjEUKleWgppLLO4Gi687G90hEICiGl3ywaNDTkP7UJ3J5HJ3j7A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778091454; c=relaxed/simple;
	bh=tIVc55UAI+DxN3K/Dsu3D+uR6m3XuQ0878zjHTG1Tt0=;
	h=To:Subject:From:Message-Id:Date; b=ok3W0bWBsBP6TwrEFTKZEv1zmvub7PJrJ+hq/WiXhKzT/z/oLpux3zzYTSplrqyRBeLmbx2pxQ6Ypk3XDlnInIKXXjGc5JdNKX/4w2UqKZwogW17NBqTl05FO3y9gFb/7EDshcWlSl+u+i4Novf2gmS5Q4Vr6dSmI49KmP9bKyM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K+dirvR+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K+dirvR+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB142C2BCB8
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 18:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778091453;
	bh=tIVc55UAI+DxN3K/Dsu3D+uR6m3XuQ0878zjHTG1Tt0=;
	h=To:Subject:From:Date:From;
	b=K+dirvR+WJmjILgoG7malcV7kTGNWgbc/vph8yla2Luy4ewEOPEAElWMtL+xKpSwE
	 7uYSYcOi4m4Zu0aWJaMQwM7B45wRdOfbR3BOz26IF9bGqDsz6lmszSya01jehj6bAa
	 i/tMh9k8aShSJ0987/AJtO+x3Jnn0em6p8mPQQD15aOJYxiIcTCASh5Pe6xeHu85on
	 yO3Bh+Ii0dPJJh5rfz1CCm6vnsWWjzUDCERcnP8+vBXblcf7lanVCp/3vBGxuy7wxZ
	 JViMyY2AWsJSzozHt2dxhjYlq5X+UJTCnNlM8irkW/07h6hc19GBCbu1I4Aj0DhodV
	 7I37y/KPtZhUw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB6D3CD3439
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 18:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177809145369.11477.3411151602469043145.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c0c41819221a21862ba0ca69234493772ddc0c2971712eb9202bd94ba31b8f0b
Date: Wed, 06 May 2026 18:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778091453
