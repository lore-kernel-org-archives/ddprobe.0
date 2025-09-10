Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19EB431D39F
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 05:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757481594; cv=none; b=m/SszarloygrlHWr3japK6WG2HusFDZHvRmvATNSKGTavWKk8IrsbFCo1IC2ngvv5BqAqH9mr5UmfMM6NQnXH9BUuSgxZF2LyYN29MB7ntm1F8nBMuxlsEVUYpDd0PcVbyRKRCjhiunrltaOUgVsc1UEXVPci+mZTUWvLXwBaNk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757481594; c=relaxed/simple;
	bh=WbC/QnU5IuLoYTIWys/Q/06XsCMKMCZJZtje1MlnfzM=;
	h=To:Subject:From:Message-Id:Date; b=dfZX5ONUgePre2zYh5hqu3Xy0Chja0xeOufBlBehoutOfLO1m5bKOVnY8FK5IkvRiabE4k8FQ8mzCqKtvBCC8cjoGwRDCmCFytQ1uAA42S2Da30HKPizg65ZTZ3+iNRuCzs1LNMx86VhTvVQIZ3/bHb1rJwQbQNedwnMGkFr6FU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m2fmzpsU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m2fmzpsU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 99867C4CEF0
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 05:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757481593;
	bh=WbC/QnU5IuLoYTIWys/Q/06XsCMKMCZJZtje1MlnfzM=;
	h=To:Subject:From:Date:From;
	b=m2fmzpsUMn+mwW3DLSRNeZIEzq3QUbMF7uS4shs96qRMvlkpIUCxDOjnmhA8LKeGy
	 xBYbFckISJVfs/RathwnbfLmQXCZ6QuGvFYyFgld7lokUSBbgS3htPbPkc6qjUO3GX
	 U92IBWGNJxvr9T+E9i+Fn5EkvhdppSk3t3+Gx9PyRfZBDDFwxmD2VXOKCkmc3oxU12
	 IPcmp8+HwgyAo4QDbutbTKiTmZjEAyKapT2wy/6c30HD3slh0gVIlzk1BsAzH2Rqcm
	 nWgFtlp8rFJvoN7sLtrwaCCnty8Ib2zq/4xw5XHhvECvzGHGC0y5Uopk+H3DoO1Y9l
	 NNscGqEh1HoEQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F7B0CA101F
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 05:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175748159357.2720.3681843810702514851.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a2c24f82fd4cabdd330a6ab04fd7819161757188b8c24d20f418df88ab3fdd86
Date: Wed, 10 Sep 2025 05:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757481593
