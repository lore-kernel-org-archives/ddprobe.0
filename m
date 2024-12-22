Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37694824A3
	for <ddprobe@lists.linux.dev>; Sun, 22 Dec 2024 12:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734872154; cv=none; b=W79XybgzhqfauAZe67mLIShbp7itswY0qnHckcGpq2bhcNEgVUHrHh0qH3gV2BSRRLeUI9H/VvjwmSs98UarNqqzcGQCyvdxuJrQ3+AyxW8min/27asVJ/kHU0h2FsYDXtouGIKKiBGRktIxPwuzX/EPkvnD2COcnhrRIeIpxCM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734872154; c=relaxed/simple;
	bh=0qd++MR1Kt7Q07Ad1RIAQCcnEgQx9rLjoDi0YYG1uLA=;
	h=To:Subject:From:Message-Id:Date; b=YXOMLJ1E1z9QycW/zhZPKk7+mHQ89kIAx3y+Qi5p2MJEKKVvhb0zcYXmrqRPmQrq/wO3Wx1vrHK4elHDcVLlnXenFv4jLLQcmi2JYhr6umyrmYA0OfxIU5iWjAmCeKfjqQaT4PryEVnOhuU/13m3pvcTESkfYKoSTLSd34ChBjA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m8R3PO8E; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m8R3PO8E"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A53E7C4CECD
	for <ddprobe@lists.linux.dev>; Sun, 22 Dec 2024 12:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734872153;
	bh=0qd++MR1Kt7Q07Ad1RIAQCcnEgQx9rLjoDi0YYG1uLA=;
	h=To:Subject:From:Date:From;
	b=m8R3PO8ECGObb/vgWyBdadgVoV05m9hWKokIwbys0BFMJXc1i0tTJKnsgO7O2L9cr
	 8X7LBSVP8EMn152zYJg7ONGvUS3xnArKm2muhsystQMCQ10EEjJbIktccquvocqpyn
	 GFlU/XUJkMY0jlMS0x4FMoLt6PYMFpdGqMPCTUcMUskJE1gEsT99KoPi38nKHFGpoj
	 tj7/sdWMYpGWyTLa+Yu86etFO6m6dalxaamDUFFv02arpfCX9dVDZWdakihPz2hS6U
	 w86CTKrAA+I1j8nITmP8i/G9JV7qf4kFJnrI9py9FRrUa/aE3zyR9LzHun1IzTEY+f
	 LIR1+Q45ukQrA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 917E2E77188
	for <ddprobe@lists.linux.dev>; Sun, 22 Dec 2024 12:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173487215358.27281.13781795704949944939.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 55390ad2b374f68910962e0c228461250aa4bcd811e79dc08b8d5fa7535dbbc7
Date: Sun, 22 Dec 2024 12:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734872153
