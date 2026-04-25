Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14E3A337688
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 15:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777129654; cv=none; b=KQAIw8tjko0+u8cmPU3S+zf7cWS/6aBing9AIDhTxP1lg28kbBfF1oRbiRUBjeCS0xOtBL+p0fw+0gezL9MwSoAQ8fj/BDA7jgYTc/2ByRERAs+tgPJduqXYhnFUMt2dMMtQB6bMiOhEM2t27jgqkllrcoT65407jBr0AJoneiE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777129654; c=relaxed/simple;
	bh=+WKZpqdFabwUC3Bml9nnMmdlnSvDaPFmEpfg6D+N9EQ=;
	h=To:Subject:From:Message-Id:Date; b=SDZNkltlmW+8Shg8T68l7kuaZYTwp5DA6Phh1WXaR5RnZCYGtRcF9VJv4yi700qXzM7VUBymWcVAu00KPqmQLEBvZu36snN5d9aHtajbZXPYKbw7ZXdwMIaWN1c+8CjQPDC9POShmGCc9q1+bY2vOtyYxljKZue3ExzrrW6yapU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DK+Pi+Io; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DK+Pi+Io"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD1FCC2BCB0
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 15:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777129653;
	bh=+WKZpqdFabwUC3Bml9nnMmdlnSvDaPFmEpfg6D+N9EQ=;
	h=To:Subject:From:Date:From;
	b=DK+Pi+IokBjosGiUx8prgcIEylPHxdq3H23nXOcP0C766whpkZI6krAqklh7FNAWh
	 bX3APLbJSt95OECkbw52duotJJFkNwOZcI1lNlBKjkHfDw7/IMNKG38Pj9Fu+XOK0R
	 ZnfuhhOsildXc+gQujofaxBm/DUQPZQMmMAbXkJ76tlR2katFY4m90nj5vfx+CMUay
	 yVLmnjH5TtmvpsyAZCCW+M+UmuxvWfJcjBIm9x4riRAWN0G+gLb/YsTluJjU6dOf+A
	 QCYzy5zGCNJMoG2F3whfsUSePzL4vnjCXTCIvmaMcBm2xLqhyAzDrnFzzYXTeKaOj9
	 ORDQ4WVaHWusw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEF75FF885C
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 15:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177712965368.2145.13222604064707570837.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 42683612e336e0b230ea0b6748668aa2878b80c11afe5605d81af4539af6086e
Date: Sat, 25 Apr 2026 15:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777129653
