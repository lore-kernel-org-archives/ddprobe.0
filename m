Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F7AA17B500
	for <ddprobe@lists.linux.dev>; Fri, 20 Sep 2024 15:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726847754; cv=none; b=WyYV49GwN8u1+P3wgYQCYNhXtA0G+CY1yZhaVlI8VnMJ0iOf7HTSISkMyNaMruJxV5Fh7n7kdKTQXvgL6wnm/NMWYDwA2t3/VhUaiSNFk0jim6ugR96Z1Zw4hDICTSBmCBLlIzQFVRChOoxmr++1EJBzSSDKIeCn3XDa2sb6ojA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726847754; c=relaxed/simple;
	bh=czjIspWwEUgy7T7DLVrYEWd8HfGNBM1vJuUk6q/J3ks=;
	h=To:Subject:From:Message-Id:Date; b=rU0fyCe77IsBUFzix7bNzkAAgBccjyvR5WMr37u6ge6wb+y9qHhz0FlJ8KmxWvD5YgXv/1hxHqaKNggLRKpdKFDnBw2McD4HKhdAFL07lGrxJ7YY5VxlNEuMJTvOkgyNnsLLELgC12HhNRMG8XFvdRxsG7aurZLp4VUMhRFS8ro=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nKaoGuTS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nKaoGuTS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5514C4CEC3
	for <ddprobe@lists.linux.dev>; Fri, 20 Sep 2024 15:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726847753;
	bh=czjIspWwEUgy7T7DLVrYEWd8HfGNBM1vJuUk6q/J3ks=;
	h=To:Subject:From:Date:From;
	b=nKaoGuTSpnVNkEy7vYy6Vsx2J8ps7iB5yixzw+fCYlZYIG70XVik7yvJgwSbv/fc+
	 k5tOJAzNukgYsquVRhzHKn1Nzk8W7kjEmRaYxc9WV/YI8620hBy4OvMn4CERoL3CTo
	 tZOR6Hn1Y3dUo8PrgyTLI9K2odJwO9H/Js0JDytpoJ9Fp2cPkUiRYK471Fg4XxgBgo
	 MpvnTMA7n6fzkLA5+4XAooQM3l5LpPSfYnBZ27J2PFO//IwOsKf/KWL3ulsJk0eFEs
	 e5shzF8St4GdfVTYZ8k2ZAyJ3fbkBnHYm8+dFKnj0FknzPvC1X3vdMW1O1wH88Mlr9
	 baOtzs8lnKaiw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 915AFCF9C58
	for <ddprobe@lists.linux.dev>; Fri, 20 Sep 2024 15:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172684775358.7151.3038983386451199270.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3ffa18757ec263089455e891d79fa53fe17a0cc4089238961993d396d839e180
Date: Fri, 20 Sep 2024 15:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726847753
