Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A36A1CAA68
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 00:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782434255; cv=none; b=M4VCvabfQnrhwhp9uNeIsD91nWFtjCq1qZukUwFGT4Mp3BHTM3Wp+35xBBSwc69epT5k4P7IyxTdcJhxUfoCTcIbASjqu6ib6s5il2JM4rdREz762DH4O9N9y1l3NTfsGHcG89SlHRGz1s4K50lF4FKfSDnSGda3x0bfHiUhifY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782434255; c=relaxed/simple;
	bh=1cyzinG7dyikNEbbrJbG7eKCoUGPx6jDxENajmmErlk=;
	h=To:Subject:From:Message-Id:Date; b=BTMaArWkFOiinTWRBa81OMrTzvNWrhm9vDqCfDxR0YJPC/qU1x+rQj5vN9DmY1TAVSfUKXrpo1VfetwtnEP/mSwbvrt7HKK7p68FxRLDDdCITFyvg6AzPBUF6J9W+XnVV3zU9JACRUxteQgcnt3j+2KR3WwD4TMk8flqFNTGi6Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Gt/kMDmK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Gt/kMDmK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C99ABC2BCB3
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 00:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782434253;
	bh=1cyzinG7dyikNEbbrJbG7eKCoUGPx6jDxENajmmErlk=;
	h=To:Subject:From:Date:From;
	b=Gt/kMDmKGyn0bwinHsTjqy4eseXnVTVqT9zEyrXNE10gANmFwmQvDpwfM09+0Yjlk
	 j0AR1A/3CKcosw4szMbzmkq7pezATX2cNs4ZBNBFp5j5VdCebhtsCd3MTQhnFo5tm0
	 2Hks0W0QUXGptaKwDxIAc6Ld3dK/vVwmdjDNNNwQY6CBD8zdXMkh5vvP92/SdrQvpw
	 x/8UUgYg4OZZnZ3ERSlkIv+R2CAd2EvSAJa2tDPayZN4SonxXtTotqbaTJmkIuubZ3
	 AFHD/Xa2nXJuu8gY3EIhgilcy5kbAjvB7zucOh8i/u2M2gmoYeM75k/9zBPut9G/ig
	 w80C/0zceIATw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B02E8CDE008
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 00:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178243425369.21936.8889158124309262500.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c7a1550e0a15b513a307c19879b94737daed3cee50ea8e593745673adc982c2e
Date: Fri, 26 Jun 2026 00:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782434253
