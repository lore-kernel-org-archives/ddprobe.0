Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 403C31553AA
	for <ddprobe@lists.linux.dev>; Sat, 17 May 2025 20:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747514395; cv=none; b=k9wPLcE2+dc3Fg1phuxcvHe2TOrNu7x1DroRl+lf9dkPWtTfDBS0vyXom5BR7dAYYera6A9tIJ/oLWHa+0pFGHJXHfmePg8MA27miyoSeQ/rSPsbauP1fB+7mOHUGMgkzpJANKSTlDJyLxiaFdMOEPdHVqGDSmVhrbaiXSlWlvc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747514395; c=relaxed/simple;
	bh=/xKbMzf1S5AHCLue5q8h3U4W37u47mhAflkmjclTJP8=;
	h=To:Subject:From:Message-Id:Date; b=Svz+gOCFpQDN3EyIPLEUT2yw9k5G4MKDhowJbGr7J2eUV0T7vXnmaUB38I71OKCvJHb0VfrUOIZsicjksMwRH3yrirP+0egdqe2VcSWDDT2qlPlj4TXnxtFFOGSlf9bnSw19jAN5r91eBOE0XRCOVE6amVgeAUMRPMsORTVqwMI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NNtchq02; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NNtchq02"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A666FC4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 17 May 2025 20:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747514393;
	bh=/xKbMzf1S5AHCLue5q8h3U4W37u47mhAflkmjclTJP8=;
	h=To:Subject:From:Date:From;
	b=NNtchq02lDGeFQNxG9HgJ8zwFLpwPFmYvTlNt9IDY97hBwB1S5ceS3iIcFXJwW6ZS
	 aM3NfvlfmYEQvpbTQS10CFUApw70qeJ3BDrvCc1IEawAK1kT7VwTMyiyrXOwx/vKVc
	 8D66eLPOCZ3t/jkwoB74ZQ1krtL0fKmpgi98BPowQjPPEGufXSKzEVm+UYlUjOulQL
	 3puyHNLZpi0H8og7qsXCYoglRrlcxfoPfHpGMf9h22Pdg14XFYkCfxuwjGmSkUO1aK
	 3NEr+WCHAdIy1Xf6qnRCV9CXRd43qOAvtynwMwwiRsGl/7k5AkvB2xtUezU3UGeP9b
	 Lerlrwm22EImA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94BB4C2D0CD
	for <ddprobe@lists.linux.dev>; Sat, 17 May 2025 20:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174751439359.32427.5731386924341084213.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 63d80a9c7cbbf7a09f08e3eb710aa04ddf0f30b76ee4c440a8fc90d155757e99
Date: Sat, 17 May 2025 20:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747514393
