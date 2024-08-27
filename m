Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24D9E139580
	for <ddprobe@lists.linux.dev>; Tue, 27 Aug 2024 11:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724759754; cv=none; b=nBh9xTsopNb9m7QbZMjzupk3hUk0DSkwu+4/NBbx+QMOKOb1TCuX/OeEiK7Y00eUV2LTKNSdnN+E31Au8ybImkwxkBSRyeNCoUSMG+ay8I0dim+AsLzZqIg3iYnhT3lclicN+/xt9TH1Um37sApLEHFcobscQv9RBLu6bB+G2VU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724759754; c=relaxed/simple;
	bh=sFAbK+5X+TgWGgus6kcY5RzirqtfG+ulqtugDbpA6kQ=;
	h=To:Subject:From:Message-Id:Date; b=TrF3M1LUWKxmOPtpgYGi1VUGVe3+DGRGuHrjhoFttsYh/3NPTBVEBTFKvIVufWqGlbU7HXbvoWm+V4LgLXTg8okjiS3BfgSPS5ws/RYvYDedPZeTFXrQ+oGz8BZh5M/IdZUlI3gBCbtJCOU1HMX6+fQQqxt1q6MdjceWSsKGMHI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=smpP6hv3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="smpP6hv3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2F8AC522C4
	for <ddprobe@lists.linux.dev>; Tue, 27 Aug 2024 11:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724759753;
	bh=sFAbK+5X+TgWGgus6kcY5RzirqtfG+ulqtugDbpA6kQ=;
	h=To:Subject:From:Date:From;
	b=smpP6hv373ILwpPpCPTxorKF03ZBUjPV+I9Bm9dygLxqJuTJcs7NypDxsNKw7SRRc
	 t+9OdaAl6nf6pxH7GKBCBLvDc7aoIi3WwxPxL659fdNOZZwdyKLHAthRmr6Lc5EmMd
	 SeGdAj0s8eu+K3Blhz/yIxChscb35GYQv7F2MHuEn03uJy1HGUZnJzOxNhQEoNFD9G
	 5sCvJKGQtR+6EXopHGmB+7tfWRZ5s2mfWpm7aC/nuxAB1p5Mt2Sx5uyPxDYF9orAP2
	 oLlzXmZqauKNBHbxjPOFmgn7vrnLA2mCToQVshdqEmbl+HS/a+b47cQQVAM/q/uiti
	 KqrvtaBJbF5ow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A239EC54735
	for <ddprobe@lists.linux.dev>; Tue, 27 Aug 2024 11:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172475975362.31495.6583969017538898461.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0f5a422a8728912272eed75dfbdf22fbf19c0740ba4bb9981f24753533a27189
Date: Tue, 27 Aug 2024 11:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724759753
