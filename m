Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C4541FF603
	for <ddprobe@lists.linux.dev>; Mon, 28 Apr 2025 09:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745834394; cv=none; b=lF9JqG7VZLSwj4Y2aj9Sx+5LGLRtKb/1FNyUo0Sv30DKIkbHli6247Xt/wplHR75LFpXXiyFHJLBcwJZU7wuletsEjBlNAb/9Z5jtwvn3eKgQWNdDI3E2jrHeKjjhpOQEHrQ1W+YDD6U+jKowTS5J+RV0COWCHeRmJoJOBOswwQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745834394; c=relaxed/simple;
	bh=KGu/20B+NPimmcApgnOOiekPH8CkX2yULyM8794qhhY=;
	h=To:Subject:From:Message-Id:Date; b=k8cm15/80EvImIdZrSG3PprORc07zTHFE6KinefWs9IL6XIFu3nn+cdYIS2Qr9VR+6o2e+2oSnykApmyBdvEjlYdJJ/LdAyh8gBb8bsBhXfk1qmlD9xiOvKz3uYjLcWtnJbVi+virMwYVTnTgVJGPCTxhcygHp2FnYyb0pNjNX4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Wt4B2/Pq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Wt4B2/Pq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F205C4CEE9
	for <ddprobe@lists.linux.dev>; Mon, 28 Apr 2025 09:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745834393;
	bh=KGu/20B+NPimmcApgnOOiekPH8CkX2yULyM8794qhhY=;
	h=To:Subject:From:Date:From;
	b=Wt4B2/Pq8E+MiBKBdg4rUSMgtrxkYUGf7ODJXGlVD4nToAqg855quS8uMY94nvCwc
	 v3yZ5XtKKp+1PgfjdCGSXE+LY1afe8qgHZx72Zoh/7h9sVD6lxP3upic0YkHaqoqCs
	 EVkIeRyFlJelooRVqPMq/XQe2X/R/6ZIhgMHizJoTAjKh/bvKh1+giNcJrYeNHwtac
	 IFcmDJh7g82wvygILbHMsSNFGaTOhiF3sQKv9mA8FW81qr4H95dUkNl+ZgVUwZHFmm
	 Q86Z8sP9wGZiJCopCbb/hLliOCGYl0rgHLVO/sIOJzIiyVP3mWHMB5h6lUM1iSqmjc
	 JXi90/w4WTrgw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90E8CC36005
	for <ddprobe@lists.linux.dev>; Mon, 28 Apr 2025 09:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174583439357.31337.16986142516668812710.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2a80a3b705c90f42b18c3d97e02600da4b84b4c591b1ea3a460897f84dc74987
Date: Mon, 28 Apr 2025 09:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745834393
