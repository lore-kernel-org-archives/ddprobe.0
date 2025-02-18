Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2207A26AAB8
	for <ddprobe@lists.linux.dev>; Tue, 18 Feb 2025 14:38:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739889535; cv=none; b=KuvIBtC8/AvUkJxpydFmCrRYJu6MTxwBaacX+NKZU5jCRxqpo1/8RAZI5yRTkYFBCrCervCp5YWCT7HOOBTqCwYh+9IZnE/6HfaM/rVBmL7xkKcKFMWHnwc79qWDdERbucAnpSAiyoOsWDPF+ZhNt01GNuSbnNbzVsoF51IuEMc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739889535; c=relaxed/simple;
	bh=/v4wLd9ZuO0tPf4CrjqMAh+qsTZT8vR4GDauJ2YlAVg=;
	h=To:Subject:From:Message-Id:Date; b=s+LliinFgLOQPY58Sj7pZRXd7eMAdPHr5onZmjnz2mtBLuJXv1yB2sfRMsgMaLUWURy7itmkMy7crOD+qIZpuFX0a91i4Q83zotl7bXDpOhi/tBCNq3QfDPqumIwMdWOn6Rdh88mdPKsilQIKSjTapjD3lVyfyUDfA1dWq69iH4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RxuRLYUj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RxuRLYUj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EB75C4CEE2
	for <ddprobe@lists.linux.dev>; Tue, 18 Feb 2025 14:38:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739889533;
	bh=/v4wLd9ZuO0tPf4CrjqMAh+qsTZT8vR4GDauJ2YlAVg=;
	h=To:Subject:From:Date:From;
	b=RxuRLYUjTpuWE0fY5INChczjzJiDBy2n/Drx7CtjgPIwUGqJMV29HNX7q2gSuQAwH
	 zWU/49bpLx+E4jNiTy1QqJPEhDBNoewknEtsIx4FcBvma6YpMBLPDNF7qQ4mbXbvub
	 OVuyGbOkl4u8T/g1QIYL70hEwPIKtbTtA6jmiZMFsr/r1c3xPQ7AG5waTOwmT6TiKF
	 onaQxhUA+XCtX/0lDL4hA+fivjoswcebJuVn812ngS06UyVZABOkfgZq+VPNur1h2v
	 GPCClc+qe7dZhiDChEPz0aU/9YlGnQjk2OevfmHHAFVz0B7Cr9Yx/4ZpjcmF2EZA4m
	 kyR/esyC8fJvQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 909BBC02198
	for <ddprobe@lists.linux.dev>; Tue, 18 Feb 2025 14:38:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173988953358.7693.17352294767545151676.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0e0ebcd1575bb4646a86dc3a3cf4e2187c69db71af5d7bdab22b9e4bbed14d83
Date: Tue, 18 Feb 2025 14:38:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739889533
