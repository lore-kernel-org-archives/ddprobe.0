Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17F67347C7
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 23:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754869795; cv=none; b=WMx8LEMpTnj+Yn8sJBOBCgIHm7rAUkatoyKn5Fev+xPxDNKI8Xbz7ykP0yIQgzum6zlubTxDcJwSBDwJaBiR01UuyONXdcLMNYDvp+xDGQPKgcEAjuRT1vBAcYMB5Bud3DBK4npWn5Id64ypebrUGl1nrjUyyGQNL+RKTQ+YY+8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754869795; c=relaxed/simple;
	bh=seTTyGq17kRVsizJwEpaLsdGkjjkKXLbWANDjGFg5dU=;
	h=To:Subject:From:Message-Id:Date; b=LV7FeZFpt4+pVmjZCw7nILjbGFcj23CK/yQLN66Yz9FMT7np0vqWb6OcpMr4TuaSsnsJjnB/fUyL35w/ndhR7uF+SKATpfN+Xk5/Lxd4k6HNNbXmsgCY0+v1gDljG2vEjMtHtjdINjIqrFYnO0B6smIIJ4dRWHMVjOyemg01NN4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z+LzhDbw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z+LzhDbw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4D97C4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 23:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754869793;
	bh=seTTyGq17kRVsizJwEpaLsdGkjjkKXLbWANDjGFg5dU=;
	h=To:Subject:From:Date:From;
	b=Z+LzhDbwnJP8eTp98chHyTh4PcMd0vOm8GJOAG3hssj0mYx878LOI2/JX1I2rHw1y
	 +yMDx04ElwM2Vhbzbp70OH7iTr0tef1XUt3k6lQ9cubPKpfE5EVta0Y5FTHMwoLSXI
	 u5y127SujLenZw3khb9BK27mSJukIgiiYVJi3KdiDFJGy0uLVePJFR6snV9qPFOyfd
	 v3LecNtKMb9bYUiBVVYnJAe/6ZfS1UU9tta2GvmX0ZmUOi+rTB2z1nlExEdFKS3Dxz
	 mwpH+5R3ANU6LUdVDY9LCTqSzVlMYsPjZTmo2hvVKxOoAoUuZDexjNz7AM9owneGT/
	 YloiFh7qpC9tw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9206BC87FDA
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 23:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175486979357.29932.6988836609654059266.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dafa01b51a4fea436ea32b1a8d6fda300b00b368851dd454a4329e8f40b0f9c2
Date: Sun, 10 Aug 2025 23:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754869793
