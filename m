Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1466813C9A3
	for <ddprobe@lists.linux.dev>; Thu,  1 Aug 2024 16:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722531354; cv=none; b=GxMOhulE0tASWEe5j3yYUPl/rAe7x9WN7GscdqXQGulsFEPRv8sIaMOqGldMzt5MITagKWVQFCrCKvho3Iivw+MnKD+Zkeacc42oG2vsmg3mbu0/17WSeIcVHXxqc52w4KzKt2YBcpnPTHJmK1vqEJX4Kfiiz3COIowDqliGuLI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722531354; c=relaxed/simple;
	bh=pZBB1FIZcROMgaWbkRjnfpyRFeeD1iPzJ8lgZd1B5sw=;
	h=To:Subject:From:Message-Id:Date; b=NypzT/GB4sUxpkU9Gcpz2L3YdoheCJRv+IdWPosR0oU7HYl1/C4fn2MqK2VDrkndwNflst9UauQjlGlnNnBDLTfT9gIsr11ZMfKUN+LQHm8aHSDcD12HTIp2Yq+5JipuiX4cB2wNrthhc00rbQkvkH4LjuyfXdXypTkz2ICW8LU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=H4IZYVU0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H4IZYVU0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6B15C32786
	for <ddprobe@lists.linux.dev>; Thu,  1 Aug 2024 16:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722531353;
	bh=pZBB1FIZcROMgaWbkRjnfpyRFeeD1iPzJ8lgZd1B5sw=;
	h=To:Subject:From:Date:From;
	b=H4IZYVU0X8IbbtMTHU7VRnN0lgYdqnxBclOBvgmLceB9VELXrt+RPyRqMy1jAPBdv
	 mIMdHtLxHyxh7hw7QTQfzuX8nRDUPr1qQyNR/H0QehSHxHcpjFzbX2zHWQezZyd0dy
	 EeWOc9z0CU1AqOJ1gAFCXghT2nNg6ynuyEy5Vh2KCVveLJFj1wtxD4ellzVfbLooQY
	 +7n0l2oIkfuy38oqnEiiPeCfCm2fOCg5slXZQfk8U5CrcuFhM5VQtFnRBeOCdYD3/X
	 xpNEniU+hESoT32g+s9MQRR8Ato/y4fd2m4aTcv//wTkTIS72HKr4GbIS8+8ZZwuw4
	 tDgguPndQWM9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98F38C3DA4A
	for <ddprobe@lists.linux.dev>; Thu,  1 Aug 2024 16:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172253135359.11499.5754322738607067024.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c6b6a4f11c6fc6a1880c3bd893f59491d2e069e688d94b3a8429438081fa4eee
Date: Thu, 01 Aug 2024 16:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722531353
