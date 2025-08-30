Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A2342CCDB
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 11:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756554594; cv=none; b=Qrxq0w9mY1/UZuMmuI9zvhpmkqIyU/xYUHL7+b0kziaRkQe7PvCh49PVxURBVUzltBaGxBZ9091W/SYC/BqxioTNvogWGiUkbnOChs3SuJpMhlYcSqr6bvmVzRaBfw65V7gH4HpTcmAFLcRDcAZBsGNpafZmJu3r3BaLjJitW7I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756554594; c=relaxed/simple;
	bh=3/kcfsLVd8oBWPc8L0sWqGxvMP1Q1ofeDptBGc0i+EA=;
	h=To:Subject:From:Message-Id:Date; b=Fzh1Of4NRi9KfLSg82rDVUiUXgioxzNxKEY6tlxOOYbXYFz4PqppwCfFFBUqs/MX6IccPRE/F9dmvlH7hbkXEsHXp1AEK9DdsbH0UaY8B0aOQHzS49BEjjciTHq6E5yHeLI8OEz1ABibQMmaw1uh3l+I8pzMv1ByMzRhCk/XyVo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SuelShpC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SuelShpC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D32FC4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 11:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756554593;
	bh=3/kcfsLVd8oBWPc8L0sWqGxvMP1Q1ofeDptBGc0i+EA=;
	h=To:Subject:From:Date:From;
	b=SuelShpCF+maHu/alegjNs9/YpCAZl1Fn+PfZJfQ3Z3zz7fTolFW0Mbe9xBmbrIjS
	 8EX4DigxpWxk3TcvEPbSbrNRIdyG+3sFdwfTX9YT7JnDd78Zb6xArVDhkQcRBTknmC
	 vGFLiYz/ZyIC5wmNaRCRpcRcEX/ugWM3NpmMPQPoA9XxEyoGHzaiohLMT1Dlfigxxe
	 DC3+SMRPqflQNg2HMQj6CTsfvWTEdcibAGVeEKLB56kcrlKlHvHE+Lp2fry4eKF3C3
	 OhkhMu725Rxoaqx4F+AFEF/mixo0avV8OHm3PIhb+c2ZEe0F50KgltvUxR3WexzOaU
	 m/Lb+vFgSzlCw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F1BFCA0EFF
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 11:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175655459357.22459.17057289014042810641.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d344ce7a791588014f54438f94976da2ad2684eae05efe0b7cc68a8bc7c84eb2
Date: Sat, 30 Aug 2025 11:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756554593
