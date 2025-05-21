Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F736234971
	for <ddprobe@lists.linux.dev>; Wed, 21 May 2025 19:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747855194; cv=none; b=PWX1lbJit3VaEjCMcjDoCoad+lzSWTFl5qtPCYaLpKaMPv/oSWdv5v7qDh6WRa33To67ChSxtT6iW8sCgDpKKPGD0zcWLDCn/prKoeyuMWadV99LRNYPimVdWfDUx6MnmBDf++H9QBq6XrFJvm7CnNNC2ppRIrgj0pLzij8q/7s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747855194; c=relaxed/simple;
	bh=nwaK3dFh2IJUlkzx+Ip/BUm9yeuo3znRWNMJ7L/aB2c=;
	h=To:Subject:From:Message-Id:Date; b=GlcqEZUgEXC/Thf0PW7RULyZVEj8Qgu2Rng9mXl/9wKzwnOnbguSC4Eh744UzXWS/Q0BMho7g1HBbURJ70+4LGQRyWhmWMBcp4IS8MOC0hZyO1j7oSJOtE5n61H5u6MCPUiX7xHWpixMSs23HbXneeP4tWGSHbuFKlRmFR3ZQpM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kriX4lom; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kriX4lom"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1E1FC4CEE4
	for <ddprobe@lists.linux.dev>; Wed, 21 May 2025 19:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747855193;
	bh=nwaK3dFh2IJUlkzx+Ip/BUm9yeuo3znRWNMJ7L/aB2c=;
	h=To:Subject:From:Date:From;
	b=kriX4lomFI848hVzTd0CP+0CEgB6NXQ0hRv+ilYEVeWdR4cdoFSpWjkjxkwpOvke0
	 W+roiJuNW5/c0Zht3j9KWCf3m0T3MMdfLM8kpVfwe2DRqYk/DOvVxUOyMK8hoCm2yo
	 2qV1Kl4wKkur/qrUphn4ZDdv/ogramWWaAjRQ90OkV7ZJ+EB5MrcRwljk0rWsept7k
	 yHISdvAepriLkgzXgQAw+kw62e0eI6+Iu6NWG2KTwYxlbPFY6Cc+lVqmehXXwBBE3t
	 /Q7rJM9s4qJCi1woG1atVOvTOasmStcBAguFn13A+xBWQRM1iw0HcrE3EOU6M7oGOW
	 9WV7vPNogPA0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F326C2D0CD
	for <ddprobe@lists.linux.dev>; Wed, 21 May 2025 19:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174785519357.18005.1611377923432700080.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c2ac7678fccb6b511cd606aa639c6a900800a6f2e0f5927fe92f0bf86a03a2a5
Date: Wed, 21 May 2025 19:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747855193
