Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29F3033EB15
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 12:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757422194; cv=none; b=T/v3nQBjOorqsHmHLM28Msf3BVmAAwuHqZ1N+7s7zhAODvtZwkzngVWQDq2F38CYHD+3+pEYhxI9FURbOLOG/m0HfJxZMTaWGlxqP4QxFMSIpTgKvVwPF/50rT5vGaGVKtxFoABIiSdWxyhyj+bbwFqOYk5Wsgsu1Gwlmj2Yz1c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757422194; c=relaxed/simple;
	bh=6273Af/5GvbjfGjwdHarqXjCRBgqPyt/xMDR/65KTfI=;
	h=To:Subject:From:Message-Id:Date; b=VcErfh/7XeXQJnXkIvoXP51eTvrKLRQnOEc3q3yrnyVKK0NoDlIJ2hvT44kqLOmrZX/05MMf7lcUsHnHIC8+6rY91cYGzZu8ltAjnFPf9ELZPXuqoHygT8Fg0EeS713t6ezQI4WrEfeCKXerwFnfFs6m0UznUS45vEjUpqr1dQs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l7uD9My2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l7uD9My2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A499CC4CEF5
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 12:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757422193;
	bh=6273Af/5GvbjfGjwdHarqXjCRBgqPyt/xMDR/65KTfI=;
	h=To:Subject:From:Date:From;
	b=l7uD9My244xyGrXSZ4kRYtDmINAlE6Bch1U3nS4vN7hCZCyH40CfqnWnJas/MtC2I
	 PzR9DR6ngotoF2m6ZN/OiW7iqKL6RBxGF9fFHmTbDLDWdiTvmGBI4kiHATzSH2ql0T
	 lKAPKHpHB4Hbkhcu1eufTcASCyxM25m7XHQ0+cw5mHuXbzhm5CNWEyLQ+LXq9qQd7K
	 6L1MZJf7TcYoeLtdIKjt0U4qQmG1soWLFhGOA+zgzZuqjrCw+7nohMU7Xsn7Tpo0i5
	 Yl2TloRv+9Y9YM3Se0rDs7+EeIX9cCbX7IX1GekqGg+SaOWd4SljNGgt+HnM4tTmCZ
	 kU9eoKkvak9hQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 922A4CA0FED
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 12:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175742219358.28361.7681094542630325631.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 23bc9af97fb1955835da91b0ae6ecef4adc783e2481be27a74551225f7f9a8cb
Date: Tue, 09 Sep 2025 12:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757422193
