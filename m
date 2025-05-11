Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A29E1E485
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 04:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746936595; cv=none; b=dS4PZbaaAYHFWiOIHDPF86Bn5d4LVKQdLvXPABZgs8zQ2Tzmf+4Z7hYlxZRA1DFLrLiIWVUuMef5QVm5armxnjc6wwvbm1Wgim8aJ0Q6nBnBOlx4RavYGeWDc5LnCRL88HJKzCJionZEoCXTHl0GvfK8WR0yCfDXpwIPyOQrEk0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746936595; c=relaxed/simple;
	bh=uoepeuHMVosUkGTlj1Q9rrnPzpjIWk8G7/C0+cwx6q0=;
	h=To:Subject:From:Message-Id:Date; b=gIBOCm8vt5hdOxx44MGU8+4A9zl/j/x496KWYDH/jwa+zkCcG3ehlyGeWdmecHyPq/s5ffQMX4GEf/t71jFDCpqvQhs0O6RDB/eWONkkIttHiSsxF/cqmkXREIuaV54Xwbk7Fq0oZlFjNZQdKXVXfiEdphS/6fkIN70kqXVJz+c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X1pSt34e; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X1pSt34e"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC62BC4CEE4
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 04:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746936593;
	bh=uoepeuHMVosUkGTlj1Q9rrnPzpjIWk8G7/C0+cwx6q0=;
	h=To:Subject:From:Date:From;
	b=X1pSt34eDpMsggnSxJC2U6C7+os42J+WrWgLtFDuNoyhQxAen9Nw7J62PnPHgOw2L
	 5ODSoIdHwcdeuM7ia5zL3JajZrEKRl6540UGqXSqOTISLOkTCYIHrWrtdGaxWqt6FC
	 zD3d7LfpzC628NInlC+DHAPlbVkXFVsQrKO44OaUzrdtjUVdTLVvWTQGYUtZLWeFa3
	 U5WkgHrTD41rggxP9fvz4ZjRMb3+JGiTsbUP2m7pK7IeH2R8WK4JE95Jh0RVeYU7wu
	 jmnp1SPQC6SJqRqYsdCHbzHMa5x+3FSjEAV1nASeT2053iSaU2noRD0NJSX2OR0Ofd
	 R1NpltVui5+QA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 976FEC3ABC5
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 04:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174693659358.12029.1346080422401014662.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5d57dc0ab0b2a2d789f667c6cdb876a6f3c620bfa04aebdd04496e866b25768b
Date: Sun, 11 May 2025 04:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746936593
