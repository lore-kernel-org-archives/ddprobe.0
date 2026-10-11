Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CE561CAA92
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 00:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791678034; cv=none; b=lKeWHjA8Y1NaK1owvObyVRl3vmQN81iWtwOxEJNxiLqnOgYt5/8Y5fNWNp22DejVQefOESHZLbZkyk3jI87csjCwnSHHjQgAcSbqxIEMvgnQa82itFmDeeWVeN0tfINHa+MXksQ54QmoWqaHKIlIAij0sk9c9MHus+HtEJmjmAc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791678034; c=relaxed/simple;
	bh=4GGSK5LTqReDyLVpJ1/tou3Tb309tW1ty5AnviqEVlQ=;
	h=To:Subject:From:Message-Id:Date; b=QZJ5tYPnEAI4kxIMZBtVmns07wxgzlNEy+y5IoJ6hNPJ9mLF20Lf/sNNpL1wJa0FWkF1bTR3cyCZS8H3XARrIo0ztLtzqa903hXEpfjVWwa+AIqARRnioZYBga1qzVjb/lxlTRiuno8Ns2blWs9ofGq2bayfBgqtK82kLIGQ5H0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jsAny2xb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jsAny2xb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2F02C2BCFC
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 00:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791678033;
	bh=4GGSK5LTqReDyLVpJ1/tou3Tb309tW1ty5AnviqEVlQ=;
	h=To:Subject:From:Date:From;
	b=jsAny2xblgeD0PKA41ib9QdncOEfpN5kyYDf+us0UWJpXUms7D9CvX1R4gGS9bZjk
	 P9tWaquJBGYUE4JCcvN8IMGzWc1ThfNEQX8+MuXMJlVe+uWK1zJcQQDIhu9mY6dQBe
	 tieRpEg4pPmKyjRecEJHA5zcLlgQAhcuOx6he0nN6kCmBqyNc1gcdyOnyt6TuWOiBs
	 8dtQusu++doWvYqNYaEeTook/f5XZANDG9JdryZdoh4ix+nBz070BJ+cidlKF0n+iO
	 iboP+IbZEe7we552JIa9K3DPjIg8ac3len4G1ewAKLn3EwjlvwK1ApfQR93KG9NjqJ
	 w0RDPinf/hMBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1A39CA9EC5
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 00:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179167803369.16726.16668798793585761456.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bc642de003549b3dc3e316941b758f40e3438a5a2600b09d23386faf09022cc7
Date: Sun, 11 Oct 2026 00:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791678033
