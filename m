Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C2FB1E87F
	for <ddprobe@lists.linux.dev>; Sun, 19 May 2024 15:52:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716133943; cv=none; b=r2tYriqKbqVme1qlxobEZ61EATpjwjS2vXeqjf3mPJQlg+BoLZB3ilPSKYsWISfMU4PVliD1fO/yrUj/fXQyc7SF2wTaNAmqCPvN9vBMMlNf/Hp2ZP7DLA5pdG7rNBrxBRnlco3VyjihEt7QmYhVmrEASfJlAZNd4d3RU3uNJrY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716133943; c=relaxed/simple;
	bh=nXVngFYWIaayWiijPKTLmIlSq+kDzw49GyH9sMR/p74=;
	h=To:Subject:From:Message-Id:Date; b=MPTH+df7URAKKb2RjBgFdgsopBtAjFMtoRl1q+tI9gGv/B0JXpZbuHx0p4C65DOD/tA5lQoS8b4LOrJOpy6sPSyCj2hV6bIzopTlmr+kuQA9sK9t19uXs40EqyGaLJPvDpaUrY/K+S8ZxyQCe2uhjREgRNEUyLxJIPt+s0piz+8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mphX+ma3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mphX+ma3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E0E1EC32781
	for <ddprobe@lists.linux.dev>; Sun, 19 May 2024 15:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716133942;
	bh=nXVngFYWIaayWiijPKTLmIlSq+kDzw49GyH9sMR/p74=;
	h=To:Subject:From:Date:From;
	b=mphX+ma31Yw+E80J09Ey6xlDdELX7g7Tg0rdRfrKSvXRMaSMbNezZ+qBDBXfjwqxm
	 Ynirnn2pgukfA8HnwCcz9JZkkguIXviPmadzNNDD2f0qi7bvPw9nztWyFhQifMXTpz
	 l970jhoXCzs2QBmmCdsQA7Vi7cByndk+vn7ZcS6T6FsWAFaeEWd+DjrsauqqYpD+zN
	 gBgrkwLkiIOX6VLVsMLc2qiEpDXKVzFx++ffUQhse3PZGPZTNdWAMhZllPo0TTEDtN
	 ExNcf3Pndt5bf06xO6Ub5wRG8QBMQoNOIJ+2I9INvIkFXsEJI8x6sVMxvcz8tbvBTH
	 rNDeFvvnRVkEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5236C25B75
	for <ddprobe@lists.linux.dev>; Sun, 19 May 2024 15:52:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171613394278.29893.14746690296241448690.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 32dd714feb416e4a8bd5f119f9b51746748fe7a1520a615a5750324839e1788b
Date: Sun, 19 May 2024 15:52:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716133942
