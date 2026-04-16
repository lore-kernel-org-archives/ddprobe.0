Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 321EF26AF4
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 23:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776381454; cv=none; b=X/5vk+kGJ+DrZCkxg3EzSEUOQcB/2bqlk0zbSRW1+E5eO1zvXevXeuBFATYBFYf86fr5mNCi9jKZohD1hJ98zdiEbI+DLu8ArdILbtDjA5+lCK4jJ0r+3m0dHHvyq6psHwSznvLG6nhbGEmx+wLvr7TM3og3rYgolmmTnB+0J5Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776381454; c=relaxed/simple;
	bh=TfIPAMANuBxhRGCCFLp0bYgyzqxTjp0zLOtv9w3Dt98=;
	h=To:Subject:From:Message-Id:Date; b=s2eZUPQTRq86OEYoZGwq+vrNHiBmrt/49u39IS95cLFWSovV73reAUCnS55ynfXv1PZDVoaFZVBC6ujUKws8e3J3KHZViy/T1zaacan56vQToGvIqLcpGnXjKEMF8BxtWtpzSZuwi+bDyoA48yNDmjt5s32zivme0Kru1W3Kk78=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g2y4anfa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g2y4anfa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC047C2BCAF
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 23:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776381453;
	bh=TfIPAMANuBxhRGCCFLp0bYgyzqxTjp0zLOtv9w3Dt98=;
	h=To:Subject:From:Date:From;
	b=g2y4anfaLzCZ4IIkeG5WzNzFWv2te9cNLhlzsdSIyuGgq89HiCtKIuFNjJiEktx/r
	 6nA8KoR7TUQbAUKtlTY+ETNtCNQEfcbpCq5PyGfmmLSCG5z8u17/NjJalrNQHqVi87
	 RKmwcMcKzIqDG6x1fP2mjTHEDrCXRDppDTQ1gcAIuu/RrIPGkxudzNmu4fb75UyT8J
	 V0FzJUVB3cBVxeyOrJrhRjZrd39cdnC8zsFWTDHSb2tNEUedPigYPVuaKk9j6VtVzs
	 XkPWqedrkOKvRLJBDK0PYyU/ccrUnYzq/fipM0wedaMZ8SHz0bgIe3Y4RNu9T+9QxO
	 aE/HJMrpFJbzA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9A5EF8E48F
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 23:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177638145368.16645.15843545915274662401.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ece26996217ed7e0a0477df19fd32c923316d399bf964f5f3b69d28f0efa236d
Date: Thu, 16 Apr 2026 23:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776381453
