Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 69A5A3EA946
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 20:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789157434; cv=none; b=XTzsqRIE3My3ZyKuomKSRJogdQuYXGC5GWl+LPJEYbg6o5rTeS2qXjLqHJ5v0t+nA1urHOu0J2JyU7UdZ5Im/jLWy7HpGLqYTfB01JXVlzsp/6dBNGWbBEY66IwXJ1m07Lq8C3nPlmPBEEXk/AQRofhDfrT7cT4Xd1rOlnHl98k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789157434; c=relaxed/simple;
	bh=VyPSIbGQqw9FOugDLdwm4OC36wyLaOw8H1i+o6EaNOA=;
	h=To:Subject:From:Message-Id:Date; b=IBs3DoYlBWI5hfzOrLrwCI9SSNzbT8sM3QDpfbPVlqSANYCkmDc0Prgb6uFGwffYQONkQyPZ0tpf+RnmwmAZMgG09jPpdahdqOjlEDJWVbfMp8/K84tNSWU0IfZY8o6Np821WDKly66s59guA4WMidhs3LGj3Sz1mUaQO8ZgffA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PSOOYyyB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PSOOYyyB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFE98C2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 20:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789157433;
	bh=VyPSIbGQqw9FOugDLdwm4OC36wyLaOw8H1i+o6EaNOA=;
	h=To:Subject:From:Date:From;
	b=PSOOYyyBu/dXBqR+LjkXeH3vOXxXbB8abWBNN/5/B9vzw7/BeX9ZN4ijQ5AuRGxx5
	 MJQqXIYorD5xa1FT7RHiUAcn3aqtBuA4aMBqXltMEv9PKVLdt0aXqF3G0zYgUnzVHG
	 mRZDs96Q2qAdpa34f1GPU2Byilo11BEkeMR3ZCZMyUFf51jEsEXHER9ZkIBiMrKuCV
	 RuKjMf8CJs9/LlyPMsrJq4dLrx2PkXZSVU9sr0xVl7Fd1nOJf9UxPXSdcPKnU8i8Rh
	 UR6+DyOxWqVgrCsM48k6guERpFguRCwEbwfakgKt98A2Sm3PIRhWGI4nPeeGjIdjUI
	 i33tYUWmyFukA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB433C88E53
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 20:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178915743369.8766.15991046238861637793.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c58c09165d2eef4a4c12379e8220a4518c0154e368adfafa12dacee2e2b52553
Date: Fri, 11 Sep 2026 20:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789157433
