Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 331ADB67E
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 00:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764028974; cv=none; b=p9gI3rYqi4Zj2WNoTdo0iWHzWLcXmc6OoaCVqfUKtjNq4dlqC0wgGuJw1Cqx4LQyQxP+VEXcteCeWglUuG6oLZkHTedRtpanp0IuSbPmr8rQ9BVqA09iwQ1qjfq80YafsSNDISlDMmlj4R/qs2Qc4X/5uaVRaHApEibgSDacfG8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764028974; c=relaxed/simple;
	bh=N/lj1g8s9AZUvb0d+Rc6O6cWzzN+tiwyZg21C7JQZGs=;
	h=To:Subject:From:Message-Id:Date; b=L++y1UNQJXgFmQvJOxo670Lr9eLZ+1Kc3+r4/w5Z8PT8k7nSDnNL/Z7jcf1teETLIoShYNGDI+zzyHomUQ1ZtRR0DL22EVp98/Txhk4Rj5SsuyKQmkosyvUJSIG/00Wg6I6xxRg0GokVrWk0VuN7334IlrOTjeJmra5qrqFnc/g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nS6XzTa7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nS6XzTa7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1365C4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 00:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764028973;
	bh=N/lj1g8s9AZUvb0d+Rc6O6cWzzN+tiwyZg21C7JQZGs=;
	h=To:Subject:From:Date:From;
	b=nS6XzTa7Hpgc4QOczXClA+7JqIYxnxGoXCFGhTWCAx18gkgheNlbY+RNgBFVW/+6a
	 HPZvFRSbV9xugee1Tof/SylD9Tss2r+7vDiTiE/CsIxeBn6l5nUyQzazvxIRMc4wpe
	 x13HhYXUM6wCuLLJFe67PqJdF3/y5gE1Fea8k3jmS3eyffCCif9xEgf+cvhPQ/iZTZ
	 PiZYfgv/qMxrQmbeY/N/MFb9qXr/bgefSWEUmmfaAR+YqgtqTzKtZEJ2Ns6JGmogCk
	 1ykBorLVTMoO64AcZdhnFeYTPE43QAp6Kkw5mEfe9q+yyfhnhWmEqV0HaEXuFB4oEz
	 vVHKqzhnQw76Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9975ECFD35F
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 00:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176402897359.25035.10107115706736732338.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2af4ea8f236aa45b78961afde67ff4989a3bffd2280dc82c7fc5bd09544b2f31
Date: Tue, 25 Nov 2025 00:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764028973
