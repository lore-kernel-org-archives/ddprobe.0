Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52A61EEC3
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 03:24:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780802674; cv=none; b=c4xEjl54T3+6EQxa/mYWV3rrwLmoN+Wg+HQp6ROFUz3TL0mu0rI9HmW62C8BU9hVg5hINXlDpG8Yi3d9zIukA8etr6Que3ZDYrQgWneVvqcZhtMrrOkRZT2nyXcCjkAR90An/jaUYKtQvIhyplTmlTe1whouqxYVnsrP3iKfnf4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780802674; c=relaxed/simple;
	bh=xPfv37g4MvATbCRhmRrP8uKDMxdbiw8JQ2hG5WriWy4=;
	h=To:Subject:From:Message-Id:Date; b=tktGlyswPFGiF3Gb+x5qiBdQw5Yu6kp8X7/8M5ihNBmTsdUCzs2u1CeSXQRcO+AIMqbG6uM0gnbpZYnyp1obzeZCsYLWop1RzRcDc0mSw+vRQmjWuP+EpZGCz0QYfmtz0PpUCkkMpx0YGPDsZBvvGQYX4o3pWZ7HVv5e9tS/C5I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WvMGMFN5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WvMGMFN5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8F17C2BCB0
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 03:24:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780802673;
	bh=xPfv37g4MvATbCRhmRrP8uKDMxdbiw8JQ2hG5WriWy4=;
	h=To:Subject:From:Date:From;
	b=WvMGMFN5N3xi5VOlMlgX5pk9daZ9TqiT79FyLAqyRJ3S+aZr5TcfUEQOkfMmvjuKr
	 Nz/pXJVvND3a6o3twkFLNcEOAm8TGO6Lk+6Y1qI10ro1cU4Z4Yxkt9ySyTbO7eVXyS
	 R3aRRyr7ALIyiVC6JBsWbrRLjOJB5D8RFLtgOHn/Bkm4OTb2AIdDU+Gg+yNe3JYdmP
	 og6ZFCuKZ53x5tV2O4QGeIZc6qnj+XVPOT/KAqvFfXqxneOFR0KmgEpRtD4tVxeFQl
	 YBSWGgJJbDYtKD1sVsx43UIUbsSRfl2J4g3x2nrSjW884BI9HrRvMeEeibQdEdc3/9
	 hOCA0BsOtrKeQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD5DDCD8C89
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 03:24:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178080267368.4828.5985916082727867171.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a0945f81cc574dc7f0dd8aac45afafd328c9547a3356dce3731195772274192f
Date: Sun, 07 Jun 2026 03:24:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780802673
