Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F219A262FEC
	for <ddprobe@lists.linux.dev>; Sun, 29 Mar 2026 09:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774776294; cv=none; b=l2XaYTTyDsewpeRQYO2fiy7bwbLbH+TxPeia9SlfcNznEqLHYsbL8z9BJdpBLazyRBVc/nPeS8TI2VL6iIxZenev7n94jPvK2j2QiRSQ77akH0LyC6H0Jp2ih6tK5mP88vtVpkNYhOyw6Q/dznsGCvK41kVtQEXmmUGVLpcooNE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774776294; c=relaxed/simple;
	bh=xP+6FbtYW1LJNzRlMZFXVFnJaX7ieLAqLdowuweTWaM=;
	h=To:Subject:From:Message-Id:Date; b=OpruvK2FXGlbd7Tnm8PBw0NA8BSdW8BWqHpCsO/kA3yIUeEgR+LOo61hA3yWnVQHXr3RzcsfUD6cS9QEslGeKjnRdfBNYbBQRWeKFFCDgxV0T8W9q4NnZj7pmFPaIRImBufVS9yIRaFhLNM7zpwxBoc5xJe9AJOLI8/GE8DIcC4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g5QPm67s; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g5QPm67s"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A569CC116C6
	for <ddprobe@lists.linux.dev>; Sun, 29 Mar 2026 09:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774776293;
	bh=xP+6FbtYW1LJNzRlMZFXVFnJaX7ieLAqLdowuweTWaM=;
	h=To:Subject:From:Date:From;
	b=g5QPm67s4BGAf5ahbYHN9HukuUJ2fjj0kEDi/BCjBVXCEcclEpCWaRWIINKkeadt9
	 /OfEqcEEtYmST8zhSiZZrS+4siITl/RNzZS5xJCZErNtgMgBfV350i9DeHxYyQiyLE
	 +Qy0V7BDrrub2oG49564UUMKt8JLw7JTyAu0pPAg7aBOHqMUNvlkwIFBpBxHlcy1Tc
	 k5GrbfXnIuQGx4XcFu8MdaetJyJWSzviaeJ6HY4RO3D0NwAC5bBxSrn/igje4eJmiP
	 kpgwsB3ulsn3wTVGo8uDTXgTe+DsuTOkYlo+FDYMusimbixrgnAElgML6jLblOQvdj
	 11/ZGSVZYztKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93FCDF3D5FE
	for <ddprobe@lists.linux.dev>; Sun, 29 Mar 2026 09:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177477629358.6966.9161351791519972757.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5138ac5e95577480376c5255394f716b548af8cd319b054ad8cee3f5c73ea1dd
Date: Sun, 29 Mar 2026 09:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774776293
