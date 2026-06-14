Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 544B540D570
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 05:46:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781415994; cv=none; b=D6qgTATKR5ncVA8nfgjSqRDD1SQ9MadgT3du4v8NRgnGK3JrdjcurtWDwWJE+uVQbcorJaIVjBumXA0vInUWkBgTotvKYMFjyUbfz8843qp18xf8ukc1VjTL5XcpE2fgssfGuIQmvvyBYkzDaDhPIK2din4usjpEBaRIR8pGZIM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781415994; c=relaxed/simple;
	bh=uGiBGHy+lJXmN1izOos7tYTD91s0+vGpCg7GjHmseyo=;
	h=To:Subject:From:Message-Id:Date; b=SGONthlQauNQ4mG99k8Wfst2Twu+yNbttiO62HEDZXfDWswyEtIM3MhXea7X0WWPteibVNLhEGbuh/lVOFmajOEAoQAXSbLnevSie6lY+BJJAV1ulC4YiOTOArFlEGAexggfdyAmvMOzup8ykNb7YilRu1Z5wc5juohYDFc97oo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jJewLeSp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jJewLeSp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD660C2BCB0
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 05:46:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781415993;
	bh=uGiBGHy+lJXmN1izOos7tYTD91s0+vGpCg7GjHmseyo=;
	h=To:Subject:From:Date:From;
	b=jJewLeSpeaVX/upETcnFCh2qhfhT9Zb1QL/D84lZBUzcIfb6LIfiVxickvbxdlv1+
	 jIpHUqV/pVw26iPWeFc0b+qSjDjUqM8KIqFAr/IcyDBFBPbNkxnjhmCbbpaZYo/JeL
	 hH1U9nSJEOcflz6maQ38zsLSIsAjgT3+yzmWBZsK8z+7ptVkySDdcn2Sbyd5ZHCIt2
	 7SxYp5ptSTrLwlWzczvH/AnpSEDIht+LnJcfy4/fwWyy+WKKHl3dtWY9XZWGvnBwRP
	 fbwr2sIp3LB2TCOvwB3iCfz39tGmyfH0CDdOjsjfPxPR/L0t6mSYhqAFHoqi/YToD5
	 MHr1A3E/HenHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA80ECD98D2
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 05:46:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178141599371.18472.11681956942318996437.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 57c402793cbaf69642690c59b0adfd9fb633cd3bc027fece1402a4d89c98510a
Date: Sun, 14 Jun 2026 05:46:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781415993
