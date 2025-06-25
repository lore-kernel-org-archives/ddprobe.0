Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5891E1FC7CA
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 19:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750880994; cv=none; b=iqYvxXmGko+dNIrlz6iHrTLUXLRpUKGPB7bN8cBaktLYVUYC2emYpztA8+NYW7xH4yDLGFU5+V6iJ27tXdXslHRuYMFfyIpHCNQNJQbuL1NDw4XSDfNTuifVdzfouQXm0DhS3ZtNc2ZnhXaPquzQRE15AgGyDaHbaPWkbGFAg0k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750880994; c=relaxed/simple;
	bh=OdqUtHcORDd+qhHI4eC1/w/OpO45OeRK6v+jLJqDlBY=;
	h=To:Subject:From:Message-Id:Date; b=beLeMZVEZn4u6JLbSx2jype+tFXT8aoXgM5oJ7YipdwXal7MFw1uqvUcuPsTX0Wds9hJcuIlGJIwSnIsxjHU1cQgPEh7EhDMqQhUdQIbyholzP/KBy7CaiRbYC/4KC2vfnsXPGKFUNIgJWLVzPmVEnHgGeXSrdjEW7nuPrnSLJM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JLbmNNYn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JLbmNNYn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9B908C4CEF0
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 19:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750880993;
	bh=OdqUtHcORDd+qhHI4eC1/w/OpO45OeRK6v+jLJqDlBY=;
	h=To:Subject:From:Date:From;
	b=JLbmNNYnPEcMqmncn09HtfWnXaVx7S3KCypsN1CQpFWgqsiY7pd0rTxjkANxR0lP6
	 DtB+qXq2kFxv1Juz6Aiwgz6iK6K+daS32TnhAdbFYnH5EWBUTlX/tmWeDi0g3fXZwN
	 ASz1ARJUgLvXZ6U1q+osXePvKI0+0HY1TteiFb89YbZVhKH3Vphs2/a58n5vmlrOhP
	 QLItIK3TVuKeND5+gccH9P2nP685+8fzEQCjY+utLrK4w/gNmoxLganqZJMQnnufIs
	 yvJx5girVBxkW6Db9QKa7S9OPWJLFK14IA8hpuPkuyLOJTIELAXCpv2tlDGE+lYH1N
	 Nx8MOtF6ALOeQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F1B4C7EE2A
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 19:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175088099357.16379.15495170503158097959.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: afd8b9f73c0d18676c4b2017b837e4ad7f9d78b51345a74045863675eeb67673
Date: Wed, 25 Jun 2025 19:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750880993
