Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16CF8189522
	for <ddprobe@lists.linux.dev>; Thu,  5 Sep 2024 05:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725515754; cv=none; b=MhPMtaPfjKvMr24um+A/E76YqShlWR1MaRqpXaGSqQ+42eZ769VsBKcwOaYoDtqxZqBMw7gxGB22oC85L9Sp4AbPmTFwgdMRt27YQWXbxkxHWkHS5DAo56U8aq+wvaONi2c6tXxXhaWvV/sgqMpILSsya4BeEQUsitUuqAMhqN0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725515754; c=relaxed/simple;
	bh=//AueEB29ah4nYzCh93QhRL2FP3Ta+Y41Ufv+Ii2tHM=;
	h=To:Subject:From:Message-Id:Date; b=UDze48kSzdwMwFnEKAeuLTg82OMEAs4j+P/GVISYB6NxoA3uRPpmAzzHqMu2gfMVRZBN81JbasXIhrzbaP5fRZTd65P3jlNy/ky8sVqT8arzCaQq0mCLFlFc/YfG0nbI3vFU92A69Ooqo7DO8SXwTuCE0LpZ0JwXfO11dpDJmMA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fovPDeCy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fovPDeCy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0CCBC4CEC5
	for <ddprobe@lists.linux.dev>; Thu,  5 Sep 2024 05:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725515753;
	bh=//AueEB29ah4nYzCh93QhRL2FP3Ta+Y41Ufv+Ii2tHM=;
	h=To:Subject:From:Date:From;
	b=fovPDeCyTd/OiHEZVrv39Bbo9L4jFILJ+BcMg1NDYnv6fqf8nCG4Q+OLgyu7E4D96
	 /koShhIl2mTPe0aScQNVz3rmeBwSGGLVBzc8xucdm7fRCeR+Xh53zlIwfMTr9nrovs
	 IAIzC/O38hZABCEszRfbdFrq8hNKIiApwipOfi71+HugH0w+tq3r1HWr/YHXfgZUzS
	 F9gWRxSufadGBaP2YVmTNCxHsfeZhnwf2KTeKVCSeN/qt7oXtaEZ9ELCdmDjYZ4NLn
	 Cwv0CdPhqxH7237Ley6k6lNQRzsz9ZIDHZN1sHwxK57+M4aUQ3QOGR4xhremUuxfMr
	 1A6mEHYqkqG/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9421BCD4F54
	for <ddprobe@lists.linux.dev>; Thu,  5 Sep 2024 05:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172551575359.17436.10110440087854180416.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 21d620ce7416772a119685b5b3cd487da5c2bd2eaceb4a30b0dadcf3ba8b6d6a
Date: Thu, 05 Sep 2024 05:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725515753
