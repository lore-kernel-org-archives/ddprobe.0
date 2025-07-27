Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 274C9EEC0
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 00:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753575595; cv=none; b=om0yaskHHM0sl1Ep0fCTIlqnpH4vkmHbL2aiMC1z87hqTN5ihI98KVgQMlySbg7IEuZP6i+rpD+ODo+dnvK9YcxafuA0rn31PeS4T4Dg9lwzGBem0Upx/SZuJPhoZ9PP+aAjYdpSRzzIRnsBw8og9HiCze0yvKZsi3Fyh4hzw0M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753575595; c=relaxed/simple;
	bh=USDC8N27o6J/tpT96GfGI5F1jJpd2uX1jwnWJaUobPI=;
	h=To:Subject:From:Message-Id:Date; b=V0aDWtJ6e8C/Nf8tDdoR/XR5IsUlYRaWlyNrh4RVxJr7XyAM1L0hdgTfiWAUoBINNU7DVK5xzIzdFbrHkyBE9qZNNtHw3eFy703YDDgVfMEpTSQraBKDRSZgLF6GGKKIkaJIs2h+H0SpP7QP3S8Vtyn+2QN2RAOouzZJVjgF5sk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PguvgSYo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PguvgSYo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3AEDC4CEED
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 00:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753575593;
	bh=USDC8N27o6J/tpT96GfGI5F1jJpd2uX1jwnWJaUobPI=;
	h=To:Subject:From:Date:From;
	b=PguvgSYoLmLPrf86hChMxAtRcn+2ApAydEaYTR/pqT2MDXNXrUqOWLTryZx+br8zL
	 3by41D77mAY4DuU5hnH300+Pe0W+HlCZySLCGS1IrMQwqr9csmBheL9q8rx6UgtDg6
	 8ndFVaeecWNuqxlZ5Rw8gi4+OyijEnxsZFHqyqmW+SWMjOWQtRNkuBEOcxzxLTTtQh
	 25spHBUfmruV8yaLYu2kHOGjUvwDXdQNdcHwmv8Kdf1pKoBo4u/D5u53PEDlNZf75t
	 tIgsTHzQQcqoN335OZqEwY4yHN5aQlnGaZ7wWefrOEKf0kncqLzkP93hZ9v75Gxh09
	 YIkN+Vibmn9pw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 927DCC83F17
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 00:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175357559358.1390.15020355356007400510.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 70fe71106573c5fa6de0a7ecdb04b1c7048d3cb0c3c6bc2c2abfd935804d3700
Date: Sun, 27 Jul 2025 00:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753575593
