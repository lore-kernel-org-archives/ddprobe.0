Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43EF01DE8BB
	for <ddprobe@lists.linux.dev>; Thu,  2 Oct 2025 04:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759379994; cv=none; b=tYblbk73H1tKlC94fl8iVW4+9itmpuEa2IXiMXTDDNuVE2aK5n54p1VWnmj/x5/s1FyeUNBwOsE/AbCixR8RIkOVRRh59Wn8CIF+D789b2o9Tp4mrxr4UGbc4g8DNF+L/YczCNNSUwnLTv0M9UfTR4HRT8hIvhzKSOCzr1zGv9U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759379994; c=relaxed/simple;
	bh=rNjxF/y3bHm21f1nF4YWe0rNhJckwVHXnXleZFe4hFc=;
	h=To:Subject:From:Message-Id:Date; b=UTChnNmV9bqeyJ1WOGmPJa1FscUh190atZ5CD+D4vTBrUk+Rvkif1u4Z41UIToM0gRhFiDjlBssoQeE6y3Bjz/pqEm1Zb6QkwhT57mLzmc0NZj5ru2IrAfzR0011adDMQGj2FQ0dxyv4YTsQgC7EBxuEPP0BUdplcGvH8Ye/yao=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JIfr/nLQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JIfr/nLQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8028C4CEF9
	for <ddprobe@lists.linux.dev>; Thu,  2 Oct 2025 04:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759379993;
	bh=rNjxF/y3bHm21f1nF4YWe0rNhJckwVHXnXleZFe4hFc=;
	h=To:Subject:From:Date:From;
	b=JIfr/nLQXhXwZOY48MCus7MQuwTVGex/6BiaVDid3WnFfLkBg6lza6VMcCK0fxYLO
	 lsQ7xCTJgdrAspEzZ+EwdnBi2Mk1MAXhN7ZZMRNMWlkxmpBzGRAel/aj0TtPP0cVcO
	 U30es/ofw1eDTvteClASEZnoiAs2xvLuXjeKbIVANwPCHdE1/GRNopE0Id3JJpTOIt
	 GeRXdok5UsSXgOJiIdo/rWn0/7TOkKhtiZptK4cchujNXlEBS5j50D7XSanBz/hKNA
	 I9p9cJC2zjPXKsTCvBCgEs6unBu9IXWT5bHygBRYIAYivgPyCQHCqGlSYXHcA3RFa9
	 PmAvbqolGcRIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9027DCAC5B0
	for <ddprobe@lists.linux.dev>; Thu,  2 Oct 2025 04:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175937999358.28148.5838438390947852386.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 52c9e15ade5ed8433ec20442931bbbb62c948b11f9358238544edff58684bab3
Date: Thu, 02 Oct 2025 04:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759379993
