Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2413441C94
	for <ddprobe@lists.linux.dev>; Thu, 28 Nov 2024 06:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732775754; cv=none; b=QbsMQmKcQkC98BBJ+sPdpBTT+wwSDBImf3VwbQ5ICdslkey76IFvrO4LQf0NEsBCAvMdcPSsq66BhPScAlwoWAXtXlR9RzVYE2HusoEmTUMKiZw6XguyWhL6lmknCq8Pva3VEV/qbnu/El1UuxAnF6M5JDEQIQcT6URCgdDtPDg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732775754; c=relaxed/simple;
	bh=CZbLNcgXaNjWCWl4Lhp9n4skN4Y5gw+XUdZ8VPWIQV8=;
	h=To:Subject:From:Message-Id:Date; b=XgT22/Fg/v6hSvS4z6WhWAc50xZIbGFRzv2PY0jth0+pSdp159eQVs5w4kwCppOmWYHxjQxHZku7Tn8E1rGRwEjx3hhub+OSbakewmhfhXPqeIv7WjOrwLJfz2YO10wm6uDTn3JwGEOAm1xoTC/9Xuujr2fqC4WS6uT6OKqNEVA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dGdLhgIj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dGdLhgIj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9F16C4CED3
	for <ddprobe@lists.linux.dev>; Thu, 28 Nov 2024 06:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732775753;
	bh=CZbLNcgXaNjWCWl4Lhp9n4skN4Y5gw+XUdZ8VPWIQV8=;
	h=To:Subject:From:Date:From;
	b=dGdLhgIjDr/N4NLK7dvVa97TZghcWRqAoP2Zf4/2b1Z3Ys3G5H8tEPZ723i8rtPzX
	 hLBPU9huVItBS9ulBNlBd1MDtlzAd7dWIIB3+HejQkAQtPHmV7pZHT2Jf6oyAZ4iMU
	 MYUfh3gUljt47TCFufGaB5hv9U317I0EcvtxjL2b8qInRxVZJT+SwjCrBYzn/3Lw39
	 7itC4ElLRRba5sP+/FkKl9OpL5GcAl66+OpvQSDC80+a99evG3uPkig+bOGhYyXQVH
	 LiBDbLMW+S0TRY/jVznFOJUMS6OAt/Pk2S0uxC2GW7zeh7WhO9tGzuifyuaNnwYCXY
	 FSua9kz+zYocg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97921D66BAD
	for <ddprobe@lists.linux.dev>; Thu, 28 Nov 2024 06:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173277575361.1093.2305631803664579913.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7c7224d2ea4b8097f9420362b2ff5a461272f08a9e2527a3e4503c069b64b0a9
Date: Thu, 28 Nov 2024 06:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732775753
