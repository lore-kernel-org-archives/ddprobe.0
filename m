Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50F4879CC
	for <ddprobe@lists.linux.dev>; Fri, 17 May 2024 14:42:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715956943; cv=none; b=MThNNF4B++eiGIHfXcXOVlm8MLYxGTc3DEWC6AzLrngdrv8iiqs9VrNOUvAQxlWRdnWQJ9NCcf/U2mCy2YiDpEFtOkSH4Fr2uRgyqqYpwzXqVYyVks7vE72ZGQKErKA/pWfGNx4fORKBYxbaCu7iC0khzgO8yE2TQ0+4HvFS7QE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715956943; c=relaxed/simple;
	bh=on65nIPFM0dji+iu+tcJCMAa2apZNrSV9HWr/jiXOds=;
	h=To:Subject:From:Message-Id:Date; b=ujP1lSPUAc2spdRm+JUaTbiADCd0JN9cmCcaGMb8gZxvanmsln7pZCnLj+YHRJ7hTb81arsdiRRiMt1lRPvGu6DhgftSKR4zqRqXieMWHExU4wS6+z6FyfqHDIU+Z/hoqTWugvfQKIFXtpBKQfhSEQ4379W8RnwQBszrflGf6ws=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d/w0u1Dw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d/w0u1Dw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD411C2BD10
	for <ddprobe@lists.linux.dev>; Fri, 17 May 2024 14:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715956942;
	bh=on65nIPFM0dji+iu+tcJCMAa2apZNrSV9HWr/jiXOds=;
	h=To:Subject:From:Date:From;
	b=d/w0u1DwVo86UecmZifzEf7f8xZo3qfls2LfMlz2u+8JYj86vSfyxahRMoIecXh53
	 1KACyODubuwtKJhSihMDezb7ioZkXy8fgok/sBGrpK3ftgrgZyoqDoCeTqvaz+XyN3
	 K03zcuBID7GGb1+j1ak8/gt7ZGW6yvvDBmBi6MkK7v8qdOXy9L9tccpXC6L0hDViP9
	 bnt/louNYV+GWCK2+9VQ88MJEfcXS/cAIfnWMoIP0YwXqkxDqaRc8XE1uR9FR/cada
	 FUE6C48lhtx5MCgB08MH6N/4STyvB6kuadlZJ8WDmBSg1hLRfUX0yYulDOcLdx9Kv8
	 v2oYnCC1ExLSA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE168C04FFE
	for <ddprobe@lists.linux.dev>; Fri, 17 May 2024 14:42:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171595694277.21711.12149859959800854975.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 728a657d29de9e7b9ef3f84e8c723ea9f1d79d8b236944ffe7c3ad7e19af27d7
Date: Fri, 17 May 2024 14:42:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715956942
