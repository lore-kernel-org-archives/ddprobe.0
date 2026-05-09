Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2475B1B4F09
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 00:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778286454; cv=none; b=oBaIv60CDvKXoSm4EEH4EGgLZ+n6hu/yfKsi8mcwqN2sK7j+gKdkOOzXmGurYBmbpiEPHx2KusGZWafCcE0+WHL+7kk9gd6izX3P3Hir4LKegdizkj2/YGhoGJKgNAMpgoD6xH40m+4PZteXMxH6/jnW4oGLBxcSoAgTLOqFMBw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778286454; c=relaxed/simple;
	bh=85hV08EneIADflTjtv7N1co3MkKBw7H1RJjVUEj4wL4=;
	h=To:Subject:From:Message-Id:Date; b=nG1F7tBy8QfdQFzWgy6nWrbdXmhIQnBsFDGRxhAdQukXCVrcdPda3kOJQYHqmaYGTjREPDa7ExwuMo1FV4ftdq6cHpLfh8hZvoSghLQ9rnuPtz684rGnlESrnGIjzvBRBGPy0hYI9eSudcSUhPzRjHEZ8/GzuYO2ZksWQfDR6PU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GFPWtEyi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GFPWtEyi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B81C9C2BCB4
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 00:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778286453;
	bh=85hV08EneIADflTjtv7N1co3MkKBw7H1RJjVUEj4wL4=;
	h=To:Subject:From:Date:From;
	b=GFPWtEyiEV4VPJUPjHb4MbFvjYioYgUervu8ck42sxWaI58oB61MKQr7ZuvQPPn2f
	 iKwIL2KqxnIl524gIyI5BXzMjO94+9En4eI1F5oLWqedDWnspee+OkxXbOA3f9bA4F
	 c2sDU7BOuRCgTeiIFfXl4vYJagM4k7uFFtJYwaeRSGGLNPXR3sMJpHrN+CfMub9WcJ
	 BQaAyoibmdp8xuWOEOMWYW1kWuol1h+KBleUHlaloitwU6lxDLTnVT+YSR90PoZUat
	 gOwU2YYyPwWE6WkbiM18CKfIGD8RpgxVHLuqjBIz9yJVmB4jFQEkgxAWEqAiY0ktFS
	 FlyZYxXHcQ9CA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9B7FCD3445
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 00:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177828645368.20095.12819920175523487541.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 77e14a8375421d09505c94ed06521d59fe65457d9041fc36e093b6b7944f620a
Date: Sat, 09 May 2026 00:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778286453
