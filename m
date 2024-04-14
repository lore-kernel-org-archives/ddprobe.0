Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C13E28E8
	for <ddprobe@lists.linux.dev>; Sun, 14 Apr 2024 03:39:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713065963; cv=none; b=p4OGKdnLBf6N518Wnt/3KI2BfQu4Er36by8aERLMTg1ppyhy92RvVlX0r+Qt2YHY7ByrG/LYgHOhNmHnd6/LIizDDdMWLiFZ7wTidL+rQHkfmNYYrx+L4n4dX1ToL/FH6pN1q/IRqLxdyEIewGGKSIoV9OHjxAIWRjq3wWsmOMQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713065963; c=relaxed/simple;
	bh=qMBRPYFF+gKFs8YOFkZJZzYObcErSQXkpdh1Sk7lA4g=;
	h=To:Subject:From:Message-Id:Date; b=MB0QTCDut+p7XdmyrA0WtuHrbZvjMVDv+zc4pSCiQr6XZtb67mpMk8kLxE/Dq6WS3pfZNC3tkQI1S9WoxX22tv98ncF4J8h6u6S0kw9TMihaAdEz8badMWzAXYU5fwP3Wek879ukPMsk5VGkhd0Z369VRhaV9M9G8o9GvrwZwHE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kX/SWFQa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kX/SWFQa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E0815C072AA
	for <ddprobe@lists.linux.dev>; Sun, 14 Apr 2024 03:39:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713065962;
	bh=qMBRPYFF+gKFs8YOFkZJZzYObcErSQXkpdh1Sk7lA4g=;
	h=To:Subject:From:Date:From;
	b=kX/SWFQar8B3c/67JdehblyUfyv4irT8alY8ey4g1LhUv7j5EBknwMNPofWKYsinW
	 crxTIJlcSgMkTy4VRvoPMFMFZQSpiOOdtIL57ZH3w6JSIPSaC8G6dH2sWS1wsxd4pi
	 Up3G7fex76PPm1c8cna//vh9hd3OcF4BrbMCmlWsdMco1sAeMndW3Bg7SxJbp8mIW8
	 2QOk72Ek3qqocC9e5LykqDKUz5n/ltB/W8NEHI3zPKQkq0sJiytZUoJFlUBoKwAPt1
	 QK8YY2hsQzFQDIbFaGXWZyeplHuVkUq8wuOTdVf0jZ2DeEw5cM8umqgucrF6OEP5cx
	 23zl0lqZ8y8YQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C6BCBC4345F
	for <ddprobe@lists.linux.dev>; Sun, 14 Apr 2024 03:39:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171306596276.10378.814219203749614321.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f6e3f84bb2573554b7d0dfc3fb59716cc9812ef25a51104f4817cb4d74dca35d
Date: Sun, 14 Apr 2024 03:39:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713065962
