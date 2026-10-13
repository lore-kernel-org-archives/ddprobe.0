Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36AF647CA9D
	for <ddprobe@lists.linux.dev>; Tue, 13 Oct 2026 23:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791933034; cv=none; b=IGsHO9mG/6OVxcAimIb1IGaNRV4HF117L5XPXNehWNfwyjJ10Wnb4BM8QB3plZbqUUxl9yYmPCgmCa/L9b7s1l0MmqAmo/bszBAoH8OWuGK9Zw2E1VkErW0X1H9/HvxTRCa2QRWO0PWaHthhKZo3iWLo+woGfy+NCIfq+o7o5tg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791933034; c=relaxed/simple;
	bh=UYP0B04qqXg59AdrnQKAhbZub1Eg3I/RQWjLP2ae6e0=;
	h=To:Subject:From:Message-Id:Date; b=JIcDTVRLuiQ4wY/q+UyTBcqHko1mJsPQUO00Xjl6zyKjqgh5/TNxtu3K2RpoPymrcyHi51OVf8F4o/P2m0Rb1wzQ6OoMb5nfr2yw7Xw0ZaGbVo8oNHqpR5XctuQhbMm0hNuwZ74Jhq9DRrtL9V6nvj2y6dXYVV9ordX2rd3a9ks=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DPC9zsCB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DPC9zsCB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D573DC2BCF4
	for <ddprobe@lists.linux.dev>; Tue, 13 Oct 2026 23:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791933033;
	bh=UYP0B04qqXg59AdrnQKAhbZub1Eg3I/RQWjLP2ae6e0=;
	h=To:Subject:From:Date:From;
	b=DPC9zsCB5YEU4HnsjS1tz2ymwimv/HO2xlnxgXNNCOukbwLc/d1vVddiSdKk2dQxX
	 65o1mGUaazzdzM9S45ZmwOoR+s2p8jLGlYXK0ianDw7vb6Kn/CkUZB7tiK5bU6o7hT
	 ieE8aexWIGexfz66wzejh3yt6f8Y1hbd7OwhnWLY791SatGSQzWNRZX6k3kfUYmY9j
	 g3m1IDglrBHfN7yQ6GacNpChm13kg/635S1rIG2Av1A4rgkQF3vwUQogGyimQ2q28I
	 PS8FpY9bdmcyaBsCdbKyIzbg9WiRyjIUJXqTJuhO8/8PDOFPT+QGzymnmhGcV2ER86
	 O7++n5LNEZrJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEB31CC6B15
	for <ddprobe@lists.linux.dev>; Tue, 13 Oct 2026 23:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179193303369.32108.9001347610082270647.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9b33aac0a68fb76ee754a71a39edf0e2244ea40c52d1f7be36ad4e48bcd80dc2
Date: Tue, 13 Oct 2026 23:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791933033
