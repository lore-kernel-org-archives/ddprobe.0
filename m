Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18982366DDB
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 08:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773392094; cv=none; b=kMc7TkP16CGZCK1T8w5cwrpK8orbRouTvmRiHEvmhWcNBCtKQXfIoChhQ+yhQxAYGha/YW2mry9JR873EttTWkqqe8AakHine1NlRZ3F0RMbsntdeQiZ7vsENrmKKrRSekyk21+i7HjPRfE8IP9Xv64ecBt79D9f3h4TtKQely8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773392094; c=relaxed/simple;
	bh=1xQJVmSRdMiToKvTwZXUA2kruB9e2zGtgFHw5/frTq8=;
	h=To:Subject:From:Message-Id:Date; b=OHjd11Z0JE4j6OshRvJsnDF8fzpY6YSxA9X4Mf9sjwlBm2M4lm3XLwE5xaxWFytvowGPSbxUAzFx+rkWHGg949DZ/NaEeB2YPz9mA41kFFuHewDfagholfgYZhp8B1RR93LB37jfRXR83EynVUwn5oylqiWo0xSDIHxjsVExTBY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oOJ3TkBy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oOJ3TkBy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C8C8C19421
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 08:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773392093;
	bh=1xQJVmSRdMiToKvTwZXUA2kruB9e2zGtgFHw5/frTq8=;
	h=To:Subject:From:Date:From;
	b=oOJ3TkByZdgNrAHuo2l7OMu6rNeeYSbEb6FanFgShleLPUciSatOGiEwDsLxALcKW
	 6J+Lyg2bQWF4cM6j/exqWfS8uOEPOqAlTDvHle+cT8OxDNsmVHKg9bHRLuHnEJC0j9
	 hUYBLf8QGZyhs2xmSlNT5eHepx0j9eCQmgDpTOMJXfVWxKPP2n+1fR7dplK1R0PAsA
	 ZKkH0816CLfk3qaStQAbhhsRcM7rK+OZl8vmN0xywTRzKJIFrptdFfwe3BGl2SM6ug
	 5ct95dverqBWSpVzHg8vt3tL2DOpUabEDnJl9PksuEa9AgzYzRRQgRPHaafHABKtJw
	 vBpNLr5IfK/AA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 900A2106FD9A
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 08:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177339209358.26046.16729973599086590579.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2fd3fb6bd3cc6564af1235377d89b67d99154611896c0a8a2ed0205e71a1a86e
Date: Fri, 13 Mar 2026 08:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773392093
