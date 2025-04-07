Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3164219DF60
	for <ddprobe@lists.linux.dev>; Mon,  7 Apr 2025 07:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744010994; cv=none; b=aJSlmUtGFXCm7Wc9NHDyDE7yILerPBraDp5tEvtjsKl2WkdPgDx4BmOHqhA3d0wp9T6sDHBd9LHLSo/pTtPzOA4ULjMAhhxHBmekBl1Wk/eAlufpWiYldqW4nX7rMXF/zkFcppXDkMt9u8LH7QxalSbDmLmfN1j0S04tXmzjbNU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744010994; c=relaxed/simple;
	bh=NocGvgBAqFlX0Ha+XxO3ZQiNatbpp0N0O0pfxC0E+CM=;
	h=To:Subject:From:Message-Id:Date; b=WY6P/lbdimyGBLc4oledNZUzkcst7k1zQXvY9PcGk0lU5kysS9qt8JDAFTgha1VL8kkm8ZxIjAnu6m32GWonG+CtMjYDi942GoQiW5OuwoMcopivZgiYuvg53DOljvfLgtIjy2+OvGcuU/uNfFBBRyv1MLQ6hJwtlqVTsAq4nVc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PbYuAeo8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PbYuAeo8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0D43C4CEDD
	for <ddprobe@lists.linux.dev>; Mon,  7 Apr 2025 07:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744010993;
	bh=NocGvgBAqFlX0Ha+XxO3ZQiNatbpp0N0O0pfxC0E+CM=;
	h=To:Subject:From:Date:From;
	b=PbYuAeo8TOwga7iaUTcEIMd9BUTyRX6hIXgViFMMCpouDd/MgqFxrO4Ifi+QCf9XG
	 ZK7pqacC1p73TzBnjltfu+bviLI6fW2Ov2fsIBd/8bieHc1Hgy+vB+N8KxUMi737rk
	 2v0DYbKhQcws1BKRTO/VPEviXSO5+bxb7hOw3eeRpuBX/kG3sJJoG0PxUBIYHE6biG
	 AM7CKvi5lmHY2E0fOJ1wUjO+sw5FqyGDIVGaXK5TVh+k3MojWZlddxxLM9Hft/iARg
	 52MPsX2+cPY3D77uAaRqV2MLbrydkS1FfKyG5L6fPywiWukL/2bfrEmL56AMiOp0mM
	 4jGsUew6Z13lg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B081C36010
	for <ddprobe@lists.linux.dev>; Mon,  7 Apr 2025 07:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174401099362.26754.3407039052604573560.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4278ad17e424976b5cfdd8e5c396e51cadb2a25489e4c776d0ed445348d23ee2
Date: Mon, 07 Apr 2025 07:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744010993
