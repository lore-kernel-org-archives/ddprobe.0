Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60E7418AEA
	for <ddprobe@lists.linux.dev>; Sat, 29 Jun 2024 03:24:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719631463; cv=none; b=gYc9kDNVXCLe2ogOJWyiqOJUjssw1BpcSlr6bDyHyPRNtJm3T2SrNtikJ5aVaNBUsY5R2gY67eileIfKWx2fjd6/YS1kVOX5e6sSufdRp82ykzgQEkIQ1mLHE7BAx5aMA4YLoWr0pYBrHjfUTTM65Pf75bM+qB4J2ATuAvVmysM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719631463; c=relaxed/simple;
	bh=K5hvPiY95HSDDdCRVmveNeOMd5nJ2MtNKavDg3kSwX0=;
	h=To:Subject:From:Message-Id:Date; b=ULD7q8uoNPUFZYTlNgjzJ8ptCqQE0ABSj2jpGVQZo9b/BldhAejdJVRZIyGqRSuDZV6CsqenWgkdpUrvHddoEh/oubid7qHzFLUtv28wZuBOU1E/4R84UtUwsIWvwbknaV+o6yc0KTycQTHdPua8HNYUBGR2bQiEgbb0Jf/skcI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XfosDK5s; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XfosDK5s"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE150C116B1
	for <ddprobe@lists.linux.dev>; Sat, 29 Jun 2024 03:24:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719631462;
	bh=K5hvPiY95HSDDdCRVmveNeOMd5nJ2MtNKavDg3kSwX0=;
	h=To:Subject:From:Date:From;
	b=XfosDK5sM0oQrtHxGO5KtvtUIYXDZI1LyOyQhfsX3X50K4hkI6yNAXaP5tVhz3Ge3
	 ZOnpYK5zvdU6aRT7eMKw/pjM95mpcoA021NSN9djfq7o85Eb22DB+VL8OXnIwJk1O2
	 FDhcVg+pHok3X4/rzZnlVinNGCa74XOj2utZKFdcbtStKSA4UZJNxMSMn1Oj0xkWVB
	 79fHmy+RN3fppT1mxZsc3ymfZ/K7TG5DUFt/pQRgvKeYnG71eLOEIOqwnheR1D4AxT
	 qhq/ExRXJ1D0uEt0b9EFsXVMRuW4T69gBkERzYNTpmz5MmHEcIuRn6MnWcfAHSDFdW
	 1nx5aOpe/0koQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C8692C27C4F
	for <ddprobe@lists.linux.dev>; Sat, 29 Jun 2024 03:24:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171963146277.11134.331493154836408520.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d948437579b860baa3942047643061bb2aec1fb5aeeb49d6cd8627b27168c990
Date: Sat, 29 Jun 2024 03:24:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719631462
