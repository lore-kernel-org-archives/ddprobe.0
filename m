Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4643919D093
	for <ddprobe@lists.linux.dev>; Sun, 23 Mar 2025 19:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742758794; cv=none; b=uQhuRwzBxoZ3w4hcd9lIUiWOwpxAvmPnP3k15YKafKAZ45i9npPTlSfXZ824crQgFAEBanBCEdpjNPpRnTeoFiqHq1K6H9kyvZaHtHIpnIxR8MWRpVsK5jpFePGjoTjUfUyGSLBgHVL+fPD+7opZVRGB3Ra6ieCuxtzNzK/E1DU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742758794; c=relaxed/simple;
	bh=wauTSfnDAPuXz8IpOzca4Ro5OJryLPIkuDkICuh8i/Y=;
	h=To:Subject:From:Message-Id:Date; b=Mh4KhRonT3z/R5tmWHRlN/F2p5dYZMbFvSDbLm+5nLDufaRz53cUFShGDVXPn95Hz8IWE+5qqu0xUGTESP48UbF+8yeXhAqbojdjk4k46lyimi7a8D4XPio8fjs5EHppLCi8aPqbMvETtTLHM35t3AKXLmN60DrkTignGWXidSA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Mrn74YwX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Mrn74YwX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1599C4CEE4
	for <ddprobe@lists.linux.dev>; Sun, 23 Mar 2025 19:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742758793;
	bh=wauTSfnDAPuXz8IpOzca4Ro5OJryLPIkuDkICuh8i/Y=;
	h=To:Subject:From:Date:From;
	b=Mrn74YwX90gkJtTpIgKRxOGmMPBi3o1aDQ+piTC4nlYO8ZftXy/qPiDy+KT9FXYoX
	 B51576nUe+v6eIwSFT77uBTVmhmeRAR0j6u1A4cQomW6v5TGr88pCkfV6Zf9XzbDSD
	 248rDxtTq571JgVt1zrqcVxqGFj8x1S7t0bUBslqNet8yuyIaAR5UtDEwjTR/n4hfi
	 DZxq5Ne0LvBsIg35vswWHoG0sBo3EAKvzvOpuCDcKoey5bAgLQ0JoD9V+hxKw6RRAq
	 iA3qSdBbm6vJxoYYK49FsWJixcdhzMMUZgG95MTgwiFWHmkzE8ZVHUo3Vi3ONm4tcs
	 BL3qQQw1dfbGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C087C28B30
	for <ddprobe@lists.linux.dev>; Sun, 23 Mar 2025 19:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174275879360.14055.7981216639288070788.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ae17dee565f4ee645113b831113d18eb3721cf869aadad8a98254cc62ffaea5f
Date: Sun, 23 Mar 2025 19:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742758793
