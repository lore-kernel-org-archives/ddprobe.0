Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10BB723816C
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 12:21:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763814114; cv=none; b=PEOJ9uI2ruiWjsQzhFEv/T4AEpKVM5rP6gsnY2hhcxLrqIIfDnfbwh615/37z7QORB5kLXEjUH2EfsTpePyer3VnHusWzldFD60+auoEGxb8bQn1SOzMCIALgkI8EyT9CkUWj8LV3SNAnmCSIo++u49U+zA2kCPdrfDJ2vawjmw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763814114; c=relaxed/simple;
	bh=682vPazNYb0Gz5rWa7sl5N1Z+i7e2/Cvt73me9kot1o=;
	h=To:Subject:From:Message-Id:Date; b=l88s96DId0irKFJWGm0JCNdAU3l0NTcRxNYRRBD1DmKXW/q/oA3MLwkAEPYYimzq8zteYLcQXLa3a89czbIbjngm2VnOhik4VUfBfJPy1lHkW9SXFhhk6e9rH26OZpBoeXsag85mILMo9NVU98/2eBo+zXMCrXWO6tMTz6WEJ38=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MOLo38XX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MOLo38XX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A30B0C4CEF5
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 12:21:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763814113;
	bh=682vPazNYb0Gz5rWa7sl5N1Z+i7e2/Cvt73me9kot1o=;
	h=To:Subject:From:Date:From;
	b=MOLo38XXIuxtcIfEEDw7MNAR1+nuGwNkkFSVd3xdf37KU4eGaUQOyFHPrjJhC/3Ca
	 ios92eepzyj3+StSJ1dBrlAeajiXz5Co3RMtvlSbKTsoOKNhS+zSFT1XULa5ybT/Nr
	 btzWVSfu+RHFb7LJPWLg6kUTumb9yh2KS1Fb3qpLulK+9bE8zuIBtvF8Gos/GuB8Po
	 BaZG7PvtmeqjBzJdu8MLJjKQI6b0l8C8XJClhNLpVh7p+yqB27+FrjizbM1jRU2zu2
	 EgkFYeyjLpEmhDNSi5BLt+SF9UTb5JFqQjfccdS6uDnMC/SZ2McJdjy57tLJTSfrhj
	 CCZshtePtANMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90F4DCFC531
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 12:21:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176381411358.7754.2095653126125475552.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ff0aeabc6fe64ca707f83f454732ecdf184c2c3c816df2eccc5adb9d0cf64f16
Date: Sat, 22 Nov 2025 12:21:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763814113
