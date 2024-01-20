Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B52310E1
	for <ddprobe@lists.linux.dev>; Sat, 20 Jan 2024 05:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705730297; cv=none; b=smT4zb2ljOqPA7IJYIcBdiTbRrmnzGf4fDjhTi2yg7EVrSMoO5REv+Z3ox3Veux+MaJU823AXdmQe8yuWlbpe3s1ByniUOhNdRhwL7U9iQfeo09uq2HC2YKsJwfKXWSN+2ibSB5dXoHvjtejMiKTwmGde8mpGP3nG8TcffJO0YU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705730297; c=relaxed/simple;
	bh=c3QzRScWYxU5+6qa7mJ8rvIVDs+99Jl06DOgUCmW2Ig=;
	h=To:Subject:From:Message-Id:Date; b=mfq4N/S622tYj2L92yHHCwoRxftxg+WSnBVnGGOso7TTcALbEJOtGuRJtjHZGnJHBs9Ay75pfJCQY/rAGIZQC408hCsKeZ25NqyvIfmVzYRJWw1si6eEDfxPPQUi16oSfEdvi7ZbMxrRolvgaK4FKXFdvsqewk1krjwSAU/h3C8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FSY4cEM2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FSY4cEM2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7BAB4C433C7
	for <ddprobe@lists.linux.dev>; Sat, 20 Jan 2024 05:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705730296;
	bh=c3QzRScWYxU5+6qa7mJ8rvIVDs+99Jl06DOgUCmW2Ig=;
	h=To:Subject:From:Date:From;
	b=FSY4cEM2NvykgUIatt+VJqu8jFyz1GThJI7iBMP5Qp/ydJPoQKMtqlw6ts5hXgODa
	 SH2eJck7R4dOQ5a3kCOYtlXLUyilBRKEoRfSz12kO9Hd8ahZrolMU19jH3JlQdvSDF
	 Ae6tMH4Z0ovKUSHoCYh4TUEVqnAnnCUsFFoderDH+vgZZn7cBQCI0Ps58px0pudt8+
	 vIIO+lVUvyJAWdT68IiiA/o1IsEX/uCIC1Pz9XF8HnF96QuMo/tC2vAWm18FcdgE9U
	 7aS+GJx/JZ37OALcm1jWUZfRSfEctF4oxKv6KwWnpEfAul672VCOB5hxf/56Njte53
	 VDVjtvYnCQTnw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5DD0EC47258
	for <ddprobe@lists.linux.dev>; Sat, 20 Jan 2024 05:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170573029636.16014.4645111425296908178.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 52433badba0543c86282e20c825f00a5a2b1b48810964deae8a0461668170112
Date: Sat, 20 Jan 2024 05:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705730296
