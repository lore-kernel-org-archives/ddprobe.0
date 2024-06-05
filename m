Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7836F163
	for <ddprobe@lists.linux.dev>; Wed,  5 Jun 2024 00:06:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717545983; cv=none; b=L1l7RbYUlZHsm1b/tDF+1heNg5KXjTMX94BgFHcsZGMaXv/4YzP+3ZZ9bkZJ/SW9cEdGD1S/Ma5vhB6HjjNj/U6Lmcn1WzvTBMBstgX8nDbb9R6LwL0gZsPYkXZOihQO6r5YekC4XE/OH4OzUQCM3TvZ3srzrQ26ZRnrBlKTKO8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717545983; c=relaxed/simple;
	bh=Wf24NpWP/xn3OBcaJ64bohiYXv8nn5RLOSnAGL9xXgU=;
	h=To:Subject:From:Message-Id:Date; b=fIBX8Y90kSlXeGCIlzivz5IPuKquVOhActV9EtPnSjhz29G/tLuxmJ8DpCREkMDPwmpuPsnhzIbv8I2/cC4gCQQEKuUg+JNsUVYzp465W3Hhk/amyrmIxdR/kxQQvFcI0X6+9+s4gN0DoBxRtIxg3vrA8Gr7t8ih2t3qhKZBiR4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HE1I+AOm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HE1I+AOm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E5CE7C2BBFC
	for <ddprobe@lists.linux.dev>; Wed,  5 Jun 2024 00:06:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717545982;
	bh=Wf24NpWP/xn3OBcaJ64bohiYXv8nn5RLOSnAGL9xXgU=;
	h=To:Subject:From:Date:From;
	b=HE1I+AOmRPoxJGHOrsLGfU1/eNghMb5jLmAfMeSqnycdYwPIFpFELsUaT9TXeD5jM
	 9wsgTopEcMRkHLvSmve5PecypkBZn1u2tseiey32TPeRTkl1mTNgKnqVd/Nt/sWtnl
	 5FYAJK6b0ewKetIJZ4cMyVZf36Cv+gWERcLLXmA+vFmdjo8PpGiEjQQnuQErjdSfGl
	 oaiK5O7TcQTERsebg6aAh1I3eprxyXmUGlHNIEsufJT8oekXus20hoSkDOBkfZsLyy
	 LkOFAlmfnvbYYiFNS0Ad3cSqw47hn8iEkiKaRSkQV6riianpTp3LOInpjMy883YLgH
	 uRj9vJmgQskDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7F0DC25B78
	for <ddprobe@lists.linux.dev>; Wed,  5 Jun 2024 00:06:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171754598277.18815.1231405201697754479.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b7e80fe38345bfadfed904d95bb67292d9629640d2f39875b936c3b71a275264
Date: Wed, 05 Jun 2024 00:06:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717545982
