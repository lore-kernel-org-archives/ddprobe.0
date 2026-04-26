Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 435FF54723
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 11:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777201654; cv=none; b=V3kzF4Fb5M/adTLZoJD5T4cZGR8//L5lrGmaYrkkA0mHbHidvXMysF0zzjsGlnROsDtfpZQCEWSfMGxBFs8xaK23+Z4mFURd1j8P/3xdFobPQQ3gPfO9sAQiFgsfAfzdrnl5xyIwRoYnbPx/FXyQK+ctfwagtFQu90pDFVzAnIw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777201654; c=relaxed/simple;
	bh=GetiCgS4cnC3bIJhJlewgI0uvUlVqtCYKSv+pqK1SP0=;
	h=To:Subject:From:Message-Id:Date; b=qvZMpOBPrMIblMMnGZCPynXt9iFiTq5UuX3LlWrr1VrolZgFxK0oaQXj3VIi9yiSe6vyLyrsWiykEUeFgIdTABNj+uDMjrUd8AqXNfOzngbBorbCC92cSdJ+d0Lgv8eY/sGjjRJjmWIWaKsYhdXB3RMDVMvyCH/sRplOmZ4Efek=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hEe6UGk8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hEe6UGk8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C063CC2BCAF
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 11:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777201653;
	bh=GetiCgS4cnC3bIJhJlewgI0uvUlVqtCYKSv+pqK1SP0=;
	h=To:Subject:From:Date:From;
	b=hEe6UGk8Uzxhwk3I2DrrS1YbOQOvj6gxLCKdJ9Uc+8KmHkJejRFel3caWP2tcAIVM
	 zbqCwET2xTpDVdIYxoVZhIFf+hmq2zZFCDD3WPqQq0admLvQnLKXpY79sd+ZrvngvP
	 Gs+ZwDHSM/dUcA59mTiXxUwfHFwsOJI4xl5QhdKVMVhpWQ/McgHEcD8+mz40X9D4Yq
	 EBtlYumWErdUeppH8GspPdMQI46x6sVJkqdwb5M+3f21cdLQEknCg0/wgDpfRn5joc
	 YWQ00Lmp5cx2p+1O5eJZEnlMixlodfF1ZFZE8i+HWG1nzslv+E6ytT3w4TLf2dw6as
	 t8SK5F+q2PeQQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF449FF885D
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 11:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177720165368.23112.4792810550487173312.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2f4032c4be1073a71444fe8640b59671201504eecb0fd793ac0ff7e43e4b1767
Date: Sun, 26 Apr 2026 11:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777201653
