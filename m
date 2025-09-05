Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11E33EEBD
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 03:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757042394; cv=none; b=BRzjRmivpq8/fP30OPpuapVGi/ouMbxs0Z7JFm90yrEeaDWx8mHtOE8+SH0d8v0usU0ytRe8Z7oq2oXkWid3fPrMfPBytlTOGCfCGx9eQ9/IWVmIHrO+Pqq8aQJo60xe9qXGd4JWfFCENMPYOu4TfEj1ZgFJ2GUoXbIPkDptcBA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757042394; c=relaxed/simple;
	bh=UlClQb3EM0prsnMd1JaxTn3cQXsQjoxyqHTu8cASGHk=;
	h=To:Subject:From:Message-Id:Date; b=Kom/IodwqEqnVwHtJ2qhnrdNRpuCMyKSDva7vfXInxEl4lB7CgWNChC0VF350ntpMI7T1bCfDsuncTnANGFxGBP5iq1ASHoXn5JqH4OXYZz2L8zE7TwNVrIWmvyIWNtmzxljVqLd+pT2f2YCXjw2Vs9uvjHSF1ujwYyk0hQYWhA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cOGJOcIF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cOGJOcIF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9ECBDC4CEF0
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 03:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757042393;
	bh=UlClQb3EM0prsnMd1JaxTn3cQXsQjoxyqHTu8cASGHk=;
	h=To:Subject:From:Date:From;
	b=cOGJOcIFAZlvQHaU7Yu1Z4ONvdNhBlqN2PHLSwrpxwPTR2E2hSf96E0cjjcmXjG9g
	 I9g0WTIIpXaXwWluSpM+Bye86GMGiZFiYRTSnT8lpJBQ3CFYer7HOJyi+yYAdbaPyV
	 lDtzoD7aBz8KHJnutTiRBp5gAYsnu28ZSJFGeta8/rN9Wlrefong4rvrUiwCTTMy+O
	 ZVnP1jOdgw/bgFbg4WGS00Qe6lxu1C7nNnZ+pRPawI19+/xKqFm3GrwVD1s8XaT8iQ
	 X4fw7wcin1bSvgxFleI1/5C5VGqo5ILs3tp2XQOSvqzsMN5wIluEvOufX2TnfGUQTM
	 puIds6u+DAZBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9116ACA1002
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 03:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175704239358.14987.1283391053692175247.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cce8db75770c761204ddbc0098dfa3af32e482fe9c7870cc8bb0e5c5446ac416
Date: Fri, 05 Sep 2025 03:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757042393
