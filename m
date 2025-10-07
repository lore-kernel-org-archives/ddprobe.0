Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F4DF2E7658
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 16:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759853994; cv=none; b=PxleWCKkzf29qqBLlnIXH3dAIOEkeDRXJgvb7aa/x9/mKnRHfy8Nw0me+wOKAIuZPIzpZKvLaaEnnMrrlU4nU3nTwmqA8npNkOkHyVHbtiPsi+LKBPV+YhYIYBslQRt5Vt4JCXevRbIHJP6oifhv8MEvRDRgoV5dS6pBC7kylFs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759853994; c=relaxed/simple;
	bh=bxJOkyQ1VKyPioDZYAaWZPVpoYXpESh731HbHkyTKK4=;
	h=To:Subject:From:Message-Id:Date; b=rIEqdzl27QvNRE/olDlxzZUCOJwsgLaFxsADg4JdE64J7JH1KBlGl+nyf0PlTxFlqr7KRwZMn0gSQgWGuKtNgm1R6c1BhniC5l6BBdkoo3Y9asLHfmd3txoX+CpqQYAmWPTy1dbJI/qGcczxKvW5Ywm42juC+7vWGpMa1TAmPHg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YlSJ794g; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YlSJ794g"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A50DBC4CEF1
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 16:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759853993;
	bh=bxJOkyQ1VKyPioDZYAaWZPVpoYXpESh731HbHkyTKK4=;
	h=To:Subject:From:Date:From;
	b=YlSJ794gDFzN/Lu7YeX5uFFFFC6pJr8CbFhUxm92gqK6urQWsaOHzx/pw5xYEWP9B
	 jOvgZuo3R9F1XyQaXCb0C3WFNAVKtHGB0tfiqAUVqIHQiMFVRHfhysRfSsw+sGgFyb
	 bxA+dQ8enqMBziVTpnFRBJzGL5/bddgJ9d31JeVj13U9eko8fG4XUMhDWz+acsWMVl
	 f2NMt1z4r773Avm1yrtQg4JERWpAe9xEJ0onCiwkzYl4sWOzXcrAskRHn+zywU7A39
	 XrgYSR+uX41gZT1xAliClmlWiUkvMmeMT/2q/4lvZDS5KZaTrkRhbpxIZG/25Y1zck
	 2qATh271JNblA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 901C8CCA476
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 16:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175985399358.17606.17988279958008167641.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ba0d965f27d6721d26185fbab146ebc30b0fa6b539e1c6ae886b44669856d70f
Date: Tue, 07 Oct 2025 16:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759853993
