Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6246D21FF4D
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 14:43:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767365034; cv=none; b=cCdH96BP7+RbuJDI7Y/Y6KM9PAek2WbZG3hwOd2jTCHYrSGVtdale3WaEt7l8i0T88jKFuLZ4r69gmsZBVi5Z7LnwVSY3exaJWX2eSlrZPs35rxqb1W02xT/K9Y2e7qCOUbbB7e7uZsuB8nYIIo1v8mesHPiJKXIl3ZLhRpi8oE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767365034; c=relaxed/simple;
	bh=qCv0d2fOCcsxcc3SIufkycyhaOx5ZlxQb/1rOaaF+xc=;
	h=To:Subject:From:Message-Id:Date; b=DqQfevizZa/S1baByveeBNJsM3MdfhY64b5TciyE9RhJUZ6DODt/iZ5RS3/hGbBStnZ4mBzpyIhDuLEzKyJUK1sfwudgJaeyn+vDVyCpjzTrEH4ckIwwgCHLozswQZlKL6REiKQPCZelrZEownUPwTWQaYU3Ez6uqrInpS2dxzw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Mo9pDW4/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Mo9pDW4/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4B30C19421
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 14:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767365033;
	bh=qCv0d2fOCcsxcc3SIufkycyhaOx5ZlxQb/1rOaaF+xc=;
	h=To:Subject:From:Date:From;
	b=Mo9pDW4/w3L43XbkIgIaFDnyPSUBEaJqcrETXZ7oBozCw2Q8JF0cpCoof2Wfk86yq
	 oAn6Y8JfzWlpY4CVlZP9awISkb7eKpYLx1jhOMzzi5uBArdIVzjjSkmok1FLJWJLnC
	 Q82dsQtIu9ax9DUr13UsIIHX6QyE+FEow5oCffBAFWw56YIQloye2FpbsrN9BXlm/Q
	 6BAA0MVk7riq/XNPBAxT75jljx20lVUmklKEk2pQaw/NImvNllxOc8+n1qCCMvsbDU
	 NLW8YjMal84M0h1i6X8h8RHLUIwPF1oSdCef/rGxZJ1gVEvSuBBu4iKC286Jig7oAh
	 ImTL3k55Z6Zrg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F307FA3741
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 14:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176736503357.2286.12443312156735297938.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 721b3916a83fe5cdf4993882b58e2910c748cc75c9e55080f69c2adf44304c48
Date: Fri, 02 Jan 2026 14:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767365033
