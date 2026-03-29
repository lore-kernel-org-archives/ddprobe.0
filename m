Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AAD19463
	for <ddprobe@lists.linux.dev>; Sun, 29 Mar 2026 22:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774823094; cv=none; b=a+eSunnAG1Nt+zmcpoUVHdswdGbU79nuDlCf6oyss5WcKd5xUReht5miotay9wy32pgrTZkooavjhyBgbNRmP1rt/e6bnuGl5tVMxDaleGxLsUWl/UeOWPfc0Fan89xn6ET9XRVt/SP5iJ2/+AbGRNMQUij/OEzTuFsU9R2MoHI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774823094; c=relaxed/simple;
	bh=QbNtlIWXqXfoOvqH08jgBKuHVSSbkkGUlfpXhcKG4Zg=;
	h=To:Subject:From:Message-Id:Date; b=sOxb3fq0c6ioXLN7hg+mzyakdVtQcFtGUrxQJYo81K8M5vmlv+enrQlsgT7gl/PtHX9kGFmfaobZmY2q57qfTxhZLV4TsAAtsHMZoc8I3bdmF26D75Ob/h9jZPqpfxHJyOC3k9eWXCYfteYfi/p1nkY7s1Z6fl0abTgEwm9i84M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=na6NPfgY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="na6NPfgY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A48C9C116C6
	for <ddprobe@lists.linux.dev>; Sun, 29 Mar 2026 22:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774823093;
	bh=QbNtlIWXqXfoOvqH08jgBKuHVSSbkkGUlfpXhcKG4Zg=;
	h=To:Subject:From:Date:From;
	b=na6NPfgYznGdSQwGpRLMtafS0Kee9f69DsrxlME2OHNylOqb2oxkPvko7cg0ejV3v
	 OQctleiP+Lel/vF4ws49lch5/nEtFrcelBg6K8ZPOeEWdmoAavc+wl5vSKffi0E8G5
	 jgfZumHKv/kf1pL+hp0b5Wd1hpSdsPhLSroErAC0Quy6SkbEzDntPQz3G6v0tHG0Lu
	 VN7B+gP6PW9mXuXjqJ4kQxADUrt+c1MmnERSCBDYOFBHWUTAiQC0/3vZZV4DQNH2G/
	 Z8sQEjnE55qsUAy6kdnukDVR2VS6ME1GYDBWhWY3Bvvh5QURABbpvM6hlrEhSePI3/
	 pE8p1pUMAVEFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 904B7FC97F9
	for <ddprobe@lists.linux.dev>; Sun, 29 Mar 2026 22:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177482309358.9140.1146708453679101036.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9945112267e1158e968e34d9982e444822b9de83585583ddae4a9601b6e9d609
Date: Sun, 29 Mar 2026 22:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774823093
