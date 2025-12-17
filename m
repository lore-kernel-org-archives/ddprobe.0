Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AD35248F54
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 02:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765940034; cv=none; b=VR+HAtAfl43ZsRSg1yrZZNbPM5bZYjoqzD7bGsmCOG7rTb0gRgMl0UC0V9XG9GfFf+HTm9Sa4y/Da180A/oPXNkjKecOpfOOrLq1u+hzbnM6B0VJLvXckHoBpFcxihC4i3bS7h3f/4iR/1XGgb5h2iiDtSJZDMP2RIe81ymjGq4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765940034; c=relaxed/simple;
	bh=wp1y0kwCbNYQYF83Dpgd56YepbhRaWxw2KmvpFOZfGA=;
	h=To:Subject:From:Message-Id:Date; b=tx/bDvEqPy0mzkbElUIPWbzr+8GWanRHxNaPX3iVWYKR1iBwSjdMgq+d0yCn2RyZL2dKeyj46ewjeG1Sh9gFxlSp1QPVRdfE3NFvGQ/cadMfoNSNehaLjkWt5Hd0ah3rf7IEebPf9sgLnYe0tYQkHfmbK9LRZzBxr7fUpAQ/bSw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qKev5Umi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qKev5Umi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2259C4CEF1
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 02:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765940033;
	bh=wp1y0kwCbNYQYF83Dpgd56YepbhRaWxw2KmvpFOZfGA=;
	h=To:Subject:From:Date:From;
	b=qKev5Umi3hcLOYAkpVHDePOkE83PYvPIGw02DYRD9WwDFRd0rpIkpoq2VhNPFf610
	 I4bQHoqIdjMbD9lvobNFv0u9GNUiRpYIZDmvL1QSwXfdB2S7kfEqa7aawv6QGGCKJX
	 yxLwRhbTlKcRU9gd/JK+VPDwrUTDCXw+DpYw87DV6SPnAtTEp/BLclRlesRi+e12wk
	 t4jkD49PuRD8tSUj5ITjP4BedfeXtUAxN/M6S8XYnHcgv/z75wCNAIZRtFROvxUdun
	 T326+X/3+dsL156sGC39Q62KRDgxWs3TvCpkT4H5P2EagxPgjyDHu1aD4Ey58Lcl+H
	 RamDtnuu3juog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90604D6406C
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 02:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176594003358.18745.8962438451920832933.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ab00aa7839037ecbc91b92410596bfff05ea68344170bda32b083a1c714af5c2
Date: Wed, 17 Dec 2025 02:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765940033
