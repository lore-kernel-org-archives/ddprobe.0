Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B4BA045C71C
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 15:40:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791301235; cv=none; b=EOmPgAnON+O6i+7r2kxjl06MsHyB3+llvzNGfVWUwblaB/gD/FnNjQNzyQ3Hfv5JVT2XN2LP+7rwnn0i0c5ytrJ9lPsI9iV03E55rFCKKg5V4cm698xrv/2RyNnPsIVbtMYQIxYbCpLMoSz3EhEUGnkVktgG0SIWERmkj+kdFvg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791301235; c=relaxed/simple;
	bh=pzz+/mKCwZqz6j4enqsNMNZYMdQdzw88ZHV8Wel5oB8=;
	h=To:Subject:From:Message-Id:Date; b=RCHKcFcrgCWkj9QBa54flWI7qhw8qy+9W6Yb7To0UN4onsHbhX2vKTXfm/G3oSHDJUp4wBYcjx9fQRmN/A9U7tuPNUiC3b/v4hTpvg35mFAMGd02JyOjdwgfX+hRWY6hwdv5PmCAncjGbqa7bIKXfhty2xcTPade62o6zsblC7c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oy8m9g4X; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oy8m9g4X"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD995C4AF60
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 15:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791301233;
	bh=pzz+/mKCwZqz6j4enqsNMNZYMdQdzw88ZHV8Wel5oB8=;
	h=To:Subject:From:Date:From;
	b=oy8m9g4XVF7EN9bFnDNKmD2b8zw45ZJUhH2l1Hd1Q4lk4nnw/t0h9BNk7jNEWoYUj
	 tSdGJH130U7RSoZumDXwnhqtMzjN7PI2luZZzweNh0CnNvlDzKbERfOd2wf5fH7TkL
	 Yhb/mxH1JecorfHRGNAVPccs/tFWSzMcSVqCM6dg1cG4rEs14gSZ1+5ZBr3hQmAkf+
	 ubzAfSJkBYwfa+TUSOSlDaE/mkF8LsvfcLR+LIhIdjJCvvkxkWNhf+bst7tVE0GpkE
	 Z95aHZ+mvMWUIn8HSM+q0axqp69F3s5ePS8yjSBT/dFLJNzdCaZ/fdkkacIkKyGQmJ
	 UDP6ZY8sIQNZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAABFCA5FED
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 15:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179130123368.15946.15234966521680688723.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 827c073d4dcd69ba50f814d0fc5a4a53b86bf16c8253f3faff07c4dfc4616943
Date: Tue, 06 Oct 2026 15:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791301233
