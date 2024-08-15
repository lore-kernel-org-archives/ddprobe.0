Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F0B3119D068
	for <ddprobe@lists.linux.dev>; Thu, 15 Aug 2024 13:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723727154; cv=none; b=GuZmsxwJ5PBDN95meLbvsOW1tDxLkl5TK1rWe+0ulwH2iwslDTGsoYsLYsR1DaJEgY0wVfKNXrTTtLzOOFcseJRDhoK6v4KAZx9lWf5Qvtx5gGQMq2rBIajJx0SfwPKb0X1Qt2yied0JlfWtMVb8E4gAhpZKjU0QOCMoamlwJnM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723727154; c=relaxed/simple;
	bh=1RN85uu/uPIcOzwArPg+T4laCpI+dwghuJA0Mn2UTYk=;
	h=To:Subject:From:Message-Id:Date; b=oKZHRLNHIVbm/PxFGGAB90tzTxKcA94kUzyLmrUit0v/zBDltFYa2zZdd36cLZMHKn1lswz8W10rcN+avpKQFEllRG8RutZQlsDt9MBwdnhJS0Mw5E1yhW3YyqoI5tROmpy1E3mSbkQwye7CRza42zRa24GMswr2ofjZohavMNo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AXtIvtZ2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AXtIvtZ2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB77CC32786
	for <ddprobe@lists.linux.dev>; Thu, 15 Aug 2024 13:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723727153;
	bh=1RN85uu/uPIcOzwArPg+T4laCpI+dwghuJA0Mn2UTYk=;
	h=To:Subject:From:Date:From;
	b=AXtIvtZ2ok5vtHWl5iIxUahYD7Gu1V9Wq8ts+nTZ+d2EBmFD72/pFKvoLq+AhBzg5
	 ikhAJcy05g2d74DOk69d3sKlQ2hgap9OgyX2Jyfx6x2Se6zbPQkTg7hrJjRoxiIkrf
	 IqxC0yHfOU30oL8Bb+A+KdNVwOhBaYNQyLF2rejTIPTHnvZauPb1I7vQ2evMIfiOB0
	 Sy4+NYpR8J81uMcd0Nh8WDpvm6DnnBIdydIUVsh+10WjO9jhnu5AhzVqniftqCzUd+
	 2o49zlW2zLVfGjDoAcF5TIRVscXHb5DDS5hVLp2C5IpfSofkZ84Dwo5nJkBs6GKl1X
	 fPknNGhI7tCmA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9964BC52D7C
	for <ddprobe@lists.linux.dev>; Thu, 15 Aug 2024 13:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172372715361.2699.4928141993420452840.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c30250df866d5f960a342b379f0b8ad5c016a213a7cb65574de845ba2c48190c
Date: Thu, 15 Aug 2024 13:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723727153
