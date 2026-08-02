Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56E2622CBD9
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 06:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785650434; cv=none; b=r8X8Lrwr4TdJQ1kyGbWmMRzPAikRg4XzlnOBkRg1mzRca0Z5m9wDRdqEmVxA7tQrWy/34kXNyEdFHASe2QRndglTA1yWDqnIRygOlsBeJvvSrbFsIUDnNsKuTOzSBaGO69MPI1Iu5F3i6hBnIhc6nb/fRUxPeC37uzkrksJBM60=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785650434; c=relaxed/simple;
	bh=q1LCUxtfW1Xx5h47SMDBA+/Ws41I0jwPKWoj89CRbj8=;
	h=To:Subject:From:Message-Id:Date; b=tePiY6HvGIGOY2qeojcn3q0m1hlFXP2TE+ANtQMZeBzD+OXF7kw/f1mLmG/0OPRvI/1YziB6ZjLGo7VZ5DZwvYCbwkDW67JlCkkXI1809QTDizR87GhKubiWzxfpxjsF4LMJ4Snp2WXUB6rgqpc4EJuw8EbIc+NU/12+qY7g7bo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HYjQWLM/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HYjQWLM/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBECFC19425
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 06:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785650433;
	bh=q1LCUxtfW1Xx5h47SMDBA+/Ws41I0jwPKWoj89CRbj8=;
	h=To:Subject:From:Date:From;
	b=HYjQWLM/jRJdvUa3rvQYdaMOUbL7t3fhw5ZqUDdxN+zkwFdQlMx79mAIw1xSq/FvH
	 O0ly9oNj4Of9pCRhoP4KGmqFD2iFIHt3fTpAYLfzpYKxbjUUyKZEgH8qdXSfxAhngU
	 gekTRCkmQXnk+RHLyXqZN9IxxgozUpUczPWid0T1vn2+kuxOOsOB+QwylIKtK0WSzI
	 gYzstWF7b3XTm36+oP4emXbej7BJzLzwUyZWasfkTWFHaa240JnIZXa5OHlSC9E/Vc
	 wB3QJiSnGZmf1PHhFD3/qRUjPDprGuBsCtcjqhtscw/mp0xCQI/qsLSX8JirDqcMty
	 ftV6fH4RAhpZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A823CC55171
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 06:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178565043368.24189.4226132585360925115.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b5eef2eab4865b0d4b63349053c6f6da7733ca24c4138ab0ce8241a02df37232
Date: Sun, 02 Aug 2026 06:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785650433
