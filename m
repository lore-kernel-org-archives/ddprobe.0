Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DF09A3ACA7C
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 13:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779024035; cv=none; b=PcujWYmfec2Dt5WUpBeFzq92V9W/P1ZYncYNo2MmVQKkLuqIpn17mMNpaY/QfWjg5fdSrW8DCpuIPpnyF6UYAdQgP1NNF82L8ZjZw2ApupcjG0x53gAggezLfwSWMr0BfWfXP/jy5hOp9CCQ+Iu1eaimR2dxaVGQ99c06K8hqB4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779024035; c=relaxed/simple;
	bh=uMr2rlGK63zfbW05w+fAgkN+vun8SanR1NVffaxEsl0=;
	h=To:Subject:From:Message-Id:Date; b=NA05fPV4+YbKgUMH41U72753asWRP8AekcF+8lhdt/ckl+AwkOVJGO1xaGcJWzyVdFj0xlVp7SicMy5dkVw1Iq53G3HZn7Ayx6lv5yzHUxMkTKcXGK9oBiit+EbsMA4pV53XxULbVxNU5oBBEu4zJZljv7ykdTFoAdEY0PsB4dw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pWP0rQrt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pWP0rQrt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C319EC2BCB8
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 13:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779024033;
	bh=uMr2rlGK63zfbW05w+fAgkN+vun8SanR1NVffaxEsl0=;
	h=To:Subject:From:Date:From;
	b=pWP0rQrtJH8VCKafymMJYW/+Om1TWocY9yidPNO42+zZsOJ61XzXD7USsE6AbPJBr
	 axuukzGYnbMJmRrk3YYL+FSzV2tq6/ynAWlXyy5WmOOoFk+AV7ZxlwUkuQ2pYC5164
	 RmuL/ysj1KixSR+wE+BPv3yVcXQDqjiZr7lHCBPCfqxkQhkLVm9sn8bIRiH9368KS2
	 LLokYspL7hc5U6p0guxp3HzqUlvj5+rng5TEughx/Z5Zpk25wNTbvtuGLtwGWohMEO
	 ZLwdUWnEL9+aLSk/WwP9R28UWxbaQbCvSRyr51Q/3eT9qtNq646qlDmh9a37DL5xfR
	 pwU0zMmb54K3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B10D9CD4F21
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 13:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177902403369.18212.2993685334828752923.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5583a77ef3f46bb42533e7eff9af05b535808d115d0cd3a66e6c18e839968fcc
Date: Sun, 17 May 2026 13:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779024033
