Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 292C844C86
	for <ddprobe@lists.linux.dev>; Thu, 26 Sep 2024 06:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727332554; cv=none; b=C4s897Az60VbRhu7ktPp0BK9Ic0vUTIxCA0qisVglA77LIPiKTc3xKjthx7/0E123u/osL0iVVdwaS5sDTTBmVXl+asWvtPsbI4sRBm2txmKVIsPxi2NfGgEqqbp9kStphuFfHt05fq2MXKG+NFueuDva8dBcUmipHHZKHRoceI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727332554; c=relaxed/simple;
	bh=yJlrqLjdaJkgi/xoLFqUQXEKWqBRuTTCFeCGpkRe8dQ=;
	h=To:Subject:From:Message-Id:Date; b=bVXEg9mOf8kpUxixDmi0YEKOBVoWvDO1wz/MwbZecIgaTcKiodPorT6+aHoq2yEFzHHsHBABM86CbxhD1K6a0k1/XNNTUTJXKE2T8vTMXn7AnU29Abl+sX/ZaVEyJ9R8Ujuu6i0U7PsOFb2TQzdG22/nIQzNE0d7UYodDRp5ylc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ryrBA2YH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ryrBA2YH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A05FBC4CEC5
	for <ddprobe@lists.linux.dev>; Thu, 26 Sep 2024 06:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727332553;
	bh=yJlrqLjdaJkgi/xoLFqUQXEKWqBRuTTCFeCGpkRe8dQ=;
	h=To:Subject:From:Date:From;
	b=ryrBA2YH9TzIZX9vpU2y0OYzXnG+Tc4+2YwHfHGSzwWSMHkDU2nZ9G9aBR27yReUQ
	 vLKa7/9eOhxo7iY6KcA24L82JigAXYczCX29mO9WECOk4MEiVPJFSFeIvWSWhef0Yp
	 Ju5GM/qFIIkNkwGuQwXOQBbI6e1xkC2it53yHRyeCxPkByxZOVUDxUC8Uup2FcfLJ3
	 4B9DdA3BpieQJBOwga8A4dmkJntXZEMnlGn0bd1XdERQGhJLVJPN2T5KSza4425fPQ
	 DeWFBF6+WBR9x4BSVL2F31p0DiXaeT7olakvGKC9BifEKxz8iMb0hnRsOKhdkUG7is
	 vbYIAba3Xbtrg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9139CCCFA07
	for <ddprobe@lists.linux.dev>; Thu, 26 Sep 2024 06:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172733255358.29850.2366472211347108049.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6a34b559b4e828e773e6d8be045bb2e0a5bf9cacebd5022fe8b4a719394bb645
Date: Thu, 26 Sep 2024 06:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727332553
