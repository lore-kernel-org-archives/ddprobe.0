Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4ED3B19F128
	for <ddprobe@lists.linux.dev>; Fri, 17 Jan 2025 16:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737132954; cv=none; b=HhiwyHP/L7JMVDS1j6n9nTIchLCFFps471eJKJbBgvYncdzWZe9/TsDifh9Rqde/5dEkin7OMJS30Kku5GXTF/WlRM3Ucw2IeXsX1QqpAEhmt92EWSD/asAQjz9+ASwvbqTZBu6mJV/ylWCBdEzq10zk3jbMqgRAispu6dH+zXQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737132954; c=relaxed/simple;
	bh=baqI0to4cdSkiujEXnOGEnSUgYOyI2MK91oEhz+FLO4=;
	h=To:Subject:From:Message-Id:Date; b=l+sJU13lQe4B7Y7orn4fHBmUE/QRySOA8Y2nE3qVREXmdtTInMvvhA6mBICpX2H504xoIRzXUajWFa+IbmK0Eb0iDaL6KUmnUQvJ79MCgzbbwIiqXQm652JckWCnjwG/odyDPtnJ6w6PAaKHgzsdcllpYvROnWIB9NF4Yi3QzLs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jxP7kXJq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jxP7kXJq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7DFDC4CEDD
	for <ddprobe@lists.linux.dev>; Fri, 17 Jan 2025 16:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737132953;
	bh=baqI0to4cdSkiujEXnOGEnSUgYOyI2MK91oEhz+FLO4=;
	h=To:Subject:From:Date:From;
	b=jxP7kXJq09DoTjZz/+EPg6pIoYqX/vByLEYAhTGsWZgT376PTz07DCBmTgP2MbhNm
	 suUqgNTm4AW9SMTBxyVil1HLUlOjBRs7KOwbnGa7VplrndH+tK0OcoHu2r2DKq4G5Y
	 afgsi/iSd2J8pho3/eP2saI3pbUOeQeVxLcLw8jnATu8DIrEGWPUAOIqJkzrksd2oE
	 5aJ4jPkWxEmuF/Gdt9CWIGVl00CngjIZEFMs0Or97L0znL+LbDVohjapmTD4zObLZ0
	 J8d2hI0tme03X5spbGO0VZdtdCCy6m/ie7lSWNs37o3nNwZ2kmZg7E1ZoboyzWyNAF
	 ZoNhtRAPQBDAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BA55C02185
	for <ddprobe@lists.linux.dev>; Fri, 17 Jan 2025 16:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173713295362.15528.14889601583989820233.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 64056dd1fad37bcd6335b3e1efd8de8e7892d444173105257993456685650f16
Date: Fri, 17 Jan 2025 16:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737132953
