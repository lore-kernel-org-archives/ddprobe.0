Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 548002EE611
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 04:24:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773807894; cv=none; b=aB69tPF0uqiSFZd+wjyt94yilicDdviwYVCySbUiPUxPs0+NnxFUdfRYZFxFC8ZyppMe1qNFQm89+i7Z/sFeWzKe0WFxCY1fwDQRF/gMyOFf+FLTWlBHL0cV2+V7xOk0IodrViz+w3dKAUnLNAxom46UmPBTj611121fMO3l7ho=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773807894; c=relaxed/simple;
	bh=4nerxRy28cBuAap/GZBgN1BqixhPNKsPxzBdWtWRrn0=;
	h=To:Subject:From:Message-Id:Date; b=VzPD8YQF4DVTjeSiNo2yvhYKcJQ7OLeTXK/gUcxvZI14I2SfbYqBo5jDBRXll39cvLPny2IS6Lr5jbcxXNVolJp9WBMsFJDhLVykuPIKaLyu3eNLNkRmFpARpookUEG4k4ZH6tR3FjZeqIpXf23ZLEY3Ni489toiCpDydlPs010=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cjGmSZo8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cjGmSZo8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A67A4C19421
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 04:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773807893;
	bh=4nerxRy28cBuAap/GZBgN1BqixhPNKsPxzBdWtWRrn0=;
	h=To:Subject:From:Date:From;
	b=cjGmSZo8D0J1k7YMbaJW7sY28aaLWzp47DWlHgPneGrKxaxI+1DpQvmz6d+B4Rjux
	 +W3rP55A0oAywfc1l2ZiMg0WfyIByjyZKjxiyuc2AI6krVcXTZKIB3s8t26GuDIanO
	 etomJI2EoYoWAnycmpw5iyalGct4f25atKa694eB8JDceO3vV5Q2Vp0md0VTb6rGKg
	 SecRAdBzFTVha4ip+9QK//ifZqyiv7pS0bJjJ9OBnhshwymrChX+5kPVKEBm9eBSEs
	 vwtPilLDAHuDI+z+eiiJiJUpB54Z81H4lGZ7rH5Zwh32tRwE6fDk8qogOF2Xf5c9pZ
	 lNnUAJ5BK/ydA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9263BFCD0A1
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 04:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177380789359.5785.12069664873582620710.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b96044be79bc91db4f6ea77112bc5c5c1f02d27c484b23edc42f6b69167b976c
Date: Wed, 18 Mar 2026 04:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773807893
