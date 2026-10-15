Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7C35F224AF2
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 20:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792096834; cv=none; b=Qg7xmyquj1KUHePLl/PapDPlpcXnEj6YfomNVSBKnCP2+6LITvBYxfITXT3mPTNfeF8v4cEgI5kMFjGh34CvveiOjtvxb4wNxX8TkIWIj8xm7c2d4OHq1iRbKfUm2W83OQwPMnLeRzNT1U3ADOKJBjwwh0vEecAFWU4fi+QH6hc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792096834; c=relaxed/simple;
	bh=uvJp3BFB/k8yo4stRTa3AA6go8BOqVwjC3VbbNk+B/U=;
	h=To:Subject:From:Message-Id:Date; b=dgilMOr9UHWI4KYfPRBv8El30McMBNn53FxBaY3NmsNLnCfTxLIrWn8kkzRbOGu+m5CH0Xt1dPC4fSwXy3ut5UffANa7zKQ9z1Q9xAxtSO7Mj180DWTcr7560BaD0xv0zHcV9ZDppXyS3s+vMneIR8OSrCOjp8hbzEKW6gm3cc8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DUTBHoQd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DUTBHoQd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD716C2BCC7
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 20:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792096833;
	bh=uvJp3BFB/k8yo4stRTa3AA6go8BOqVwjC3VbbNk+B/U=;
	h=To:Subject:From:Date:From;
	b=DUTBHoQdnEiWvs1pexwd7MeKmK2sB7QkMqde6vX0saHREdsN1+Rnba5V4lTQIQZRK
	 NQ+ErsCC3Kzs2lX5kq1EwLebjC55zESjPaP8ewayUXrd99oVQF9QJje9a1JX4QYwre
	 98Oq1Ivy9yO6svoGGwcYqLcDbEaL2TEDuh54s5FK3hz3CsXIQ3FOtQQhfHvTTW/P58
	 uDLm23nesqWJeDe16Njl2IcQtfWg1tplDp2yr6/9TNqGoYWMSOIl0hPqYEWN7HS7zD
	 ny2qHXFZ4CiF6We3GIa+4qIYrQhdcf7CdM2Pq1JUxe5W2v9PkT1u/rykq+OQFJcKWj
	 dOc18msCWs6Rw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A97ACCC6B38
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 20:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179209683368.12386.9778666309590878270.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8421518dae768a33f96c557c29c139b6020a487fb6f14e6cf0757b0f65cbb45b
Date: Thu, 15 Oct 2026 20:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792096833
