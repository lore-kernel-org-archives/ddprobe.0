Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1045C3A6EE2
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 20:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774557894; cv=none; b=Lq6hMulkOwn8PTbBvLUeB0A3gEmiQUpf9jh6fDx4S22Uav/6BW0Gm71NwiKHJB+F9pRgt5QxIWBekT6rIYoULL90VGsPymuMEgFTMSJlfksm1SJnfo2ieDqVTqt6BMSBnpF9Crfhy5wTHQqY1t9Lsv8AvjZhR1vR9SxkiIEyMo4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774557894; c=relaxed/simple;
	bh=TjbDxNJneYfU0u99QynfaZC1Yw9j2BrnWPCBaXIXQNA=;
	h=To:Subject:From:Message-Id:Date; b=C76qc71/SrEQtJawmEgfEyTmi+yfomFbn0jjumA5Zt9bgVv28PBSABTlvjMDydrt3LpG79eMMqYGaQX4y2vtW8mYHEULx3Wx+lKpU7jsp8BZ/vngvCpZRbH+kJC4c5MDgzTD4GBaCV16NFq+sDsbHrEb/dlWc0qaXzcFwoOHhWw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GCWREHR4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GCWREHR4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5960C19423
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 20:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774557893;
	bh=TjbDxNJneYfU0u99QynfaZC1Yw9j2BrnWPCBaXIXQNA=;
	h=To:Subject:From:Date:From;
	b=GCWREHR46l7s7QL0H6EG5hDi19u4YlQvUaT03KOHNO9LWmXxOROVqKRtiFqrSDY1+
	 yC9NqUz2PAQGZYc1aizpoctvCGvYFuIfL0id7IS/VRu2bDMg6IneML9QO3Wrhg1RRb
	 RxDzCoaLzegTr3j4IV7LEr1O38vdf70dTTBgkcJj0LNHkx2J1s6ly6Bx0+Mmh1osCF
	 a8kIMyWAmHCH6VkND2wnNxPmby42zhZph74LrStUHxWTHjRrrIPzkF+9aywOXr2Gui
	 dYrtOJYVZbfvdchVBbS535r9XGkXsNdPV63vcSvW7+xdSQiAISRePmvvmh/ocqOE9Q
	 SBJ5juvnnCWYg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9251610AB825
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 20:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177455789358.26195.8383192995670280504.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 990fe2b226bc168d7aeb6aa90df26777f0d97217473b132227f97a01e043f6a1
Date: Thu, 26 Mar 2026 20:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774557893
