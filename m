Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25FF13CBE74
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 07:42:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779781354; cv=none; b=DFCAHrqLdtrrIqtNmqWtSBCEyX+clGKxbeRBEq+RDOFNJDhHnY+fEdspkKeqGhieLuTwwud7O6s4yDsP6C8KJ3BZMuJPzi91A3ZBwK8OHdLrOlt+yiGANnvI0IK3fD/yRikFajwcelJM2MAxUei5XlmKC9OLzSl6UFKmpMX9/oY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779781354; c=relaxed/simple;
	bh=0dWelj89WEyOuW91XlNuSrNu3LMz6YGqYCw8wZegRL0=;
	h=To:Subject:From:Message-Id:Date; b=cS+zxhNajyZdkMuMxt5rtzJsUrUD1r8zWR4z04U+QpPAFPUFyOfpyodl1JnD5pEfchqcFQ5YwkNw4mK0hsq3hJvKmFL98YQt4QTjgvkrp3DfWFqx/kB7RvV8Y0PoeWyZYcQo1FtAoJSVBEqVyScmj5Ujzx6/+gW8EBUP/ud6dqc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=H2ccSokO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H2ccSokO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3AD5C2BCB3
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 07:42:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779781353;
	bh=0dWelj89WEyOuW91XlNuSrNu3LMz6YGqYCw8wZegRL0=;
	h=To:Subject:From:Date:From;
	b=H2ccSokO+VvGPxdYn1uGuFfA/Ql6Vy9N+UZOA5AoKijFVdyPy+h7GK84A3HwVDKyd
	 LPXCSmEFoedRY5EgBS1lDInNbGjW+DBd/iWBX9HjHv9q1UVDy0YbmXCdlajdZo7uzJ
	 qTxloXqePgyfQqIf0uIPsvzDFg4NnPMuDt6YEGg6XzurCsakZoP9g2NPZeTiTpZDDc
	 +1o4iShFIHlTBZE31jcdc57hkMVjx3WLIhI9ldqTtE1IJDykF8c2pC026YJPZ9B9Iv
	 cX0rX9/YhESYQrFhJSuBUmUA2CYRQ/zxcH1R1mEHcelUSg4Gf9eXUbKq+M1BiPAWGX
	 VYhVFB3bThHfw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8BFBCD5BB4
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 07:42:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177978135368.32016.2385906044458920991.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8adc9bd99ae56dce9d6874703d71f22f9c3554a4a19531b7fce85ee4dd431a55
Date: Tue, 26 May 2026 07:42:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779781353
