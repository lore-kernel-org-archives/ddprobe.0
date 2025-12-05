Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 81CFA2BD5A1
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 16:42:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764952974; cv=none; b=dzHOXaiLdCqU5vorw3fXTASv2jeLjjR/GdeSzuU8hfwIfNxVencecO69u62AUE3bjzFfDhOGyejUuQwRZHxs1VhENJgoODgbzPGq+7g34pXiHDIcp+3Rh8k8CSXQco34Na3kzKcjv6dQ/llXdVJj66yu3o+XfLDzNZbUQKFiNRg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764952974; c=relaxed/simple;
	bh=OGEjXaR2OVm4ceB5Fx7FoxlogniYL2OO9x9UTYpWDiU=;
	h=To:Subject:From:Message-Id:Date; b=p9aq2S9CSNzuj6q4k+eBx6eJ6oiLUoEoiBtqHDiU/2zgXj/hqFDv0b39T3YUSYf/mRb8g2J3+1SBxE5EksyABLFI9exKC6iz3wZiHnWrnMrSuRA7qb477nS2WuPh39+BeG39+Y/CttyIivjKxnpe8EbdZFexAJqhIc4fLOZKYDw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fJzaRYtA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fJzaRYtA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7BBFC4CEF1
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 16:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764952973;
	bh=OGEjXaR2OVm4ceB5Fx7FoxlogniYL2OO9x9UTYpWDiU=;
	h=To:Subject:From:Date:From;
	b=fJzaRYtAg39MoDUROJlis6tUuyvPvTaIpcuXlWwdPTViB4KLSTAPs0hTSSBpiBI9g
	 V4HEl5EW5iCFg/xDqfDll6yU491GSb/GuMBwYEYI8UQGnfvUQP0CLh28MDN2M9Rk1/
	 k0L2WCf/jfnfIRf8CqNcEmF+9/ihBep9Da43MNTbm8l63hyHisy6JAKlNevPmuVYge
	 MzkAuszNv+c2CbnAHC4dLWRgUtTbFT6Y7RQvBc6k6N42IBhPEbY24seBkz3GQjLfni
	 PjLKtdIg1cAu3hNIE8AeAOVLFM7Jv9V3ZdY7Xx2Iw03E2WdvxmIhLKyHTSXCuiuMEA
	 P8d5xp5j8XFdA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94C95D33994
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 16:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176495297360.15072.358171421484571375.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 11fd40f014af44a6a93155e64fba4cda0bc6791896fdfef77e9c96d32ac19749
Date: Fri, 05 Dec 2025 16:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764952973
