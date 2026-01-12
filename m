Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D00942DCBF7
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 18:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768242833; cv=none; b=Cr5tPS9FEZ3s2rrLz7AGTUieMP9wR2/BuQvEawmOZoU5ai+Y59dEECBTGmqBODcIRknZvotExY/oVVING1WDV9cTSfeCu9YViRG/iS9leQX11pvxSO85NVbtwIK93DfrJ/0xmCqgrcnpbZM3ZFaqa1WpifUthxhndUYXpZA32qI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768242833; c=relaxed/simple;
	bh=VABtJCZM8DDz431EK1m0pPzFihpy+B188KJihnHmTS0=;
	h=To:Subject:From:Message-Id:Date; b=kd0D3sCflaiX5We3uFv4SE9MW4CAHsGhRsjtTAB+GIYzCCPbSjWa/LryjdGG8Dmcaf8JFLQ5qOI8+wK6lqt+VVQmgnmIzfizVRZMIsuhumNJx5rvM4wd4CGQGToKPaZR9AxFv2EyrNxyaWBkEtimUnZkMADIu5tVeRrSfG/V8/U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SKAKCxRw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SKAKCxRw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A06D9C116D0
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 18:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768242833;
	bh=VABtJCZM8DDz431EK1m0pPzFihpy+B188KJihnHmTS0=;
	h=To:Subject:From:Date:From;
	b=SKAKCxRwopsc0bWYbIxN3lfqQLTF5aRT4AFuPSDwUrluS0LxawnIqBAoX3LNeOXnK
	 tOD++xex5qZuJ1sIuh3Qvc7CwQnVfCQkkybhLS7G4/tX3If3Bm5RpYwp8bAI3w41JI
	 vBZu4sOHGTmOQtOnky9b2ZCz4gpwLDw57DNdUp5HUuJSofncbwtMoF1LX3qIOstCMN
	 5lAZ3Z5ilxvPkyws0+z2DVdhItDYDRTLxO1bWsei//eaVpdYAU7kl6LexZwNBi7Pba
	 8/wYUweEdh+DBw4NBAfuHbimi4Uk2nxgYWFuOzO4R8gk4GTWD9zzZn2UyHfOt2dRNE
	 KjNhnsOMtD2Qw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9076ECF45C1
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 18:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176824283358.29378.12608649188839500120.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7bbe156ba39feb07e585031f6e22ba1274cd7815040228c6cad961d5076ec514
Date: Mon, 12 Jan 2026 18:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768242833
