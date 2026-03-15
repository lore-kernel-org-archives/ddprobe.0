Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F0304317D
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 23:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773617094; cv=none; b=NyHmvuspl5f0TCrFedn0MtNIwhRWVRlKowOqk0nS24722RfuJD/VAjHzeCVN8By0FCBYp2ZYbgYtp0BiWAd8R61W+0JBUhSqPOOHUaFoVHNQWLkLFLySdSpDtYpivTjIyUFXnxjJiUKeanEu9YCAM5jSMIHZa+F0bQGX9+AXG7I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773617094; c=relaxed/simple;
	bh=RorkBUuH17yIdyVtYRt9T9QQie8rkDwWf6v86273BJo=;
	h=To:Subject:From:Message-Id:Date; b=oF1WvRxE7x8IE04dlHM90/3rzzrNdYYjX1JeXsVptPtYEZBadau70Zfjioo+SxU7IfKhF9mxp5ABN3mxg+m79HM9MEMGzEj9nklETOIJcq+yZlPmhSBoj7DbCihWl1Tl66mCBTrJeT7crACE8c8eIu3ESILGibNrJco3YHEW7yI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OyHUosOh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OyHUosOh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A763DC4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 23:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773617093;
	bh=RorkBUuH17yIdyVtYRt9T9QQie8rkDwWf6v86273BJo=;
	h=To:Subject:From:Date:From;
	b=OyHUosOhomk0p+4kIestks+vfvKwOs4DmhyqS/49Kwcy7OC43jkhKwsEYYp0xKHR2
	 Kp7CrYNTFDYoICGqu571yFa0y3XqIQ4/ICondtPAnb/3hZY9xGdJFSMJai7/QQzcDw
	 lo8m5Q1G7SmssLbh7jyfCU1Ehw7Xi+pYUrJNU3KDvMsKgxS1cJIgb9nQoAOuZInFwz
	 134dQBXf4g2cMB+xB4R/I0cK0vhP/AYbPbwDRqjvUc0lWVSal0pJMuCwrI9L3EmwpR
	 Z8tR6qLkiiPEWcmvUUKL/RHjIYmjkmWKYlIRClte8F+RvZKWBAbVT8kB33dcouKwMY
	 Cs7bgvA+ByL3Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 957ADF3027F
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 23:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177361709360.10454.12255642837489066443.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0b155c74b63972d31fa4571c743f93b481152982b30108401c3bdbe15b566178
Date: Sun, 15 Mar 2026 23:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773617093
