Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 593DF1E5213
	for <ddprobe@lists.linux.dev>; Fri, 14 Mar 2025 11:18:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741951134; cv=none; b=ZCIfggSJEs0eMTDMDIcSvvqRSl0SwJZpAv06l3L9cLNJfhTvB9dunLRjUGehCIU1Q2XyVl8b1DK1W0fGOjqUna3iPztK8XTjB1Lp07/C/jN3Yqif44tabDySeacs0f/vPJ4707uho31oZEP3PKwuE0QFmubxFt5KPUOR4Xy1KMo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741951134; c=relaxed/simple;
	bh=rquNx94ZFS9UQq87fdBTcbNMTX31XBv5xbPDUJUuhQk=;
	h=To:Subject:From:Message-Id:Date; b=PZssbOecsWjsx6pxf+qbYJDOUY0CfHDVtiytxAzv6Buw4u98UIROzo6qSwUqVWaQ2NFXwAbPZ1onckRll8zpR81SQLGFArMESpkNW6zCbYKcF37Fi4sKsTVFQmfCS/FYf56dLHFXcAW/CLzyrJ8XYOsHXHCa13hV181S5O+F5OY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rciV6gB1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rciV6gB1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD579C4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 14 Mar 2025 11:18:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741951133;
	bh=rquNx94ZFS9UQq87fdBTcbNMTX31XBv5xbPDUJUuhQk=;
	h=To:Subject:From:Date:From;
	b=rciV6gB187NtC+UV6EYvBjtA01t9uZPlChK66su0KBTFPKG6bK9T39TAAXCxS1eNb
	 vpN6UdDOxAoX91VWXS8K8tFKWKmJD+y0P92JMIco7BXpqxUwEWnSv2sLZ1nGgGLkNi
	 GcPhMjWUKJN/ZNwJAguVMVEJ3ga9hL9h++aP78vp0Zl/lg49HQzUa64L41PNTRd3lX
	 IFgmTghk5LvlW5dhu6cCdJQDDL8WCY40YyyQWdiBSMvv2I79iVTVKNzUO3IePpTAkx
	 vccSuc1L+oOoCQX3uv2UBh/9Fx40eHK9wWfgh8ugrtLvO16B3rLEQfdGNV10tThVKl
	 1PMHcC+2IoEvQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9ACF0C282EC
	for <ddprobe@lists.linux.dev>; Fri, 14 Mar 2025 11:18:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174195113362.7411.13259911442654077932.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3fc67cdc3793455337a6fc5ae707efb22b30be82d54d902053fed4be325f54df
Date: Fri, 14 Mar 2025 11:18:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741951133
