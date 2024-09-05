Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6ECB67FD
	for <ddprobe@lists.linux.dev>; Thu,  5 Sep 2024 00:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725495954; cv=none; b=m6fEeZXZHeY9lu7J8gLx62wvePAxQg4nHm1XSBa1QNl1nePj14Jvt4hTGpSiAGJBuR5zYIEnikQTIcIW06DybIpSGy9uT2BbnB73Pl3+R8oM0Kvn5f03b4whPlxq8/7AOqjWFpdCS9dP5C5EO14jLAbgJ9+qToSqQhQ2Npt1dbk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725495954; c=relaxed/simple;
	bh=Hj7p2fL6Zcymph88rpttPOSyMv5PwW3YCvZy/OWajfo=;
	h=To:Subject:From:Message-Id:Date; b=ZsSdv2RIqHY/9yUPz9xtmR2BigVvPmSrfWZNOpfSmk238XzLkwJunpDKgTYhf5BbXcqNxqD5a0fbKSXDnisYGRFisQzcponT6zcliOQ/yP3HP1UjlwpuNO8456xoLIaeULPVwu7q3Y94BWhOFxSQwmiFtrnwy/KAPaxhc/eGYHs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jpKF/0r4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jpKF/0r4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8B5BC4CEC2
	for <ddprobe@lists.linux.dev>; Thu,  5 Sep 2024 00:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725495953;
	bh=Hj7p2fL6Zcymph88rpttPOSyMv5PwW3YCvZy/OWajfo=;
	h=To:Subject:From:Date:From;
	b=jpKF/0r4nujmzJY20eoOgnaNlXEB6B9sFy6zRfZZC70fz3Jl0LTNEIxCiTsR/kg5K
	 Pyw9m+yqGiYLDYufz89aleId+j38R3ifNx9ZIUisO3rGk30IvcWRNpligrhiYDEE5c
	 aIlS/dicHC17UpUc/9Wq86O9Wafo78MlbK7alr76/TjYhYqd9S/1jPLMpe2A8v9shQ
	 8tkka9+vbpYShTZnplrlQwndpuwOJ6svAtxwTHO91MKGtVAXckPhBcyEKJR0a3eAFh
	 YBpwARBc5D+sCElaSgLGvyY2I/oWAEPMyiDjlHz4a1XuyS6NuqVqLL0y4fX8HJ/ClX
	 aXYxjBDw+wmew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B681FCD4F22
	for <ddprobe@lists.linux.dev>; Thu,  5 Sep 2024 00:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172549595367.20397.15175300218251945262.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6ad10aa0d4c5dd7f6ea0f79eeda8ac80ffb6facf0cbf07ea25e6ab6780373f9d
Date: Thu, 05 Sep 2024 00:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725495953
