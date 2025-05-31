Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EE4E82EB1D
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 21:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748727594; cv=none; b=Gt6jf7ZOw7AUY7nvAl/e28BygRwPc2SsN96/YE8I49DL+ax6X9nh0CnKkuEb5RzK95LfECawqXbgL/L7e7NMfcboPhmuPZEVXeMf2Zbc84XCVTujyZzqsBZkpNAKa39btIhQOM2osPoDSTlla0kLuh647A6NSRtTjNyax6Tw1uY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748727594; c=relaxed/simple;
	bh=ApwvCH567QT7eJ3CBWyWRlsalInShRxroyc4/C1vN+E=;
	h=To:Subject:From:Message-Id:Date; b=NHIPlwduBOMkHNKFuXvkcB0QFyosyEv/O3fNgMepFvws/MYOgmBa0xR+QISFys57zLiPQ381Y8XZ0ft/H9ZFhj/PfSLICVsFwipiVkrqb63bWBpEZBvM2Vq45pOGHwjKM8F5YQsCFfkDiwNfzqdy3YRdpRuRRqzYZzxOaHi7M18=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qEuZBApJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qEuZBApJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1232C4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 21:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748727593;
	bh=ApwvCH567QT7eJ3CBWyWRlsalInShRxroyc4/C1vN+E=;
	h=To:Subject:From:Date:From;
	b=qEuZBApJtW3TBPibKfAzftpW4l5cWF5tZvmRwJFL+AI7GXImc+rh+KkVVYPbGzNr3
	 v9gEGFEDCB0baD2yuu55LTnqmAsj1V9LF7qo18MJP8abvmE1Cxz4JQ1Ze2lq4Q52q9
	 Ag0vqe3rNv82XwV9vl6FIZeyGT4CXbI6bb/zydL71DuWh09UIsXypKaxTtLSuLBcV2
	 KUm4pNsbr+I4Y1EGuFbyP6dmwaBc9fN9f5lSpvm5iS13ewXkrFBMCIpqmGSciIFT1W
	 7WFOAwiarXXnQG6h7tASMVzawtugT71br+etq/ptGBphL5w96wGbY0YxjdcZGCwPq5
	 Wfy/kad9b0omg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F7E9C5B552
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 21:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174872759357.19420.850003629847892076.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 158166fd363f5d5e4aa96e59aa9b59f6fd87eb8f5b1719f4f24c701dd6cd3ad9
Date: Sat, 31 May 2025 21:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748727593
