Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E655544374
	for <ddprobe@lists.linux.dev>; Sun, 12 May 2024 12:12:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715515943; cv=none; b=CXNdw85UL8nChtHxSvRxttRxFihEFxVZ4RRAGK63aRx+1xmNSAOV9/iz8dLprQt87B0QDvoo7UW+lH7EX3wnifnoudTq1F5fQja3mUbFWuako4LXDh7qwZFdwabRy/I+pD6UmlMUAh3Erb+yoxEI8eL9UwyfAaPnTZB1WV3HcJU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715515943; c=relaxed/simple;
	bh=AVDgMMLz4b/BJ1S6ksXFAg6WkdlfROYEBEfjB6IjMHU=;
	h=To:Subject:From:Message-Id:Date; b=LwZ+avcwH5YkbpSKrafzrd1GHUogT0jC23EeVQEALqlIdgPNobMYds1S5ycLF50npyiW73+6SodZzldTimxBIePyuLNzAv0rY6oHz/kXvRGY12tsYacoyOsAYtq4YkvHZb1L6O+smE4Jx9egRvGmOwmf46JXN0xVxSCFk0r5E+Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UE6By6oo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UE6By6oo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5290C116B1
	for <ddprobe@lists.linux.dev>; Sun, 12 May 2024 12:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715515942;
	bh=AVDgMMLz4b/BJ1S6ksXFAg6WkdlfROYEBEfjB6IjMHU=;
	h=To:Subject:From:Date:From;
	b=UE6By6oooEwPaGzXCMIp8ivaAhrGRz/1nOzOvkCqwreD/7I2pRcGYrBNyBzoYWsjm
	 myudZqW0NBroqzjnifrZhDkt8Hp71kO9T3iogLT3mYZ3fP5/1+AcnlRUajmLTdTrEh
	 dfCg7Ob29U9HnyNAV8SS8bdFaPtVIt7l5CIuUc1Yr5cF+THJQAd8Vbgi02CplXoe+u
	 ns9PpLyA1/4JVfETKD9sNBcdXGLcfpkIhzB1Dxi5XksMm/rtrub6fdUyc6gX0+WSUS
	 hQNxOlx7PiVav7To7khCXxamRVN8oBLWR923dmv7er/eM9kF5Ht4u06yP3Nw+2cVRt
	 inIhlugrOVZog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0587C10F1A
	for <ddprobe@lists.linux.dev>; Sun, 12 May 2024 12:12:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171551594277.28627.12434958451817596217.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ed085a64ea344c4886347ea29655b704a042c809c4c92a33e22c283809ec527b
Date: Sun, 12 May 2024 12:12:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715515942
