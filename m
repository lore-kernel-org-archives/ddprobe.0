Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 076113002A0
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 17:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766510634; cv=none; b=M34APhtsL9xKGb1UEU+BhBOtJ1SFsjVK56fJB7KjMlxWk7nxzhBkRM6r5rZQx+KLP8/6VBXqCKwRPz1IqSF6vfwwi9QLG1zKfZdu1CkCl1SAXMYMUnhp7Kl9VVlTLovZooBHbYtaPWxe6NUrnjUrVx1+LrwRPIg6Zwp9PrnLBPs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766510634; c=relaxed/simple;
	bh=hj6ndBsdaMDkITBanOjvgcw+yXZTbNSEykIjyqMqSsA=;
	h=To:Subject:From:Message-Id:Date; b=rO23HYcaSjSoszFYyoxR43GmyPqgUyij3cDNVzrXEwnd0angdiE8sfyzwA2pDNF0925bpQKRA3XMwdlW6jSRHkjWLpuLJPAmQYzeAXOJG9BB+RXXy/0aUtJPr9I6JKaUOOOXIUjrR3iNPl+A3YtmDmWRRn9ijrAHwUadGDX74yU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EcXFvLzS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EcXFvLzS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EE94C113D0
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 17:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766510633;
	bh=hj6ndBsdaMDkITBanOjvgcw+yXZTbNSEykIjyqMqSsA=;
	h=To:Subject:From:Date:From;
	b=EcXFvLzSDGfzMIJbq8js/Z5ARxNAqSRzMql3RzaOwmhTPsLzNfcjchsL2Vod7D0Cq
	 yA5W5KEnlv5wNLV+ZuhBUzlwBqvR963IL8xYtjYF2+5E7i1U012G3vR33VVre3b4yg
	 3QCO9wLOYHzVLCOBCZWdXHU53oE7ZP2RY9vM1mzq5YBLusHDr3nwpUr5WsadAHQ7oe
	 EjBIhfGaev8i5X6OUPV4ubu5XRsQKhCMgdkUW2CY3xvvUPE4oeAbKwHFr/9CV082kK
	 P8NN0wnTrk1H9tDm0+aRVzruSlrtkgH0aSq51UfKtHcZP3V1tEyuMxU89E5ddptJTs
	 VwHtOe/zkYnBw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 900AEE6F085
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 17:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176651063358.5874.3420421253095717683.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6d003efadab7e95e1cc7ff2f81c7cfa49e89dcc820ed28970795f8035d5df178
Date: Tue, 23 Dec 2025 17:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766510633
