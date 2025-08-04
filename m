Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E54A17BA9
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 04:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754281194; cv=none; b=fXYixqOmNZnbperjKXCBYAblW/kQ3xEv3NtAvFTz9QoOfW05yO6RXi3Kc4JnVVJeuWPIYnCvu3tmZTvuVUNhLugZpnSPhewDHZimFkaqLDUZbT6Oo+vvVVIF87iNXcRf0SgKido9uDdXt0u4f3a71yene4r/hDRNCHE71zx5RdA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754281194; c=relaxed/simple;
	bh=LCBZwptZl8yOROCl+0buFE0QF2rfa7xTZNdSzXY64sw=;
	h=To:Subject:From:Message-Id:Date; b=PWyEU6Vqu60ypufvhl7xDc4lV3mV/pzgR8VnV1IcIqRJBheD3HqyzC4lDbmEd+cfXIgB318JY0zJo5KTX6tVe1Ih43QA9FogWhK6aVvKu3tEohMxnt4qSBZCWzQmgokIoJpJlfJO3sEMk8HwYncNjmmy/N7kYLJDEOsxEkkXN4k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cdxRNTzH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cdxRNTzH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A93C9C4CEE7
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 04:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754281193;
	bh=LCBZwptZl8yOROCl+0buFE0QF2rfa7xTZNdSzXY64sw=;
	h=To:Subject:From:Date:From;
	b=cdxRNTzHmO1aB0R3l8NGnPF4a9qsK70X6gyQypiciI6B8d50baIvuXd/T57E67owl
	 CM3GsezlehE+h0NBVbHVXVy7hdhGeHQ4FRuShB33xMLZggHk2kDsHaT6xDnrO2p563
	 vJdsSOFko75V7L7/7stlBY6OcBeGdsgAvmBM55WZJC7CYfwfQAOIsoTiJS1IeGxPJT
	 r9I/UGUSP+PlrH3luyOxVVcbqMfrjWsAG0Bgzbd8GAOCm2VJb5iBzWEKv5iZkRsBZS
	 394g94naP5Q3LoE4fhn11eDrC5K2XcbUuAE//CX1ND3/Dr/p4+n+7lpt0/GnMCCqk1
	 BJNaE8bk9p3ng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97FDAC87FD3
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 04:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175428119359.28902.11323359373054793864.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 99995a53f08f60ef75414e96e5783a94b5b860ba041468a1cabff55955331e1b
Date: Mon, 04 Aug 2025 04:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754281193
