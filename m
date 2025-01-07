Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 63F901EB9EB
	for <ddprobe@lists.linux.dev>; Tue,  7 Jan 2025 11:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736250354; cv=none; b=QRqlFAV/Eb3G7N7jitd7L5Xw2fAqj+BocOMRyA9KKoJGDpuQ0/+6nsszU0VAWbKRr8No60yviKdjnOPsl5RxXXhJ0T5p3ZgYaO3mZrqGVC+fWO0uglrSezpyM25pB3E9SP6hNRKL1w33WcomShrhBuVLqGoatgQb71WDPfNp0IA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736250354; c=relaxed/simple;
	bh=2Y3Lrk6GV88bvIr3fQ05FnKuomClnjm22Z4jRWFSb6E=;
	h=To:Subject:From:Message-Id:Date; b=Vbuo9RyAqNOXEVopw8W+Z8ndZHBOJPhYkiQbX1iw3DJA7vnX/TZBoizbE8aHmy08GGZmlChlixFE3Y9ulcxPKVgvJT5FHo8m6v9oAEBt3XAAEsUG+mN12ShQ0MXlBBnucggYmiZOpGLy98UhvyPESlQvnOJaIxm3130ByCvU3ow=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lRf0PApI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lRf0PApI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3CBEC4CED6
	for <ddprobe@lists.linux.dev>; Tue,  7 Jan 2025 11:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736250353;
	bh=2Y3Lrk6GV88bvIr3fQ05FnKuomClnjm22Z4jRWFSb6E=;
	h=To:Subject:From:Date:From;
	b=lRf0PApITrCt215tZLSVQqgXg8djhOX38ZHbk4pPIu2EKYItaqIGP0XeL656MZobf
	 2RrGyn2qas3mj1Ati/Xz4wlcBFu/RgyHqGgLM0IrcsjHUoVD7rzRhas3eqsoby3hCD
	 A9nw6POGT3TEmdzzzzDcOyPYBXZp1AO4YPZtYLfCF0Oh5MWopBRhGw076dY6lXQjKb
	 5j1MxMa1VugOkqeKzO2H06qjoRvjbDySPsVN3lKmxlnbWmfXFNIzDex1F333fdDNKD
	 Cp+C2d+mRidnbWd6kuVEZ067JgbOy9WP2FiTtDSTmYPKEKihWSKab6aVOAIcO0MpEq
	 WfJsoXzm4F4bw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90EC3E77198
	for <ddprobe@lists.linux.dev>; Tue,  7 Jan 2025 11:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173625035358.8415.7513051416234705725.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f01bb88ac0a112c3486eae68189f27fdc2fc8087c0cac696ccb5f37ccce2aa72
Date: Tue, 07 Jan 2025 11:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736250353
