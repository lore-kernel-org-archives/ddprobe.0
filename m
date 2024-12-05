Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A15284A22
	for <ddprobe@lists.linux.dev>; Thu,  5 Dec 2024 06:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733378754; cv=none; b=Ck8HOotKtQtp7Gs5UOB2aby3Qow29zlp0IS8kBVToR5YQhbePttC2+PPnVkVNlcCDKTfjj3cSjwrXRJYSSXcdErcao5pIvNVkuyOGAT60z/AtX3UZOogBlpnhPTPr7920PWOLHMzO0kx7j7W4eCj8UmF9fokzf+5Zr816vrzKF8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733378754; c=relaxed/simple;
	bh=Y0E8+s2qaWEeV5VcYHVj1PH5pUq2xsyXBcAawqTDhtA=;
	h=To:Subject:From:Message-Id:Date; b=LxF/qSZJRqFf5+VjVtH8l3RVcrrBIaRVileFglHEwAVSidXSELwoD4yE6jNas6GrqGLtpJW12SzOCmeqqg0ZqV9xJTB/3VZC9eYfXqMil1dggW3ki/5VaFvcMFuHbo21XAdtOYiHYv5O6uZj/BJLIgcYcFMiny/9gJWJWTTlkU0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dUAk9eNz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dUAk9eNz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE67BC4CED1
	for <ddprobe@lists.linux.dev>; Thu,  5 Dec 2024 06:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733378753;
	bh=Y0E8+s2qaWEeV5VcYHVj1PH5pUq2xsyXBcAawqTDhtA=;
	h=To:Subject:From:Date:From;
	b=dUAk9eNzlWV+XUThVlEp9I+wZaF4BHN6WKI+RMsoiJpzEE5gr2gS+B/2tC5Vsa57x
	 R32d91kFbIwpb+1Nx/yrHfzPTahFm0bkhhqDC23o6t66AV4WEjJwb7JM1mp5apEoJa
	 IZWKPn0hAL0KZkw5ufjoCK3NQrWn5N+7komXOiqU9RpbhpB8JXpjA9V40+QgD8u+mu
	 xG9TwgZ0c6krJPWIif4IjCxgmwseumSbyR1TUgbm+Fn2IIK+PQWLnadkf46VzR8Ntl
	 yNm1fmwEZr6JnQcZaLhnkTvGHq4PI5aSfnFtSsx9xioWBw1onhISnOaQNU/9+0AzrZ
	 mb3wuIc94Flug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95ABBE7716C
	for <ddprobe@lists.linux.dev>; Thu,  5 Dec 2024 06:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173337875360.23685.12257863144535157502.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0c59edc8e9d73234aac0198313fa2a82cacd034d7f16f4c101541659134d06c1
Date: Thu, 05 Dec 2024 06:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733378753
