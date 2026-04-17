Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B20E1FECCD
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 05:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776405454; cv=none; b=Yx58EANiRqLHunJ5F9JlYpDv4vpgzX7s8nc+9TP+72gvF+ZiU4T6DrZzKFYFwk+YpgzLL32S/HPGv6ruXTCQvDW4k2xyOgPZ8mEdGYcmSC2Kw8vKwXwF4zzlwnwIYB1xpIIxAZrz29KJX46wgsKJmuSNq0kHHF1fwYLpBU+YPTE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776405454; c=relaxed/simple;
	bh=z4gH2wA8dRLLgv3R+1tH+y/VeVPxnJL4njpKKJX/VE8=;
	h=To:Subject:From:Message-Id:Date; b=Z0KtC0JDIgxUJ0ZC64P2I11pKqneZcVrP9buY2t7lyUd+OUjzSH71nh9DpT2Io4/E+H5DUb9QqNhqwdnC6O2FdtlOfF7A/L/Y+F9vRj3L+Ev4tqpoCLiFRVTH1zT2zIFaFsWK/6sGsWKUuoNvzXYnWpt1OD8KmPY5SkUZkBlzBE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nSNw2CIm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nSNw2CIm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD03DC19425
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 05:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776405453;
	bh=z4gH2wA8dRLLgv3R+1tH+y/VeVPxnJL4njpKKJX/VE8=;
	h=To:Subject:From:Date:From;
	b=nSNw2CImCejTi6WVhvtrxMvYBn2FWMXZuHODw9op/HU+xeD+BbYCCGUqJYxM/GRvG
	 6S5kcixhnoPT/Tjwt/Gj1xwFl7SIxmW0scm37E/VHOPyojmGpnxc7v/wvs+zwZieJC
	 Yj2TRF7gAF0XTzuxm3FxArvfSG0iMOq7nfYDOOdnxTIn3eD/bDqmxBDRA+umycia7k
	 G3Hcicm73e15Mg84mArJ7DneZ56GpFN2idCBIQHcAzD+dh+i0Oc/1hQWXzDdy48snS
	 komAvLODBQGsHwSa5qg3KQzKXQlEORLQDDn4wnCR7I1HAQbAiAW3STP04d1B7fuHXO
	 Sw9zWthXys0+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD35BF8E4AB
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 05:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177640545369.3851.3149601812643384367.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f1e519cff8346a69a9ad946b23b142d6c680255a28951bae298173114766b8eb
Date: Fri, 17 Apr 2026 05:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776405453
