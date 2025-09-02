Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CAB22DF6FF
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 05:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756789794; cv=none; b=bK1pMT7SLHtTD53LWKqvPVXdAs6Z3iKhL9SpcGa6sAldYw6oaQ8wj3jc68QBCReTfWatoA/GHUyHa5sBZ7NRS8dBASvtnnskcqb5FboKd2WIKj5gOFn1w/HCuNjjF2SCYRGv0M29RxgeaJw/LPtxaPCmR/9wkSy3YvhVHNJwxAM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756789794; c=relaxed/simple;
	bh=/r0wz6rN4qQ/LXPu5hgL9JqDSg6hplRWC1HFCF+w3hA=;
	h=To:Subject:From:Message-Id:Date; b=fmzZkk+iI1tUn+PMgo5Vu0sbk9wrRTqtXI2tmu6E4f4u14znRTxjtllr/xW/c9MWDGuRniI8+/lclnGnpjOFBfnjYFotrw43a5t5Rln9lMdu3wWeo7voj86lQ+yJk0xapNczMHa52TZRfNtWi/AJuNIchmKsaK44MPaBpGNGRJY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y8iGpFmQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y8iGpFmQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0413C4CEED
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 05:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756789793;
	bh=/r0wz6rN4qQ/LXPu5hgL9JqDSg6hplRWC1HFCF+w3hA=;
	h=To:Subject:From:Date:From;
	b=Y8iGpFmQT9Qqgwwi5fK4ACaJFv8ZoHFnK70jA88ZCnUZDHJi8NQzHDZsC66RrChPn
	 Fl5PA9aVXJjKtLSuCG3h/rcxUBS183fQeMGAzE/t7tXdAJSKH+tkhgWU0OxrfNrLrd
	 1sG4UGPAARnbFIDgTE+9v1CqW9iTq2yrbBA/z2VGwHyfDuNw2et40bxsT+2lm0MxIf
	 69cUBX8j7AhV27kMTlvCp6e9gB3/yANZcP+Mq8n1sGst8fFoxXtRAwbojPOnoGB916
	 wNi7pXgMDyoZAPoCveGeEvFbvtXs7CE2OTnzEMiqkJYztw5Bsdt8jgDl8pBp5hPZRM
	 R8/s0cuSs4ZAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EE32CA1007
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 05:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175678979357.1351.9939426037220420342.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7b8133a8616fd43c58d2ad30e25f892f7bda323ab3cb1df13de27eb92ca588cc
Date: Tue, 02 Sep 2025 05:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756789793
