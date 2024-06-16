Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4252E1C2A5
	for <ddprobe@lists.linux.dev>; Sun, 16 Jun 2024 18:48:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718563703; cv=none; b=AHMo7wjsuJSXUf9NQfZ3Tq6enKWvg783tFftXBmL2w4FyBxdSl3WPE2E2NPa1vKoEXM1/VhJ75/Xoc59GKQErgMnIr3FCOXCx85H3C1yCbGthGub4Y4MP5SrXdjBY2KYd2HogUdzVxgjR1DytfJxGfPujy00bG2DSychOAu8ppM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718563703; c=relaxed/simple;
	bh=JIgtICTTgCBEvEHB3vHZ1SjuSaG2whw66CWKKyL0zgg=;
	h=To:Subject:From:Message-Id:Date; b=aVmzEK/Euej2Tmpzljf6TG/NcCr8FUCov8e7u/IDT7XkmzS96NyXdCw8b80VM8eiPHGpX8SaOCCjIpG2pEK5cijM/c3FIY+cJ+KLj8PZA1nAVcRmILRbBvsx39GQpOu01T3koLXixsNkfFmaKDemfdzyvMNJgipEpI8oXG8+lSA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y8Y3XbYq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y8Y3XbYq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9DFDC2BBFC
	for <ddprobe@lists.linux.dev>; Sun, 16 Jun 2024 18:48:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718563702;
	bh=JIgtICTTgCBEvEHB3vHZ1SjuSaG2whw66CWKKyL0zgg=;
	h=To:Subject:From:Date:From;
	b=Y8Y3XbYq9QzLfUwznPlD5pMphmwLaAQnqRK6Ebx8CIST6X8woR3mV1m9GMnSfWu/I
	 +6p64h2qVMH25JunhXUvVyEfy2PuRT4UFWuyt6FklT0VvYDs5SlG4JLZCyx5+3S9hS
	 zE4sBGRWP+9FPZP7js+augIQdaQlChgSsOilsxZcOoYIGDPnqc0ImyPpWXAInVyVdy
	 J9jGwcO920l/zF6M/HqLH6fbZge9dtgze/GN0tP0K/IMOuI89NnqFnRwFtAe0W2np4
	 4bFfmOpQUZUTiox73nloAWGNkbT4n9pHLiR6Hb3oW71CjNddXVjlnGqUtvp2YPfdcI
	 E8cN67ht3Q08w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9873C27C53
	for <ddprobe@lists.linux.dev>; Sun, 16 Jun 2024 18:48:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171856370275.26004.12683427388302649209.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 695e204919ec236b1b8aef30635412b5c9a8c8d98cd06dee33e23493b9909bae
Date: Sun, 16 Jun 2024 18:48:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718563702
