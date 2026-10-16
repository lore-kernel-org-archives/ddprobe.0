Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4375A27281E
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 00:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792110634; cv=none; b=cXXzv1MP0wPpby09hC/vTMORHYuZglBUmWerVm6wZRs1+YolaXTXsHL58Pv30VmfXJpN30+q+q9AMIUkxrpFKQsr3caRKhzIV90R/rC0BPldaq+7h9YHhTW0D/F9NiOF4F1XesHEnjT4jVDdn4tw/N6xJ34ynQWTbfPWOTGL6Zo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792110634; c=relaxed/simple;
	bh=LaGra6E0/IMQs0a0o+Rk64yAbQwUiqQBkvBIGwbIqz8=;
	h=To:Subject:From:Message-Id:Date; b=DZId5C8LRrf7vpaXlm3oMYdsKj1GwIiHMnJVnCdi+UuSga8ZiHOOb+r/PyNopB5O4jHkzZtiIruMRR342v0kHzAxEsWq8SgcCw3KkIi/XGjtX5uDnVfPo498JfxbFZdnBRHIVcgyBfxtBeYekChAu09yiFBnGK4jbBWin73hWB0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vDOnPlTY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vDOnPlTY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E13AFC2BCFB
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 00:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792110633;
	bh=LaGra6E0/IMQs0a0o+Rk64yAbQwUiqQBkvBIGwbIqz8=;
	h=To:Subject:From:Date:From;
	b=vDOnPlTYD7qwvkL7oeykeGAeguHVD5GqLTHNz8OSw7/SOIH03Sy18OHzmrlKZfgUg
	 yYC75nipPfIA48eUlG1cKRB3le7r8XFqxUoCyzaorERdlxD3fZcKXr6b1e7oEzSDJG
	 9y1iD5zi/lMK4REJZY6cBpCYCr12W7PYWz32exNRQEVjBctm0FQ6fZEQF2UWOUvZ3B
	 2NNT9fEEqwZPeDYFyyb7Mj0KLMwvGYjPqxNRtApPCVz3jbgWmQojftFRmdfpiAmiIq
	 oMOxbh4VSsR5iJJGsxca0hUuscAMtqa2okKTtSTkrHAiEH7abSJbndvA+2iLNJxuu3
	 q6vopjJUjMwIw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C02A1CCA462
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 00:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179211063376.28140.15253804216888011026.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1ad3f688c76db0bccc495054ed41626a01a862a33df9a7816f09bfe099189554
Date: Fri, 16 Oct 2026 00:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792110633
