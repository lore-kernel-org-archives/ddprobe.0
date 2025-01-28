Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 538BD2F29
	for <ddprobe@lists.linux.dev>; Tue, 28 Jan 2025 12:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738067754; cv=none; b=mwlF+/iCwEdLNckid4DIzNoAfki/xvvfYuacNKum+wflkSOTS93qY4OkCqk/N7OW0YZrMdHAGg9/yBGcPikqYboC/YPUEnrynVracTrU7PuUoOMX85qKq0C2yr7cGxRXfvEPQccqsgkYhV2bCu3CbjykLKVFUHS7vNdwKqOxaFM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738067754; c=relaxed/simple;
	bh=j2NtiUxwMcqQWHWfwy8XPhF49rNrS37JKCCQQNLgQY4=;
	h=To:Subject:From:Message-Id:Date; b=rsMSz0mn6XDoltbFCBg13p1xuPadEcPrywP48OAI/v2sESC5Gf4QT0Y8/vXiWggs0LLLEWxBfFTDRlobromvlJwqQN9K3Jl3ZO4H5Z0BT0cowtHqah5M3ZGgNqX0B27ZHBBwF5s3L4bLItaRaOwg1D09xVo3BToMhFNWprTaUcQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S/qDFxnX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S/qDFxnX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BEA25C4CED3
	for <ddprobe@lists.linux.dev>; Tue, 28 Jan 2025 12:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738067753;
	bh=j2NtiUxwMcqQWHWfwy8XPhF49rNrS37JKCCQQNLgQY4=;
	h=To:Subject:From:Date:From;
	b=S/qDFxnX382ahExQwOLyT8Mwc24rdcA6rLik8IlA/gmYAy02VECiIVQe1AlbslNx6
	 NXWmut6nmBn5GlCqWAyWUkoSCZdg0g14G1TQ3sV7YmNx+8Y8+9mWzHDxIwEYAFgBVY
	 5Tm8sOwMvuysr6OCMjOpxEMz0BVAEYWo0Wk/MyKLzDscWw4Bj1atwS1lSFisUeEqto
	 SBQ1H5M5sbsZPS141XWwkjNzFzQhDANAhitvrcyt6cFv3BUNtBKyZb5dUlv9/HIbdt
	 d/YqWw5tFa5UeIu6ddXN4RMdfH3zrg2FNFSctvYzyMof0UpUxsDXTL0Om4zdTTF1ix
	 r5fhYxEdUKEyw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9EDDDC0218A
	for <ddprobe@lists.linux.dev>; Tue, 28 Jan 2025 12:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173806775359.1717.10655365920753772762.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 64a4b6270be6ce595f7d3e45950414221f36459aef7ef0f716acc67d63a7df0f
Date: Tue, 28 Jan 2025 12:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738067753
