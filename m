Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25B6F9474
	for <ddprobe@lists.linux.dev>; Sat,  2 Nov 2024 19:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730574954; cv=none; b=Nbd8BGRo79FFqCJLKLQb5mY/sfmT9pwFHA3x5InH/FPe/EvEorZCKl0jl3YqZwgvGlIDpnVC4K3q/w8bmHMa1Z2VI5YxGdvQ9DA7AQl7CJ4NHje9EF8SL7q+ezCXwDrc+OyPh0PztMG6D274CdZ9JkmFMzRwJPkcusGzCTBWWYQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730574954; c=relaxed/simple;
	bh=APUkBBP5SXzNs1ul4SeAa5/zz+bQDJW1Y4fQS3swl1U=;
	h=To:Subject:From:Message-Id:Date; b=rDpnEAUEvWBSICkv9AYmUuJc31JFNmbo3XdlHYBY/Pag0/ehhlnKIeKdbiRvDYfFYSNF5T5cjA83ehEtDAcQo+Qe9OZ4mk1Xe0UsgjBxGUPYRjBzDrq8uBrSwGfsxhYN9PIRQ48lIZLMe5VZLXYRxDD3qfvoUctNN9om83Qp+ak=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Etwi3t8A; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Etwi3t8A"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB2ACC4CEC3
	for <ddprobe@lists.linux.dev>; Sat,  2 Nov 2024 19:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730574953;
	bh=APUkBBP5SXzNs1ul4SeAa5/zz+bQDJW1Y4fQS3swl1U=;
	h=To:Subject:From:Date:From;
	b=Etwi3t8A7HvtvbsOrFCyDT02raeDWjuSINi3TUAFbUE9jft1YBBcN1wNf1KlMV+2d
	 SUIclMf8gJtB13iKa4FS/4NNbZMKGf/MAx7u/O8hYDlz+s/yCVPiqYa4DCdtpWj+jS
	 udglSJiqeuaf1Lbsv7HzIl+otpgH40EjBVFGLDnagcRVNAlqswQGVJwKVB4Y9SYF2m
	 Tt6yd7701xedrPTl2chjnuZkPbuX1yQxaRmop8rPcPq/h1UlFyXmMWEtlU51u+P9ax
	 ecIK6FPX5wG/wGxUtFRWTV3VfoxzHUb1jHtX1IDj1aj8Ut9UAYq24rfV4KlaFxQv3B
	 +XmJFFUHG2zDg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2570E677E8
	for <ddprobe@lists.linux.dev>; Sat,  2 Nov 2024 19:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173057495362.16724.914962809383789684.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0430461c683a27e5f4326050d7c5d9a23107ad3cffaa1d090275ecb6b8be9a11
Date: Sat, 02 Nov 2024 19:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730574953
