Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D60228691
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 15:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753025395; cv=none; b=Unja6IgESFwDRfKFgQimi7X6pmokyS3yQQNHF0cTcbh21taUAOaKpJ/NcswqFn+pKi3V+y3DCOjf6JXiIaBDQTPJcDKSfH8sN54UsElzjhFrTp3s/nQqXGEx4EncNIxw3pq7MNO8DWfazuJih9ZBxG8jZn5gsFYBpVKlmiFRI5o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753025395; c=relaxed/simple;
	bh=q64Mke4b/p5SHbqKv8qE7KibN5/xJwquYEvS2q6qJ+E=;
	h=To:Subject:From:Message-Id:Date; b=kL4fIBXDvhu4hAIlkkJ2W6PgwEVsUuKXLNMBrQpHdKNJq6bB9TigR5nQvJAzczQHSKmVhzYR/8TwKetvA3GdpYaHy8nloHUw/LMX8Iqj93q3QBXHQZ5OLOXDlEmeYkThGAeFyShD1JbBa3D62J2BH3QKGCFgqfByVOeJflbw4LU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sILlnLww; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sILlnLww"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2372C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 15:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753025393;
	bh=q64Mke4b/p5SHbqKv8qE7KibN5/xJwquYEvS2q6qJ+E=;
	h=To:Subject:From:Date:From;
	b=sILlnLwwF9nEqWZSmxx6GVs8VJlyE5oRaYg0XS/kF04GeN6YFaN5GDXUNF4aYdi0Y
	 +Zhfc50+pai/w3VgrtxpSQmqst6823mPZbs4xn9gMN0srBepCEW9E2qhrksrnmd+QN
	 CbqW2qU6yPPiW8Ml/PXz3L6BNdU8x6zP4oOjXVw4HdFmLhkpEuHOeF0NA9T+Z4jD+M
	 9KN88JNwNMs09aXXZ0+d2IDHUoYlJH8rmezU+p+8+AOH4EElfJHYxxFG/L3uXPw6/4
	 M1NIuPDn2LeXO3bi1Qpb01rZO3KV5N4CLkixhJnEHe6cnKOA/QET1zpGlDssDgF1vm
	 snLXAJgrbXA3Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90392C83F1A
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 15:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175302539358.9209.15888718648531622317.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c2e6f3a51f0cd8280ec90b0bab21f7a4dba0ffc6bde2e240013c42c0e3265616
Date: Sun, 20 Jul 2025 15:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753025393
