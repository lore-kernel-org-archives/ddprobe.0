Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 218D92A1BB
	for <ddprobe@lists.linux.dev>; Sun, 20 Oct 2024 11:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729424154; cv=none; b=qVJ58nCfDhPRsOgUOkTHKau8Eer2Sxyk6Q9HO4yvebbXq4DAJ/KJbpE4XfI8Jwg0gMaAFNhPS3vUSqeAnmdbEG2sCitfjNuGuLX27TyC4BauxYqBV90Rfmv4imgwDJ0/2s3zesSkyWZgZEhQumu5kSgxk1od0TR626dOO+lD+tc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729424154; c=relaxed/simple;
	bh=Gn6CHRcQuBu983idh/KTiGtN7cFxco8simGbXBYgN0M=;
	h=To:Subject:From:Message-Id:Date; b=nGUVJcuiD7vbsVxCT7dnXF4GNfpTDjdKUA8FCP+CV4CxqhMlI74vkPULNS9TXavePuf5Jg6oNa++JVC78gqvDEKuEDo9gB9INndEIQJeLd6QmCzcsfoarMKZqhdggzENsNEMLPHwbN2CkrnKKts9npO1jlpD5KVm205orTfU3RM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kI+Zqpk3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kI+Zqpk3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF4D4C4CEC6
	for <ddprobe@lists.linux.dev>; Sun, 20 Oct 2024 11:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729424153;
	bh=Gn6CHRcQuBu983idh/KTiGtN7cFxco8simGbXBYgN0M=;
	h=To:Subject:From:Date:From;
	b=kI+Zqpk3HPJb7VL7LSNy1WRmASc3SU/QGjqLpJik0Qc7IMi45yxV3GxD1stVKT8HA
	 0m2u/MN8E41wQxac7LchxmHyOrVHJTvu/fj/7Y+ABvqFGWeDaYhxG33Hoc1+VfP+KI
	 DLSFfr0gR3uU0tnb/RK9rlhVbVaQ8AD/7VjVJE1yGXujnjuMpsP+QKHeck9X9JvSYW
	 k8z0xSF20vCoDK3n1avcBuzk97yPWu4oA5u48o6VXF4XlGV0gzNEZxIak3wh9+PkFm
	 GIqD/BPjnS+gZmaU76o1fwDFt08YCaxT8SdAO++OPYF5hM4aSGr9tgG+eTXB3jqKEB
	 Y/zcsb7GnWrvg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9772DD3C92D
	for <ddprobe@lists.linux.dev>; Sun, 20 Oct 2024 11:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172942415361.17502.11637289611043513119.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 84fb0a5a720034d70171231c1ac6bb8e26171b0d28400b4bc0bca9d99501f105
Date: Sun, 20 Oct 2024 11:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729424153
