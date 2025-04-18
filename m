Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 381EF218EB3
	for <ddprobe@lists.linux.dev>; Fri, 18 Apr 2025 16:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744995594; cv=none; b=cbBxZV/n7qvxYPfMfYoeb/G08c1nZvWTNB48st2lyfaJ/eag6Oouve/AfAVPmYghzV8SX0Kp+1UwDJhVRM6RVqNMsT2VjqQFtScDbATujfEP9iwaf8QoQv6bhiryy3o0imU/O+iv5RQLlVSWxkEZLy876+PBmUEb3jH/4S8jmVo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744995594; c=relaxed/simple;
	bh=mZ0JJAbpv3YNEuJbzWun47khnG6Nbr/XvSIb/lpnr3c=;
	h=To:Subject:From:Message-Id:Date; b=dWB0RqOK3+lFDItNChzi2JODTa7z/6IV/Kbk6hCADqGI/r6tMGJp4rNmp4tMKDM365Duf5bWISsg4mLR/zo77MujrpEJl8dVzgbSqmp7bFUQiJ8BFo6mRXPmzMdvOEaR3LZYIWM2fKS+XOQbnBMhCH7zrQo8pEtJTsorrAhp75g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jndTLOVC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jndTLOVC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC180C4CEE2
	for <ddprobe@lists.linux.dev>; Fri, 18 Apr 2025 16:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744995593;
	bh=mZ0JJAbpv3YNEuJbzWun47khnG6Nbr/XvSIb/lpnr3c=;
	h=To:Subject:From:Date:From;
	b=jndTLOVC2q/RVtekFojOVCpvPsRHRZ9oY28rbXQcE7sGlVCxDRKVlw9Hb6Iy2jT8o
	 FI2wLGQjWrPNU4jy82iTZTdQmt9NPztNmAw+XkxXGI6MSO2FUO720sEL9NkLibiRHd
	 IhjW/KG0huVYeDq1s7y8I3hswK8TypGhh+zOQuRX/z2oEof8g1BsV/ywF83fcwmc2d
	 XNLgGEgmaAtMGKm0wiDM24dzWrS5SZIA3XVH1lh95X/iLQ7pQsaJ22mN8zKoQWp6kv
	 +sqHR5OO+2ipoLv+l91pfWE3LqYxICupxsG24gUs0N1+YTnrAZfeseGUWVzopPsHkY
	 WOoFlUHjeMZxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9ACEFC369AB
	for <ddprobe@lists.linux.dev>; Fri, 18 Apr 2025 16:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174499559361.6178.8460132370047167763.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ea36f8e13e745ce68e47294912765ce472e11d8a07e9d450d9bee94c12c8f397
Date: Fri, 18 Apr 2025 16:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744995593
