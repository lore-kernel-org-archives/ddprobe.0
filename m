Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56B9C1946BC
	for <ddprobe@lists.linux.dev>; Tue, 28 Jan 2025 22:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738102554; cv=none; b=PeZvSlohwx/7pZt9gwI1BR99toh6cOQyVmbjmhMKM/m74wP/c5rtMLnbjtB+CUvMKGV0BnZ/aJfHcYdbDfTih3DDj0a4breuOycQYyxu1+2thBd3sp2kjDVPLMoezkfQjxFkSVZb7Lp3CWcBDZL5iVglMhlo/oO3pMMoAqUM19E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738102554; c=relaxed/simple;
	bh=Jn31p6SjQAgKYux/cGrd/ZxvGI1jnvOkeOiTwaXfZrY=;
	h=To:Subject:From:Message-Id:Date; b=ts973y9pQDbyK4rvPUmEd0LWnYZd2NEtYEG9RJvmvZIotVQjQWdhvi++s0fjpTASKmkAHxLu5nAzCVwctob3GkJSW3qwrxkOWqzcrtw1y98QidCnL5ZKeoNQksda9u+FEOd72ZIeZOXMSpA+S1jZ9HaYgduPRqqkxNqZbq3//Xo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dm+TGzoa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dm+TGzoa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0E44C4CED3
	for <ddprobe@lists.linux.dev>; Tue, 28 Jan 2025 22:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738102553;
	bh=Jn31p6SjQAgKYux/cGrd/ZxvGI1jnvOkeOiTwaXfZrY=;
	h=To:Subject:From:Date:From;
	b=dm+TGzoaLpIbxhKXj2r/a0vo/JcSlb20mHiG4FogxTK5WBDHEJOPb+EpIsOdh4sst
	 wbV5cuyATAPM1OnzVLjBvpNsJ8K3f65Oyd+eMohB4A/HD20+uQ1KvzOKrdC59RknhI
	 HsJv6D1hae7fegikjASDUSvOgMj/12PPYNOilB0ZS0zE9PQnIO+02PPDuRMDOegmj+
	 upBrxBbztQ4EkYEGa1mMKEzul3nxFrDoqqObqS8OOVMP6tQte/bO+I7pqXzN+w4nUN
	 nnNpCbRx9YfoE/0ksih6c8Ohb27usJDHSm8IInQN8go1mzSVyXSwmjisBghGIMGJKj
	 UFPdjUE2882qA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8294C0218A
	for <ddprobe@lists.linux.dev>; Tue, 28 Jan 2025 22:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173810255367.29844.10080742183805439496.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5f582bab9acfb38dc1b1768dc3eecc2d0d8cea5c6d4499bc2cd90905e92ba78c
Date: Tue, 28 Jan 2025 22:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738102553
