Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 510023A963E
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 23:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787786434; cv=none; b=FScml2MCXtRFTXyRdiJkTpv05648eFUTWhEvoa5qRAC2UWI0Rl3QfntZ8/ELAeLwuxVvWlUX8fXrgo3aC9j4tA/5QQW1+YoD5IpO5jIK85SzN5yXla5OxPbcXdr/Pyzs72AqusSaFQctZGDV1GA/IGO72C58Qf/Y1F6whmCY7g0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787786434; c=relaxed/simple;
	bh=fcl4IGv2gQHyIFnkpobSlQDRP893M6vlkS3sUcgwUOw=;
	h=To:Subject:From:Message-Id:Date; b=g1Ceo4Dzo2znRpBLyQsm3+WvvKocA3K2L8lqc8d4UamHtBRwfShwB3igBhU5X9rwnMuF+SxY6M0a92yAj69kEzrbOWFFwNRsFdQc50HT+6eEZTnACf98W1O2DfUt35aLdo1ODCjP18Jq8LDcoE7PUJnSqe0TlpFYJocLu/WqpBc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z92wYOXX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z92wYOXX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD94DC2BCB9
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 23:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787786433;
	bh=fcl4IGv2gQHyIFnkpobSlQDRP893M6vlkS3sUcgwUOw=;
	h=To:Subject:From:Date:From;
	b=Z92wYOXXyD8EdpDxiCDF21xcRR6OGR9jQvhN6jUl1RuCorpSuhNT3yARuE8I351or
	 Z6rDwafhKh25pmkncovSxHC+0UoHTdBBUw+ZRCAmHx7B44qOtXMbdzyITzLWaAbLCR
	 FYXtXufvLMzS2nU9g7gtdUMJyxioaMgUBGXomDXfAKBT5DoKJ2S11DXCBWCvPFvLmO
	 D44pN7PVe9Gqhpzw46tDNh/NuIFWnEATM4+6kAavmUVSQgpiz8bp93XVdLGzN45gQa
	 eRWfbrXfCSTuav0M2o4daLuIN1Nxa02oUwRiIwt3K106KB3YqphCBdOG1dTqmRnYnO
	 tQ1eabVaHf08A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA50AC61DBE
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 23:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178778643368.29019.4758088996625935030.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: de840a979541d6f1dba1a6b62de61d923fe25183a35d0151f20a1477e37bffd2
Date: Wed, 26 Aug 2026 23:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787786433
