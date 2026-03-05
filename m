Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19F171D47B4
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 06:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772693094; cv=none; b=rIbo96cXVRRSdIt4FegFI9X7TUD/JVVE0R8sIvhkJYG+radRymnLzc1OZOJTWfjMR8kr16/cisyODbS1EONrYcrSI/lkPeTcnP7xpv+Tb3s4Ga5yYtpUoLDN+t46oDXW01Xamo+0QTF+d3GnF23Lj61cVu4b2lnpTL1aTZpQ5II=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772693094; c=relaxed/simple;
	bh=FaDlYOaLgr9FhQZL+mzr3IIJyaGL4eE52iYtf8s6h0Q=;
	h=To:Subject:From:Message-Id:Date; b=UlrqZcQMrzsan9S9nPh40e40p6mpmsRts0055y46rLD5ftlx//rYpncID+hoeNl407j1n18JuCa9tsQ/G/Y1oGto8hJc/yplnLVcWjlpnUBP1jLv4EPnnH3861jFqHVjch531+k3IgpKvPRtmQ40vC1PN8vWD0MYTKw1boLk01U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B3bUOl19; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B3bUOl19"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF908C116C6
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 06:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772693093;
	bh=FaDlYOaLgr9FhQZL+mzr3IIJyaGL4eE52iYtf8s6h0Q=;
	h=To:Subject:From:Date:From;
	b=B3bUOl19t4wByl0MXxmfPsl2wb34vuG7eh9I4txxEVelKnL21HbkiLHkLkOfKSJ3j
	 igmk+yIuyUg0TDxs1EkUKhSAf7RGC8u5i5HDNWZa7EbFNGhghrxd4NGiAfp79zN9yT
	 K7uq83b228kO8GO9R80NW23ZTkPWOrxhaZax8yiUtJdpXEmJMVE93tP+rtvDUITzhV
	 Pp3F57UiUF0kDw3oKgc9bg0vB8hy0wdrvR0+mfFvslBEJ9/iLXBOy7xLWaOz/pl5AK
	 GT9wK2I9Umbk1NTEYqc5HOoHGz9pCMzc9WVhaI87GWgRUYtsehtaxBOGFxmQozrVyw
	 PZ/BKi+w/dGRA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A6C5EEF30C
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 06:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177269309362.24494.8510938659919271089.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e0c57ac5b980740ff64d447df1a017e8591a253bc1184405f6a5d4d6160c9c6b
Date: Thu, 05 Mar 2026 06:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772693093
