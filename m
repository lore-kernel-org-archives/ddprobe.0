Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20D4F63B9
	for <ddprobe@lists.linux.dev>; Sat, 21 Sep 2024 07:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726902954; cv=none; b=jRleTfkDKRSQhLFZz36LorLc6QS1DYvUg+K56Ehzq2xCHgoq5/0yCqgvddHDDi11dMFZ/PpzN5COjf9KHnFDRa4CWp+BexmgrMD1ONh4veL9BtfvtJW9qFGJFp+hxCRua6sZGWyGZqmmsczNpSC5oBT6XTDfHq8UWhSRrH3Fup0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726902954; c=relaxed/simple;
	bh=zE7kIH69m4BOytH/m/Ux5DcbvZXoHTYAeRmcOOWtNlA=;
	h=To:Subject:From:Message-Id:Date; b=M75Vcn6wDOgDpEX5vsWxruejm1dJdC7/aXe6ZPCwQ8P3qzHn7KFw+0NJoNcFECCL6TGvr3PwcH0W2UKLTU+Ad6Y+EbCW7KfuUDGYQSt9R3m9ASj9cif4tYL4NmFVsBrE066pc53+gphdugfexYyT3zX5zgy5MyKJRPDDzkjKP0A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E57L/peq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E57L/peq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABBE4C4CEC2
	for <ddprobe@lists.linux.dev>; Sat, 21 Sep 2024 07:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726902953;
	bh=zE7kIH69m4BOytH/m/Ux5DcbvZXoHTYAeRmcOOWtNlA=;
	h=To:Subject:From:Date:From;
	b=E57L/peqmson2jD9wZCDXAwRwOyKRvtxCQREXRPkSmlE23/+FVKAfYOsZTNHEWjMW
	 hZvDeAJFu6u4lqyB8nOuSiIBSFO2Am7DbEI4/8p5cR1CfllFsaDNFHJdJ2HOrRlsAd
	 3FvwcsCwULfYQ2CJnDRZU9SNBji4Q6brwi5By1QBe6rsebMlEG6rD6stfKFKvj+eTU
	 +QcYNe/kE8uddOutDqGffqcm+p3N7IK73dEsdf4jGPutVXCg4Q5TCaJbwepmyyDwYD
	 F87tajl8SGTvMtfnREI45P5isD9FQaAPmmYFSa3YNIfaBHZnLpu4nbc3RD2XiARyN4
	 TSC5WUCmFSYNg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 990C9CF9C5B
	for <ddprobe@lists.linux.dev>; Sat, 21 Sep 2024 07:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172690295361.26838.6146038597285867581.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4e3a2fd02649cadc88a1fc4749cc014539c7f5bfb49c70248ff835ee4fd6d8f3
Date: Sat, 21 Sep 2024 07:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726902953
