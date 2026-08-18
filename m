Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 165CF17BED0
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 11:40:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787053234; cv=none; b=LWg5dK4ckIg7VvV+XfnPt58etE/SOvFnXRTphFtgrxEjCmi4U5kimbA+gUtl0hPGq1oRJjka4OVYX+u4ZwrKCtE6+Q5y2vGo3m4PKA/y84csmB0mfOoBIfWFELiO57m8lI5/am2fgvTP0dKEQokPLc2U7p0SWQuvfAM8jSqD9n4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787053234; c=relaxed/simple;
	bh=HGzJkfJGtj83jKh5yA1wVaj0p53gBQ8prZfXhnA2xCE=;
	h=To:Subject:From:Message-Id:Date; b=avgo0XCUvxBSNiiiFdB7zWMppJfzOdsayT6F2QEUEJnbEc0GD9jAdsNUcJ4JHFgJkvhThwBrBWkJyhFQFgwDT88xIyRVQd1xrFC7u/JAWDNAxFzFyP8ERjc6BFBrW49X5VH61MzeERHqF4228RFM1/iq6ESH7XMaQuUNg5L8k/U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=faWHjCtK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="faWHjCtK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BDF45C2BCB3
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 11:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787053233;
	bh=HGzJkfJGtj83jKh5yA1wVaj0p53gBQ8prZfXhnA2xCE=;
	h=To:Subject:From:Date:From;
	b=faWHjCtKI5gdL8xz1i++s7hXI/aTQBvvamz1vApzoUNU8RVjvDOT19dMpOT14IYOA
	 dZrceAeW4U8Oa3Laq4CCP5QD7tzwYdBojbTaZuHYf36Ms2zB6LLe7FBIkawiqsA37M
	 2PX9QInzDL4JGaS+wdA6Y1apznoFW3TgO/WnD1/BTzcjCf3ojLyrlEZlmMpPos6nkw
	 BMwqve/Pi6zm0I8WbUVXYd4lvDD6BUtz7oggysaof3sOHoNz5TeVyjnHwsYvixwfOi
	 ygyN1T9qi8QmyfN8BUeYBLCFN9OnYaObgeJ2VmhAu8ynXYW4ESI2z7+Zotqn4e9VQV
	 YWwhgKXXQc2dA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA769C5DF7D
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 11:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178705323368.9042.14772641163936087556.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 50422e3f480ddb466bf566ac70a065beb277fdfae452567b3b4a27cc64bd1463
Date: Tue, 18 Aug 2026 11:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787053233
