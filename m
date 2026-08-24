Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B21242F7EE3
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 01:20:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787534435; cv=none; b=qEjNktS821j5aiRVoj+OmEEype0c280cTW9ALdBcHmHoqn568uzocR1spaG5XcYLA0Eo4tQ89VbIIMAb0AUlQhjIr96R24isGHCgCTGPpBcKfBdwN1fNkNLuBpLIf1eEEwH3sQb4BjDJMzcg8f4Sv/1LIwa/swRAGu2L9my2y/w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787534435; c=relaxed/simple;
	bh=deDW05Da383829+3Pv+h66edkR8/XKqzm26h4GGFxu4=;
	h=To:Subject:From:Message-Id:Date; b=R19eu6p+ckp0Gz7cMCIHNkFblr1jxjyt3O7YryOmN1XSH0U5eFyRaCQA+YaZGtCiZoqBzD1VC4VjHVqJTjgosaVEI5ez7zi/9XMiGRlCbOlVCRwqwUlJLU4VCKFqrVu2KsWEgDXhNOC/vNfBKMSXwsVEDnqDtnVru/3/+JihgVk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W74Zqsw3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W74Zqsw3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2B4CC2BCF7
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 01:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787534433;
	bh=deDW05Da383829+3Pv+h66edkR8/XKqzm26h4GGFxu4=;
	h=To:Subject:From:Date:From;
	b=W74Zqsw3LFDdclIKEKh2HAG5ux02MyfaUsNxRSyIrKSaL6j8T70lhfm9NA09dw5IT
	 Z0swbkOLKnPuPCHlqBNkV/lrMcaN50KIM/XO1x8XQvmNG3duAQC27JewDzJTtXxRBC
	 rZTI9tFPQEAOyP6FYaVfQX7c5ndS3jASHJka4o3d7qX4R8CXoRU0bXWvOAqJiFqZ9F
	 t7RmsyQhCc9GpkXDrBvmuijZHffjdfuVjrfwLQBSL50bt/fuWYFQCJ90oHWKHF3HTX
	 ATbIPsyZbeu3cv4djnaVawn1WAtN+lhwIF+54n2wFnkR+VtPNvtmtssltrH+pKAz9P
	 Tz67L6REv/riA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0A0FC5DF8C
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 01:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178753443368.21091.3490480857469363918.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b3296ae9ef7c055f6a2441cc7f17e378b67558da5b9756cfa36103af19bb6e07
Date: Mon, 24 Aug 2026 01:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787534433
