Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 248982F8EA7
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 01:40:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779154834; cv=none; b=lcvPod0VVFo8it6YnyP/wuIF01wn7Vd8gM2ApiRRPTwz57wJOjV3lB0EBaqnBW6hVzDp6nXsJEwd1s2HT77dDea2E8vLwep1e5xb+aZ/r5olsRQAeOWhDLiy9z8RRn71OreY7C9EOUrwW85Kdy+6ogXQddYviBpoyoVbDYdqIz0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779154834; c=relaxed/simple;
	bh=+2SBzgiDj7CAYDM2v6XgrSaceMULkrMkUhxXPCvV8i0=;
	h=To:Subject:From:Message-Id:Date; b=mKRsaHOzRpROUpUd1cPWx4P/hpp1Yzyv6RmCPPAx91pF2eCIFL0L2LneTGiIRq0rhW6jPntkeATYdBAzUSnqnbCOcwYGKuv9QPYD6gN7wu/ai9YUGC9lr2dbX+3aaLXPA9j0bKQLiV+mcaF1DICeiGJr23rm39u5zVBUFOmuT24=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RIe6hmfL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RIe6hmfL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BAB8DC2BCC7
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 01:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779154833;
	bh=+2SBzgiDj7CAYDM2v6XgrSaceMULkrMkUhxXPCvV8i0=;
	h=To:Subject:From:Date:From;
	b=RIe6hmfLXyWmAtSZzbwwhh9lADNx63Q8G54jfl1nBKpPp4cusFSCioZlQ/Bxq4uh9
	 DZ5GErKeayY4/ifWYc/vDBMREYzEaPp96uUuxhakXqYFQC5izJGGi7HZQa6m5Sl0G2
	 bvNULo58Yh5bNvluWPKDwhd6YVtIEao9+8HPgl9OEJWmX/sbYlKxW4fdBUbXLdI6v8
	 TPK/XApiCw3zIrTrFNLTrwbzr+NgGBZ2gCTH2kXyjQ8ofGgHl8BO6QCETKBX+6Aayf
	 XB9LPoCVtf5mGkXIeL4mcgzTRepgQVsgAISz05JpLQTHDVuySwNcJHJzYJct7RX/X6
	 ilsru/AsAFyMA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AACC4CD343F
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 01:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177915483369.24013.2669640639078121737.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4ce732bc0d0eae79d4b1223107ab40e0fd3417ddd680016915f1b3f6e0e336fe
Date: Tue, 19 May 2026 01:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779154833
