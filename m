Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10BD83446D4
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 21:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768254834; cv=none; b=GFwk2cvNEvX3W/juRXzVAYEh6wqHZxh8SsSmrq3MEqqGHnE9Td+eliV0pVHzJqy86UlS7iS7X6GXd5osBJEqhXX7IZ42c+TH1PdD4gUcS8dHhIOcob1YRK/tDffIIOZenJ7s498xNd6VORgjxNxr67mx0YriAQ3m1q3S+Z5OuPg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768254834; c=relaxed/simple;
	bh=2GmAI6FUphsvlm875gtnk62xSdvjWbDcPYCZdZF29KY=;
	h=To:Subject:From:Message-Id:Date; b=A9vT6l4K3GTPDIaN76IAv2e5JjVgkAiyvqbBA+7uK43rlnf/F834B2EOX+ToIZTI9+UYyauOcSuPvgjTF+vzCz49tjsNthjhSZ4m1mgiHaiH3n8M4bSRhiHo8hUfiEIwxEAxNUNDuQDSbBhMZbokr/vfvNZ97aMfPFGk4Whztn0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YzsQWNn0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YzsQWNn0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8E12C116D0
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 21:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768254833;
	bh=2GmAI6FUphsvlm875gtnk62xSdvjWbDcPYCZdZF29KY=;
	h=To:Subject:From:Date:From;
	b=YzsQWNn07pfCA0jKpmryXGt841oBpm06HtZEPTLT6sh8Hv64401kRm9z5epwv/uhG
	 rn64MnVrhWqBrT2oR0fGPtQFHL/gIeeKFz07txd7TAcfJWqQ4bQ7014T+one7vzwh0
	 MkDDr2JIJK+QVOwNuehakHE5L4hYt78+VTyaguSgmr0+szV/v8AUQFgzSwRXbEOlFI
	 EwErE8cLEW4GtDRXDKr0sk7EAcsydgkGoftWHtcxGJro+pMKkxL2qbFolCG5X2/Gnc
	 dQ7kKxd+niq7+z2ALE3PbWo0Pa6efOQUgjl7aHRK9oFLCnheIhQNIHw0JdV8ueysKS
	 MB3kvP/zExmjQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93607CF45D2
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 21:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176825483358.26662.3722591519545489630.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4971dddb4aacbb82821f3de5d8ee5658f7e463bafc522463e6a5a734c2053dfc
Date: Mon, 12 Jan 2026 21:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768254833
