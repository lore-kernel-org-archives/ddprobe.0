Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3599952F71
	for <ddprobe@lists.linux.dev>; Fri, 15 Nov 2024 13:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731676554; cv=none; b=XZoUes+JbZAAh6mTMs7ihlk5kzqX9cKsfcRUog9tgn76oEDfgkr/zJjWyfxPjOVWpZ5lhK9Dvl7x/bG1VhBbrUQAfpRoVeEHfT/YRLJ6g3hwkdnZt+LWhWjD3XYLJZLNX4KTxDwTF6VJGQrB8NF6SXV2kKd/5Zj1fg4DqlTfxAc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731676554; c=relaxed/simple;
	bh=R6GWUkypLiJui0iF7nJU51/rufRzI2ErlMkEHkQefAQ=;
	h=To:Subject:From:Message-Id:Date; b=AGCBrnFDN6PHgHrNGvuG1GKlJVbDyvjdqECHiACNyQtCD4S13Z6/ZVIyF+ee2mqPpO0pLy3FdYybxNl7H87+JJKOwc3WvWeVGwvly9X/ipRpl/rWmAvFpkh6kqrc9bqYwh/syFSBfe023GMiVKI/3qHm9FvhMYygF6budQpfihY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bfqNO1ON; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bfqNO1ON"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9620C4CECF
	for <ddprobe@lists.linux.dev>; Fri, 15 Nov 2024 13:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731676553;
	bh=R6GWUkypLiJui0iF7nJU51/rufRzI2ErlMkEHkQefAQ=;
	h=To:Subject:From:Date:From;
	b=bfqNO1ONYy36y9Ttt3DUrPsn5pHPrguRHXzdH/iQqS1pawdtEoDq/LHXAnTSHFPCB
	 Tyt+aM9PCuGQyh9WW1Cli9npiFGpqRZC1wLJ2WIoJuZ9YpS6KIHgw4bDToS+GIWmd0
	 9eXRwyyTlALQtRO62OBoKcwM3P1/oEnsaV1V0xaMOGVyM7JC+iNqs0QE1LtUCEhjm9
	 8VAmRDDIUmJGwKFGpVLoEGgb3rOwsQPPCiCnM6OWBb7R9wKP6HvVIjQqNGXIVhzRuC
	 yvNSNDAelA/t/SQnDnB/LibiV7VaI8EgcwLnPqaTn16rT1CQXsU5vFDmxWl+dPdBRV
	 p/q/lg0VEy6vw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 976A9D6DDFA
	for <ddprobe@lists.linux.dev>; Fri, 15 Nov 2024 13:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173167655361.28600.3988607421610173209.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ab0bc2e12c10a4ce42c808931be4657b14209c3811888b498d65e6bfa8b29eec
Date: Fri, 15 Nov 2024 13:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1731676553
