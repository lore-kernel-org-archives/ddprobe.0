Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34E1833F8BC
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 08:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789893034; cv=none; b=ZJ2UP5eKvcKLoVSPcY0IyMURaj414sk0mAuBIklNd2R539q1/P+WTky/kYZWzw0fQRoIgyxmimvPa29f1uQIj6OAjnfG2DitFEDfWcuGqP5/7Sang0Lc7Hvmkoy4/fVM3PFAcCz/dCoIzJbcpGIOWKIwmdyJNIEMpK0pB8vp7/M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789893034; c=relaxed/simple;
	bh=4aYoIehzrtRmQhteLK2JX0ZWVWkOuxWaes049PdN10s=;
	h=To:Subject:From:Message-Id:Date; b=jBOckvnYvs1uPTb8zD9jLdTl1aFtadEFH3mOYl1EVPiSJW3eywbbOYVbbjtJ8Fwyq80zbrq6FMIYep8M00A/Z0R9rjhidXq/vXmdMNU+rp2bfcgMffPQtvHHpqQ6duycXM2GdlWjYAjKHBcedsJitDuNS5yEwk54axiEUQZnf/M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VmyYF9RC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VmyYF9RC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1D94C2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 08:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789893033;
	bh=4aYoIehzrtRmQhteLK2JX0ZWVWkOuxWaes049PdN10s=;
	h=To:Subject:From:Date:From;
	b=VmyYF9RCgljoNwztLCRVn3f6F/IeKC2RdmkAGGUv5G3q6m0Ip9+Kl8Ce3tjHfjUgr
	 jfN5xy93kwyslim/5N+Wekmh2hTHWGFNMsUGYaCRFp/UC6w7TUBW4ZFhf5istXzL1n
	 EFRXdJ0TLfRoUmgRIrAecZ4SP8efJt2AhtBBZbH941k4PcEOSZDX2Cfrrc5updar8T
	 RkFlhvK1JMwKVJCATFCKMGTJAEF8pr+8q/g3cBHcQaYwHWVDjZMz1STAtkjZL5s3L6
	 aKAeRjVWhsmepE4rmJohCkkVFHrdTsv2Fv8qZNxPu9jAbQTiON0CaFlHNhgtKYNS07
	 w4PLKv6p0pZWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF8B6C982D0
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 08:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178989303368.2504.6402045203201895858.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 058b9169008200e2b3a0b3e4a7690b1fdf9d7922116b4fe969180bfe3f8bfa41
Date: Sun, 20 Sep 2026 08:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789893033
