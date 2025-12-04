Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28F14398FA8
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 20:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764879774; cv=none; b=go7K+ohzxJlDVFuuQni77Lj+0Lyh6kYQbF3Vqxksm4GFwmxkr+s7WCp3fDTtsyMa8x8WnDWDVPBEt0/74/q0ctMdF4xf8bAVdvWGbLEUVR0aRK8TlrPyqCx8yChJObmcDsP+FxtiXy5UQRbgH1vnR7H95e/RZvMWoP/gVqV6aQU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764879774; c=relaxed/simple;
	bh=seJUymi2VQ5ZoklTghKD5sqzlOTP8Ymywz4nfk8T98E=;
	h=To:Subject:From:Message-Id:Date; b=ZPH2LX+LjjlZ+uU5KCwuGzlfzNZ8SPSKXY4zrzb2J6P1KLxFa4UhMM76kOTZ6Jc4qhjN9a1+t7k5GxSHqK8LmaccAyjljtmNTDmW8OgP16R2aJI3SOJPrXCCxL+fZZ0pwvb9rRj+g1wNq4GEb+1SVZuIFFtX7Mrmro49XhDVs7k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LJs6Xoxl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LJs6Xoxl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD388C4CEFB
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 20:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764879773;
	bh=seJUymi2VQ5ZoklTghKD5sqzlOTP8Ymywz4nfk8T98E=;
	h=To:Subject:From:Date:From;
	b=LJs6Xoxlu61Q2540dtZJhC7rYjQxh8XO/G+YlJV5f4YYw8O1XtvUTM1C8k/mx1HeV
	 +1L200Q4vooiJAtcCjVMv7TB8S4gr5P2v1C/JV+tvx51OnrfX/OPCByG0DjT6iy0QF
	 tQj6XZ3m0pN2hbi/YLwq/RVzvZNRVkwijH8aMOUAws0qaUzaIx8cugs0RNKaWiRSQa
	 zqLm9grVvYECY5dEeUUvSPovVfDNFFLjedfJfK4AzoeHrNYSg5gfH3nTeg+pB5x2hn
	 oSfMb6Ve9R2+qdzGVPpbvEGdaro372u2o3cl2avKtodIjXbDmkoOiB/ZatGJzUKWQF
	 s77LTP+yLHyOw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9799BD2A529
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 20:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176487977360.10899.953214754483145576.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2d38859dbf1dc2948a1e655ad62d92edf6f29fec6df7d642922d51a9c917b51f
Date: Thu, 04 Dec 2025 20:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764879773
