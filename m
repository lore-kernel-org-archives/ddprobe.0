Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CB3E82309AC
	for <ddprobe@lists.linux.dev>; Tue, 12 Nov 2024 11:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731412553; cv=none; b=e3TsIc+4uGJwZAibZtTdDv5pZSLnKh3t+YP1pr+lBS1JI99DOWtSQ8MLBUZ2sTUW0PwZ1w8RnxAyleDD9uGeRtM9PeOoyRJQ4E6ztQLpBKtaSNoSGkuKFz2pCTavfO8N+X9NQz4Gq/YxsJiZknMPfYgv43sfNjMlBzV+uzq0sRM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731412553; c=relaxed/simple;
	bh=QOl4Hl6CNicWEDiaWUt1SRln8OvrylSuY5V8FofAcUA=;
	h=To:Subject:From:Message-Id:Date; b=VsRRhlZHgtnmN1dpAj3sylpjH1W33mUl4X0WN2jNRN88dslQMRLHtMrDv/mmE95IUvRZ7P0c70gRLuPZMLWNvHZmZG7qUyBhlNcT8fX5PG9wZGndns8oIURO5w3gs45vaWRfBIC/WhvWjqu4g6usnUjRs7n3XqPAhWyo3IUE5gg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZydSS3KX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZydSS3KX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A15FDC4CECD
	for <ddprobe@lists.linux.dev>; Tue, 12 Nov 2024 11:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731412553;
	bh=QOl4Hl6CNicWEDiaWUt1SRln8OvrylSuY5V8FofAcUA=;
	h=To:Subject:From:Date:From;
	b=ZydSS3KXkmDs1MZ2bklePKuonNCATcSkDfp9RxhC+dUMhU4FKZ69lsvmaDOIvX0qd
	 mljp20B2cguNLutz1AKZyPcOgLuqbqS9lUJPkXz4smxVERG0DIDhCUkhwDKmpM7HyS
	 i6NY0d9iVsXMAraGyKeta2uuIhP2G2X+oTpQqXKbHWnED3lcs+/rh7rf6jaXTmPXMy
	 T+eDHXGxriuatTAn4NKZ9XCXeMd8ry3LCxLScml3GDbR47qfjRHiG8D+7nNVK+53Hw
	 faAnEElMUVgS9Os4rOSD+JEz7VSwsDndFAkw+w16w6QyWJY+V0ckWHUX0Y9Q76ZMvd
	 TTPYPqhjAf29A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9236AD32D9A
	for <ddprobe@lists.linux.dev>; Tue, 12 Nov 2024 11:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173141255359.10146.8406905220635026055.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f78eaba948c849713d49d699591d436500fea98b63c6c34b8a688c9ba3144564
Date: Tue, 12 Nov 2024 11:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1731412553
