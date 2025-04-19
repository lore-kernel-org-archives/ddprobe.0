Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 373C182899
	for <ddprobe@lists.linux.dev>; Sat, 19 Apr 2025 19:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745092194; cv=none; b=IJQaYz334882EQ6TycC3WYFPr3Jgr0se1DcVLMxHzWtzldeq3NdVqCR0ErZw3GK/b8+E3Y4qT2ScLi3I4WRmkVVbEe7hWeLcBJyQCdif9+8a1zYajNbSeVJb3gCEPXkgXw16bYCWW6aWlwP+g//ZGMKi3Q2sjqVhrTKh7U4Tukw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745092194; c=relaxed/simple;
	bh=G93E9fFOyUjbZOlG8HILKChl6sq3Rv/oUV2Gb0Uy3i8=;
	h=To:Subject:From:Message-Id:Date; b=pUBcYW++cv+jq9sP7qxuZb+j6mqIkM5wZXKBGQ8Wsc3PwVRxqR/aFvL+yl3xRDLOjkD3gGUmqmkyDjZibA+OASu5DJTM4YhcXnxvzXSAhDmFuSEh23l34LXDzcWYsAWg4BGdYZH7LpiGp+BEoHOZt0SJh8XXK/Ljr31vPbSqlDA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OTWIbPcM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OTWIbPcM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD9AFC4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 19 Apr 2025 19:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745092193;
	bh=G93E9fFOyUjbZOlG8HILKChl6sq3Rv/oUV2Gb0Uy3i8=;
	h=To:Subject:From:Date:From;
	b=OTWIbPcM8GND+3EGbiUzi748fdzZbZWk+3/TyV/+lumOapSLGO2NS1ZMkpmuStyT4
	 Z3rST3/TkGbW2CtbDCPVTusl1pCf8X0TRPJXa47EtFHLz9Nbzj9NxnuZNwYT5bQ3q+
	 aCedAEPeLVorKoErvvnSLF3rKibnhcipgejjxoVd2JF2Fl30Eeu+HuWVv0F3tqjanv
	 eWR9U3GJ4xeH8atew/t7V4wGwwJI7Qp3MmyHRtlK9p9/YUEAXiK8XUbpZR0E6so+Kk
	 z0//tnOJLoX7C7qKclilRA5goBVwxu3Bt6YzR5SYVqloqZZDb02rFllMx0MuS1Nkbc
	 9bQy/UOA1IjNA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A236C369CF
	for <ddprobe@lists.linux.dev>; Sat, 19 Apr 2025 19:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174509219359.7336.4364177787917981589.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2f00d19945e02c785bde59d5c8cdb282d9d93576d4e9cbb7eb142af5a8414006
Date: Sat, 19 Apr 2025 19:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745092193
