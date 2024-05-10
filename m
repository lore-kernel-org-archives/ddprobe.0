Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 76CD2136E05
	for <ddprobe@lists.linux.dev>; Fri, 10 May 2024 02:42:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715308943; cv=none; b=J+zmBXhhRhlp6eagWH8zmaIyof5mLp6UOgJwrvhK420lalhogqHHoD+FdABLAmUkWS1iE6xvogYhLR+HrGoy3kxqQN3a1MylkRktchLzTHjuFaweqvnXGwRsX/d0SnBnPoWOwK2R0OMhZlseUEwvRwu8hhrR1Z1b/+JBDTRg4U8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715308943; c=relaxed/simple;
	bh=DANHmxfcjH6cmY9wQfcmvkMqfIT9kg+e9cFe6tfDwy4=;
	h=To:Subject:From:Message-Id:Date; b=misQ8EjWWKpkfYKbWdHS30f70zgFfCTgOeW0zercxGFOTSCtei1cn4pG2yuZE02OkbEVcvZO2ajIPV26JCjy1Y9ljzqWjlbDDfwXyKxtoVWH16IpRlFuEplth2Sd/EiIRum5i6l+PFngBuIMPZkGA3sQ8CXNeqcpwNRkt0VeTo0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=humXSrpB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="humXSrpB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E223BC116B1
	for <ddprobe@lists.linux.dev>; Fri, 10 May 2024 02:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715308942;
	bh=DANHmxfcjH6cmY9wQfcmvkMqfIT9kg+e9cFe6tfDwy4=;
	h=To:Subject:From:Date:From;
	b=humXSrpBeqSfxfRxcX48y8yg94txe+Iaaouez9VAxA3bg5THuFrzIkketEVxDHx4z
	 T6Wa64ZgMjRKsx7V41mzR9/lZuj9Kdq2Y1nSLJBL8ylNSxk3eST653QLWMBrompbbg
	 FmtW+KEAjpVFxze1gXRo6jAR4CPdZJ8UQrngnMwRKpV9+rbxNpA+q5CECdrc4d1B2D
	 6OZGaJipdZxYAuMz3/P1mRWW4dzCYO16uqz5F+3unnxIjYvakrMyMIr77qonXuV7fQ
	 fOLB9gXb3oLmhqKqOcQ3w63IhVZt3MwnnnZOsGRzUL1Z7K6db24vocrUtKHDKECTWy
	 pGsmXhNXBJrLA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C6C43C41513
	for <ddprobe@lists.linux.dev>; Fri, 10 May 2024 02:42:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171530894278.23617.15645118966030738902.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 99de15323e7c066407c17c2903f887cb2015348ccccd5ccf843b0a95a0099adc
Date: Fri, 10 May 2024 02:42:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715308942
