Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56A5E15ADBC
	for <ddprobe@lists.linux.dev>; Fri, 12 Jul 2024 10:28:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720780103; cv=none; b=WUHCdM6zKC+UH38INZ9Vs4E1muFvQJ7iwIKwe6LNJLN7MAIV2+inatxgAjZQczHoPGALIbiihPy7idOEkSARZVtUlRMJMAoRQVXQNT9qaOg/iSFaXAv2wS9IcE+z8Y253dL0k13wBroIZ51Lrrs1o/UzHhOLO6S5xDxE040RH68=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720780103; c=relaxed/simple;
	bh=e+mrxqhTITjxvKmZkfkR3N7/1uFb0S3u+OIHjczOvSs=;
	h=To:Subject:From:Message-Id:Date; b=P5pHHTQj8y+DDvx9ZZo+mnWbnNx1wp6i4V9BP8E6cGTI0x4Lif25O9KvqTiJrfx/RG9XqWyV2LVMGDJrK1KBNiaMFOli4B5jcbzWQ5wopfDUAu06J8vDEEj09TKpoBdJA9i+1VvQQGtxv57rrNDvO+IjjmCRbZNtjgbuZIiKmGI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C4bN3Ahy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C4bN3Ahy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DFD42C32786
	for <ddprobe@lists.linux.dev>; Fri, 12 Jul 2024 10:28:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720780102;
	bh=e+mrxqhTITjxvKmZkfkR3N7/1uFb0S3u+OIHjczOvSs=;
	h=To:Subject:From:Date:From;
	b=C4bN3Ahyo6O16a44KHui/AIJU0fxnZA/SZHhXcb2dVv0encmjzxhx+IK8IGhMl5Bn
	 erO16CfpGf0OZm6RNmUIEmAGTrPOwzZAL7f2Dt6RiU2Nfj/4ZK2cjbzX4SEdMtcLZ7
	 dcmQyHSYvOOFGa50g/vqGEp/oasiN5ph8Vv9+Bajvprpyx4S0t7l5EqzphIApFdKkF
	 RPdIo/5qokRjgLEvUfEkG7Bw7x6tbaZivF6Ug10l83H4QuZlN8CcrD9DGt9TNB7z/o
	 zOJvMOoONdmRmA+Q2Bs88NPozHU/N91sBTYBZRdvpIL6nvNd4UifgmteNG4XXUOIXc
	 VdEHL5ss/lR1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CA0C0C2BD09
	for <ddprobe@lists.linux.dev>; Fri, 12 Jul 2024 10:28:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172078010281.14935.2369974468564042784.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7ce6a24d7716504dae69d40845e86f2fe1f73e54de9f243398bb2e3f444f0d55
Date: Fri, 12 Jul 2024 10:28:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720780102
