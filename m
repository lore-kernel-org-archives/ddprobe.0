Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37738EACE
	for <ddprobe@lists.linux.dev>; Sat, 19 Apr 2025 12:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745064594; cv=none; b=ZS9uObRL5aL/gFlKibomjznMwIn5f8NO0eGaZDfldDQhHMR/q2Ierb9sC/YHS2rpPhUZVpFVaCmuQYnncO9cBKcrSrxSxkX3nltZD0rdIBW08fDqC5VpkHkuiWj/6Q4rr0LtmOLWV2abhTfBQEJL3hfgzlMKJ3pqdG9YHLz5XuM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745064594; c=relaxed/simple;
	bh=8PQb9ibUd/VZ5OxFOceZwV1kjSUU8V1G5RIRYpoo3tA=;
	h=To:Subject:From:Message-Id:Date; b=gx+aCJFgN/mt2WW5eN6jG2+XktC78oiysvWHCyUwuVe6Yz8KkMxCTKVBck6Y7Abcns8R4qsgKOgzn5kdMSA9/+InpML2RrBvTds0RQHZU5VbAtY3ayA5ZnWwbMxpJVUjwuIvb9NHKCRG2jnQ9NDX3kmZ8RjgULhIMchotyF1FVk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E/pHZhWo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E/pHZhWo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0B19C4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 19 Apr 2025 12:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745064593;
	bh=8PQb9ibUd/VZ5OxFOceZwV1kjSUU8V1G5RIRYpoo3tA=;
	h=To:Subject:From:Date:From;
	b=E/pHZhWoCV4847AcCz4WiHaxSs13P/QPW0MZlfgFxQyV9fWfoYt+jUhN6aOXWwxOH
	 2dmCBdYWsq9TMRJGkndU4jRnHHasJvvy0UNx8afXtyRhAdY+c5IqO5sJ6DUZQa/QAA
	 rHjJgcsa/Dbumoydsw+BeQKCclh32BLqxdKZ4js4yc7AxuHKbxUCN4YSleZ7X59KTR
	 XFgMpRAO6Vq+v+5Abj/yp5vPAJmJp338O7LJf5560MPIC6Kjbfrp4mIbCzMm9FrqFn
	 6Vh+IaaS7kND0V/lzkBVHEwH3aa8qc8976gjRLji/GWswrWzBFrmYTdt8UvB2OA8Q+
	 Z+Kaqqz52LpwA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97591C369BD
	for <ddprobe@lists.linux.dev>; Sat, 19 Apr 2025 12:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174506459361.14147.15306993525751094852.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4a5350bc98b55b7f447519ad4599d57167800c104bfff88fba571be2e823009e
Date: Sat, 19 Apr 2025 12:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745064593
