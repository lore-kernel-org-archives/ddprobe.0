Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2350928C5A6
	for <ddprobe@lists.linux.dev>; Wed,  7 May 2025 18:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746641995; cv=none; b=QGlyiLoYALPWULg68Ibxn9ZldA8eCQtsWU0FdfGoaTiBvBPCxcUNnk70er+d7LYMl2maoXUhcU5BWnK/kHY9L/D90mvMhc/r9NotwcPqCbLEo0VN8t5OrABAP0NzV9sHACbTPF6fdiplpASqRs5ToPEsM3ephMfDpfA3cuz2Gjc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746641995; c=relaxed/simple;
	bh=0cOp6i6YijBxL4c7S4LHwnO0e0rJFagZUA0eTJHRzP0=;
	h=To:Subject:From:Message-Id:Date; b=OF1oeZ2pIUzfLBRYG4EpqUEZca9ROtaRmlFVmiAS5mV16IGKtUwaTSnxw+nzX6BCqrA4Xs9jf+PaFKSp6+wA9Aqk1TO8sQwcq+Qg2VkNsOwaIf045PjteX+2h0EwoQ++LZHHt/Z0csU5/e5kKI6KdhR2yR7YeTqk7hhaqwSkTHI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jArgziiq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jArgziiq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E5F8C4CEE2
	for <ddprobe@lists.linux.dev>; Wed,  7 May 2025 18:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746641993;
	bh=0cOp6i6YijBxL4c7S4LHwnO0e0rJFagZUA0eTJHRzP0=;
	h=To:Subject:From:Date:From;
	b=jArgziiqnrz3nZLBCtchro5naiptkLaTy1g4vLq8wXiRkNK0G3M+kPO5aw4SxYXlL
	 wjtCYGvXEmgvKY86egN3uVHgCSqeO9Son2MslpUxqgcS4E7PRBTxtK+RBn/czMgbtz
	 3/FWQCddJB6ZOIMAh+OgqPkz4kgtA4gWTFwYM0iDKGxOtyvxzInR0o2+v0zBcVLUdu
	 SZ80rr2BKfTD3sPZzpUMtGe/4izRlXMStlWSa+T4U8nF8ccwUwATipaqSdDZ8fSyPy
	 D36j9n4FlXVJ0sXVe/qxb+Q8adupsEvvRWOAPH87oOdUYK8jXvP+D5mKURW6pUpI+5
	 J92NyxqMOIvgw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FF8AC3ABBF
	for <ddprobe@lists.linux.dev>; Wed,  7 May 2025 18:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174664199358.18755.13706063492789570836.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 00802a7dcacee82d5ca16d08f7f21924484240e998017053db7155cc735c53e6
Date: Wed, 07 May 2025 18:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746641993
