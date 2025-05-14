Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A9461E1C3F
	for <ddprobe@lists.linux.dev>; Wed, 14 May 2025 06:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747204194; cv=none; b=QhSowoRTdCnll5NiRjDUam4O2yLLaQlQ348wIqYZxw9BBQQDrms6KcH6xY8HxR6xWIt22a7+vxlr4R6+4qNGB6TO4rEWpYukrN1ClDr9NxPmcgYmMlVMBQt+yBgEdklz7JMXsd5xSw1Icc+bt9mBrTl7wdNL0F42OHgvx4O+xIg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747204194; c=relaxed/simple;
	bh=AM1S5qXSPpH+fTXyHg+41LGocq30/xIGzvWX+YnCQjQ=;
	h=To:Subject:From:Message-Id:Date; b=OAmCCw5lmAJIEPP2waM/6kJevWqObV3rsS8uxykCN2iFSPY9vWaHkzjlMzHzAWkEFABRB/htroE538gToLPm0XD3XxB8tv1CajOTdwzQOu14bi7UtgZOJ1LJg32AScjSxzbolCrH4soo7yIVMq3HRAW+XMF119uCY1wP8A/9Gb4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SBbawWu6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SBbawWu6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E1B1C4CEE9
	for <ddprobe@lists.linux.dev>; Wed, 14 May 2025 06:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747204193;
	bh=AM1S5qXSPpH+fTXyHg+41LGocq30/xIGzvWX+YnCQjQ=;
	h=To:Subject:From:Date:From;
	b=SBbawWu6tmd/LKdofyEtKZ6lPBJU5WTalQ6DR0Tegph4BMiXfYDjP78kWB1IJMFBD
	 ib4bcUkkllsns5YBJYNTovrOiC7oRTUFEgvJBeYJtB+CArMI22ejriABvohB2fNF0E
	 eVcpIaXvz8GwZYzDqAj7TEghIvlG86ecdo4nFM5hE4e8+I2ZDkat5mMah8NctPXevI
	 dnVesMyoYojS8u5G7RIASvEK/+28n9YQV8Fj8PxVoFDxVFfaLJEZ0X80EEspNksv+y
	 ULvuCFZ7gqvoC+B7Zjiu4GFyQla6ynqsBO/xr2YWk+d6KzUW0UQulRpoauu/gWHZrw
	 A6X7352h51n/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E82BC3ABC5
	for <ddprobe@lists.linux.dev>; Wed, 14 May 2025 06:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174720419357.8423.3674380814610571254.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a35c1559e7998e2f2a4c6585f8aa81b464a5a8ef8cf8769720d848820db8d274
Date: Wed, 14 May 2025 06:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747204193
