Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35F123EBF01
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 05:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770787494; cv=none; b=Xl5kfQ+wz+RMcFStW/cT0u/Ha2yN/JIg5BfjJjrUGum1CVFfV53bnas2WfKZM6e9vZvMxlzYDyP++wZQS0q831cVy+wCptNjO4ETB19E6HaOvRuj0eSJMDKSOWalNDauTTKEZinFsy7NBA0QVaB8tsBI3m7RkQGDzsuShYqJb2Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770787494; c=relaxed/simple;
	bh=NA7ZCN+kumk8MHYdfKHbaeeJFmnUibyEPR/FIFR+w6E=;
	h=To:Subject:From:Message-Id:Date; b=TbLcP+27kUPPSIYMFKn2nizgC72+geIQQr1FM8TXmhS2L2iIpR4EYPFk/uyl4CmgHybjyO+AF2MwaGH49jiJp/NcVSgpWTC0NNbe/bxlZ5OvvD1/1N+c+R4/9tkbj5y6rFhCPmuAOTJ2T14KB1n2KO0psNkQdkWZZLMOQS4AYK8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RCMudMR1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RCMudMR1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B44E9C4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 05:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770787493;
	bh=NA7ZCN+kumk8MHYdfKHbaeeJFmnUibyEPR/FIFR+w6E=;
	h=To:Subject:From:Date:From;
	b=RCMudMR1Emq7Ne1K5xyYGlOMHmP36v+5KvIbtYtUKlU/nCdIj1Yck2F38CsnZaUMm
	 n8CuystgJrIfJ5pePt+w4DQOqTI4wdi6NAafTZJpF1C53ejnWhi4R96VtKmcSJMSxt
	 xl0shTQlwmeqMFdIU3Q9BHympzY5FJH3KawprwGXlsMNLuMb0JJVSaN8DxfUU6QHk6
	 BYPEjKO/erbSv+uExE8a82SplRIs9PL0HopRciMiDizWXlhgptTBkGGRZRfTGK0F8v
	 6O/k5sSEcyMHmOnHAqGBPQBVAy1uaGl8+vBP0tbsJNQOxautxd+bL5WW3x+IKqw1lP
	 45l569XSj0ZMA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E26FEB5967
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 05:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177078749363.8129.9930163396696772484.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b085755cf81ad0e29c58dd5528ece9eeba9db42cf3de10667e9f8f4dfd44c023
Date: Wed, 11 Feb 2026 05:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770787493
