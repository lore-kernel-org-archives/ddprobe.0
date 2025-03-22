Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D94917BEB6
	for <ddprobe@lists.linux.dev>; Sat, 22 Mar 2025 22:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742683194; cv=none; b=nKxavtmOCxuOi/vqreYCXUAdxv6si5Hsf6y/2OGPAA/P8+L8/ndsIsDkLsl6JgQReRTWThYMXXZsGRVKYVxhAK9zE37roDrteJ4YEjkhiO763NNjcjfUwWAGQQODFHSNhsOLxH+PkNRsraxmTvzkwe1DQagY2tMyB/v8UCcp2XQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742683194; c=relaxed/simple;
	bh=bvYGgtZA0exieVL+NcfMA0ptve3pAOmwX5j5K9jCKVU=;
	h=To:Subject:From:Message-Id:Date; b=dkq57vgJ7xYPnzBj7p4KCp5jwnSb3o5RC/QD1Hk1S+3qQ3HhoKgWIpLmbu6Ta0fAcMZQ3QAkqw8JGkZNBa+Ky+cyODHg/gcsYT2PwNIMI13qdkTxO9VaaSZnWsr0bGvP3jjNeXJR79VP6uDwGIuvwXaec10RlQysGgyvDSr1B04=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VRWOoNKB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VRWOoNKB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD5FDC4CEDD
	for <ddprobe@lists.linux.dev>; Sat, 22 Mar 2025 22:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742683193;
	bh=bvYGgtZA0exieVL+NcfMA0ptve3pAOmwX5j5K9jCKVU=;
	h=To:Subject:From:Date:From;
	b=VRWOoNKB1zUosmVUrVnMAwrEbx6jkLebwch4/+PyZ8fk2yn9YeB+WhytWoNecmx6Q
	 8KPLThFAHLvtKsYu0yIXg6fbGGXgLbTFwRfTw58kmxxx77kL/u0J01cgIJUzgvRkJ/
	 z9S7E7wgNccaYph8zxHUME479CgMuSbxB2DZTdRLfbjbckL7IdT3My+5zi3+4ZuhCe
	 XqPCzTpJZ3f4InBDpHSXg5kCWUQCI6QacHtxFKwrKLy0sWmB35pgIycct7mm4FHnAG
	 eOY09gedSJ/Q8//y8R77at91vg4Uh7a4dL0ad/VtLe5V9F/2Aqlwaopuencx6ureLA
	 zv+UgiR5OMqSw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1B63C35FFC
	for <ddprobe@lists.linux.dev>; Sat, 22 Mar 2025 22:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174268319367.10276.124984232576771970.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 410247be074d8b1806eb0d70c6853fc74821b9c86b593e92e1b30647af75714d
Date: Sat, 22 Mar 2025 22:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742683193
