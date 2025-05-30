Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DAEE21D3EC
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 11:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748605794; cv=none; b=ORt05hm4r/pc6YaZeHPeJOnq6p1AEyXPAvG6dWa5yKIVVmK3J22CZqHEv64RPL+T3p7tX2DhBgt+5xI7UizJF8f2Umt9RixNX5GEHZzN4L4KhLYBKFOgZfZWZgpEurcUKOSi6PITc9poBQ3p7YHum7Wqh5xbb/8X3qN+MsmMkjw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748605794; c=relaxed/simple;
	bh=Hdkz2N2YDhz12d/4yxbp6VlmuAI6pY3JF4fXAZFTq+c=;
	h=To:Subject:From:Message-Id:Date; b=gN/aytekyoInAXP95Ap02LeFPIdJIEB8QNUVO75Zi8sng3Gp5hB9U5DXDOltQkd6uXLJnk65NiPwOVcFPnaSyJAsCiICN4ZXFUN1B6/BULzMbR9I4d/+T873UTG81QK3RSpIcViPVauy88wDq4UgDscCKRKklfOO4iYWOQ3UzVk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OK/19NdG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OK/19NdG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A283AC4CEE9
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 11:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748605793;
	bh=Hdkz2N2YDhz12d/4yxbp6VlmuAI6pY3JF4fXAZFTq+c=;
	h=To:Subject:From:Date:From;
	b=OK/19NdGz7FFOX/W1hOa9D4py8c0EQE+/IulFHTiFAgmXGsgZe4xl9LDmqrmuVvX4
	 FP1mHWbdeGIBTmaiBc2v0cLziU/yuSbp5fmAbH8RZV2vjULdYClyW1b35Wc8ueEhOz
	 4tpZCUK9p4a3fy9tiPVEikPV4vwVUQpa5RqT5k8z3mSNHBpVW4dYYU3pVs3mc7haSw
	 GSShgAQnsWrYDP1spphrpblsW2GiPXnnZlvKfHJlrNEUl3lUCbflOzHxsNOgJvRVaa
	 BU62S6/hLJw2YHn9xc6pJ2wfcqA0yf0+19e01Py+NQG4lEpopJiUuMXPnoyz+2D3ZF
	 iOWjaqDOhTHZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F71BC5B543
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 11:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174860579357.11634.10013608626102152378.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2fd5591aba8fea2143ef15659a4122e315f130b7793f6679b6bebb18f1ee8c4b
Date: Fri, 30 May 2025 11:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748605793
