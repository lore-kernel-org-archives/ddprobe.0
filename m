Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4000E3B6354
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 09:24:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780910674; cv=none; b=LZla8uGKpK1PODCJfb0yPjplnStkX5YhjKoz3XjDrJg8eFgBkYF2iKM5u8Xk+c38+/w0u0XTIQ7U7jFunZ5BqvPLRry3M1gcUfOtZ9Mg9/C3ARe4PJPlixe9RwjM1lJui3Z8UbVUxOrOpGUOabeJrl5+VaaLjj6IMcV2BUrd2mU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780910674; c=relaxed/simple;
	bh=Q6w0T9vgo6kfdM8xwimGtQvQr1jTbho4wuWVW0dgt/0=;
	h=To:Subject:From:Message-Id:Date; b=jQl49tiFanms2ef247ODYSZGGrbEa+QtnPH3Fh0lR8ptiNgXEOQfwQ6MhFhEhB8BhQxOhqHpqm9kLnUYfudObW6UbL+rQSuolJgIQEaf7YHTDf+lAnD616DYag8gWYPsPdFlU1/gk11ELZNQK2y/Bu+O0mWskMvfMLo3CI3NlBQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z7HPfIfZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z7HPfIfZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D362DC2BCC7
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 09:24:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780910673;
	bh=Q6w0T9vgo6kfdM8xwimGtQvQr1jTbho4wuWVW0dgt/0=;
	h=To:Subject:From:Date:From;
	b=Z7HPfIfZTqF1F5/yLdjcBHbKCqg73zM/vxVmAkdjc5N2mjoS2jfCVFU1H5kPc4Y3G
	 0aLCiEQ0CTYwlgow3YsJYwEkgyDioFpkV0IcEcQrYkbyISReBI1GpHGpu3uTxUTtxA
	 gwajSPXfdGfF0ZiHWn2HIssbBkesKQVJhRdg+GTWOH9pzOpzbSjzWLc0HvUV0VOnP+
	 x5u5WuGZxMW94clSlFoqRD13aDX7ydmpo7cpR4A0dvAOH8m7Hhjb9BuvtDMXDFMVVj
	 PN2VeiFqoK3WT2Nt64/sRv62pCchJX7+RZzWeGEKaOnQB9Y8oRDYlKtXCJtjOOIDNP
	 IHHExXsxl2R2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5F28CD8C9F
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 09:24:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178091067373.23124.16732144947840892833.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1d312e8248f790cd865bba31960643ffd52b829ec90f63f059367df463399dde
Date: Mon, 08 Jun 2026 09:24:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780910673
