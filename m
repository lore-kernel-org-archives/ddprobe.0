Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AF31224F0
	for <ddprobe@lists.linux.dev>; Tue,  8 Oct 2024 02:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728356154; cv=none; b=uckSyupfele+2zFeyP7YDxZcZBYcuqKY4cG6KQuaRTadiWyOzDfPB2dcQlYnnqW/Ran9LDK0D2OYUeSaexae0wICLBg0IaAVLm00MlgCUt/5jiK/7zk9XFZ+7zixulLGRroCW59hbbtJk/xfCVrx8aA3UKQwgOcOZGgkEgNQ/RU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728356154; c=relaxed/simple;
	bh=uCOJj2nk2mtO2UAWf8uLP1ckZNxLBuC00X3q+p8RNDE=;
	h=To:Subject:From:Message-Id:Date; b=BM34UbABhna9kst/XRJ7VRmlvzp1kMTf+XzxNj/xGaUO2d1XftjMioeH0r6kVccG0TffzR4UvzffiT1bxt6xroXcKjGAd2+5XCOrjKDVcmM/LqZK4V4NEf9XamxMv15rSWfzZwtjITs9GGCeHRSawylbg0TJH3jFEoPmTBRQEQk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m5kakkKZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m5kakkKZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0ACAC4CEC6
	for <ddprobe@lists.linux.dev>; Tue,  8 Oct 2024 02:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728356153;
	bh=uCOJj2nk2mtO2UAWf8uLP1ckZNxLBuC00X3q+p8RNDE=;
	h=To:Subject:From:Date:From;
	b=m5kakkKZElKDBivX+/PgvottMQ5tFruzQe/jxTasY0UPm+HKJbcfO3taIwEe+RDaZ
	 TgXYj6xgyZVSNEMWWogdbQl7LQflKmanLOWmHjzXkkFyPxJ4zIFLgy4DOZ6dRdDv7X
	 BCabRCaiBKWd/C8cF0fKOVdQ3Ksjnu41Tb+cU9fGWBUnIRbqFZNTvBDt3M6N9eq0L3
	 94oRYpi7atFDhA4x1KqIBV7Xs3A08QZnQVfZyPmWn2QkEkNTwkW+g9HClCyta1/Xa5
	 qa8k3L7typ3qjz4mhykZXrOdkI0KpwywvN7XrBCG23fNyHHFUzmjdRBIm3vCJWpISY
	 SjopLW0fIsGqQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 912BDCED25B
	for <ddprobe@lists.linux.dev>; Tue,  8 Oct 2024 02:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172835615358.13034.8083462354434881246.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d4e25eb85c15dc16526ecc5e6501a12d237b0c3b5f3a02e897bfdae7d3ca3322
Date: Tue, 08 Oct 2024 02:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728356153
