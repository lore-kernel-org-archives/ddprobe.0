Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14356361DA3
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 15:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768232634; cv=none; b=spnyt8xMifyBZzkdIJNe14RaZS0qhQKPo2bkMBBF37+rPXjl8skUuCFXdFStBvjcImVDCM3Yw+yf2hzDc7FrhdWHnsiGSOlMyaltE61azj4wYDjj15JbbvzCic7KF903fZ3lBWJV7WQV+RZmctYS9f5ZkphB48YEJPeJ7GbJ62Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768232634; c=relaxed/simple;
	bh=aCytt1MzITM4YPz0G2+tMosH0T0ZgCZ87xDnYg9Odxc=;
	h=To:Subject:From:Message-Id:Date; b=IpfOBgHYzl9JEsU5te/YDjYu1C7JyIoEtJTG5hKhaVO08ePrkXs41WlNlulOc7IbMe7oBPe3IiPyEwcTu8oPboW3BHGx6bAAOnmxkwe8MQjdZd88N8T4GHDXnFvhrRWn/Yhy9XID+jd8l4v3ORvDYvkap89u+rPMZxhKxRtYLgw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hSJD1On2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hSJD1On2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0329C19423
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 15:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768232633;
	bh=aCytt1MzITM4YPz0G2+tMosH0T0ZgCZ87xDnYg9Odxc=;
	h=To:Subject:From:Date:From;
	b=hSJD1On2shiy0ScKco7nhcTYw8AJ538LahxPUtTkYxls0SmiMbN6PRi3pqgIbYJap
	 U7cWUzdWo04bs40j6gNARIZGxxWanM/W6v9AQ+JWT78OCKj6Ow0ZBqPnwi8bPjIK/D
	 iljFXCFrlyWAXpA0/bNv7nowic11S7iF4VBYH50W1u+2ZYK+KtNpNEm2iaIAfZ2ZIe
	 /TH9Lfta2M3saGgOLZd9AnmxMUK5G4yk5N127Aa6HVCFb0ibRbRWBI4aHaJcCirVbu
	 PzD0MNqJUyXvAkiwsMqsUmVT8XBkfsfHMtsBrSxtsRx8JpF/Ziun7d7qIpiQKjAhY0
	 55Hy3VRAZ/3pw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9224EC9EC94
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 15:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176823263358.12536.3038370255418121784.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 106483ee683a6af7fb2cec1e4efd35cf200ec3ef0def7d5b1e217e12d3cf3f98
Date: Mon, 12 Jan 2026 15:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768232633
