Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F52A38D
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 00:38:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782607114; cv=none; b=WbWOpgtlwIKP0JBkjD4tl+mH/g+NyvyjBILw3wClSVtbhDAyPxkCVl9EaIYNXWaGYqbvACNpafclWLUfqM4KrT80UiV0lq1jXndNU1MkdHgXPR9cKrWmiePEcy+vCiU5T9j5rdNcY3PLe1gXEKH1RGq76g5+cozkAVsaZ6ajrnc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782607114; c=relaxed/simple;
	bh=uNhd9tcW5sreLcQV/yzMzCnC6860Hrv51doFT6aTEwE=;
	h=To:Subject:From:Message-Id:Date; b=jbBr4LpRM422o0ZKYAeNtY2eBHSuSYM35ggJ+riKtXDF0qZSNAWunb02GYCu/iH2epUfYOWmrn7eNtky3DmOxk2DoyiUjfofrRPjwrD7GANC7sc1JXoUlPSz/rCSyzrHVm3rsksiYn5QFEZj3zOheGq9XRRZO+NyRcBawUEj5yo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JSt4E4SG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JSt4E4SG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0C6EC2BCB3
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 00:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782607113;
	bh=uNhd9tcW5sreLcQV/yzMzCnC6860Hrv51doFT6aTEwE=;
	h=To:Subject:From:Date:From;
	b=JSt4E4SGG1fr1rEaFkNj7RpvVVUl0M26tEwEDFOQrP8Q+AHKDIYJuCcyY1FLPzI3s
	 mejHybh0BJFE5uunB/RrrED0yZLJQJzc5XVFV30UjGdpNSW9cMRcW5KGVk2iqLZFDU
	 njYVtV7qMwoP0lTM1iTUEyTgdCKadKUioFq6jQYcFNiEw/YlFsfHGckc3kjbbTquDZ
	 cGT3J4dBeSqYvfxtf38pXuiEyAmUxYdDNkzMVLLR7JljmL2vV6Z13Fz+NRY/oFUF5q
	 CMuP56ly2WX14mp3Ve3SRQ90igqgWAL6GpDh6C4BPc4Zhs5VstAa4HVUZ3bMPJsM9z
	 0A3/TA0Ju+dXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2A5EC43458
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 00:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178260711369.802.995367537185876772.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ce400a8673ad7647f1831f931b2f5ec6c11b6a087ea523e5ffb5ca99236a1764
Date: Sun, 28 Jun 2026 00:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782607113
