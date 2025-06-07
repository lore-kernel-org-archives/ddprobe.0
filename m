Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35481210FB
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 08:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749286794; cv=none; b=Bxtx15xDIjOULQQGlM8DtlKOQCSMhDbMDCIDMWILn0iuOmDQdCcz6kl8h7Qb7jA9Rqccl+Xk794A8jFQqU/L09DmLdVlMjIsDvDA5qeJwMa3s6jCF3l6mC0uK2z2/U0PFwqXIdIbZEELkB6MyPrzrAe6hkMPHODEcoC1uM9pI7c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749286794; c=relaxed/simple;
	bh=njGO3ta/7fD8SEawWzEeF4VHzKAkdbSb0SOXogGSDWc=;
	h=To:Subject:From:Message-Id:Date; b=V4rbIHINCf79ZQ5doTJRfE6nyZPwgoZgSu7eBxpaPx69Bnwto0twEsipLUd111/RlmsLOvmhKBv5Ji08TepYEIM90kcEGq1HOMBBR8+IZWmM3wABm/V2GpPcKeNLSoK+H9mOLCfjpUAcBrsaSXaJsHH19DIwWGYZ7/Q0tN8jxPg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pOIocbOA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pOIocbOA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8079C4CEE4
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 08:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749286793;
	bh=njGO3ta/7fD8SEawWzEeF4VHzKAkdbSb0SOXogGSDWc=;
	h=To:Subject:From:Date:From;
	b=pOIocbOADPOFf673uivQzjt1m2OoXQbgobXxnp45Nc1EESM6DvfUlRZn0sI40D/CW
	 4Y2dwMMV73WRUgFVlxmAxkuti82+t21ZHZifZsCPJXdOesA16YnwXbPIPhfJbGV6TS
	 W54mMTpmrTdmMNXQ8oK4AUn81IR1BLRDFsqbUZLyIgSj4vSWvz3Ve3qphPkHbniB2m
	 iKOlT2KqhVAGSv3ARqEF5EsiTImWabSa2bbylRS3xC9abpTpni5MiTAm/sJhnSFWAE
	 HnXETKeKFxIuT3elJzC/1BZup2t7fIT8Tj1L9pmuk4GTznbZH6EJctuaRkVT8uakkt
	 J6EIOEfCKwU+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93181C5B543
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 08:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174928679358.29682.4495196889815540307.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0a8a597d889f7e60fca6a8af2351b55fce89d1738b7af20003aac14a55e084ae
Date: Sat, 07 Jun 2025 08:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749286793
