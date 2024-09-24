Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 272FE82488
	for <ddprobe@lists.linux.dev>; Tue, 24 Sep 2024 21:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727214354; cv=none; b=Xp3ot4fU9ywGGp6c9wkqx3XLXA/hrctnF15ZX3HP+r3Q31HjXEGdyqJpGA0nbW/2QtHG99LwJXXc/Z7R7qg8gNxMiqv4NZmbG63cVSMX/4So9IWGoGbaCfvQXvdYYxm4iyq4xNdLuoQwA7NkNVD+zREIW34x8rE/XHVJywrPUNI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727214354; c=relaxed/simple;
	bh=H41SaU6Ll85ZU0GgFr+Dd78PPvvH9kt1+ZqoIkaodyg=;
	h=To:Subject:From:Message-Id:Date; b=Xr/RI2MCV8oQFEXIGwaiV3qntjyoFrp/xjfuj5u7aNuCkk0tarmwvIHyePd6c2vChB8OEeae6iBzwS0DVFbktVIEMRQQuWbLbz2JIpuhhkDwoz+1ZleagtXwd0e2sK0M9JkSNu/TypsSqwpbrkxAEHpkVYTqgBAeijxzDNMaLEo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gyyzFKjd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gyyzFKjd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB7C5C4CEC4
	for <ddprobe@lists.linux.dev>; Tue, 24 Sep 2024 21:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727214353;
	bh=H41SaU6Ll85ZU0GgFr+Dd78PPvvH9kt1+ZqoIkaodyg=;
	h=To:Subject:From:Date:From;
	b=gyyzFKjdXvZmANRY0En1a1/FqAfKigHP7UV6RZp7B4eJC9+Spcmgl6PF/LPIz9tad
	 e4zipvW7RD4CH8CXRJb3CsITtnhNi0jM9W2LpexqlR9L8Nnyxvh6KHNToMpGu7ZCgU
	 1pMby7ib5MhWsJ2d3/AVnZ4UqVsaDwkQC0DHRLo1m1nf86ORmidx2vnSRgmcCKqxKp
	 wU9MDSrPPvYEUIBTm7PyAa0/e9r97FyWrt6a9ECrqf4QNRGRXEG3gKrc3O76+4vz6k
	 VQz754LjKm0wgv4j9lfa8nZsdLDPY5QvGe8mg4w4xnQKEyr3GF7at9xcNQ+yEDF6SY
	 Ms7KTcvVXUuCQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96419CF9C69
	for <ddprobe@lists.linux.dev>; Tue, 24 Sep 2024 21:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172721435359.11298.17807000021315910135.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a421eef5b86a3ea8ae4180ce5081deb856a6e08d7a81aa2adc8761802b3ce050
Date: Tue, 24 Sep 2024 21:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727214353
