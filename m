Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56BA9639
	for <ddprobe@lists.linux.dev>; Mon, 15 Apr 2024 00:39:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713141563; cv=none; b=uqr8yGeuLYLAx+BWr+LYBGwOlGxZGnpirhMIonr8Ks/By9C0CC7jxFA1/1LWF/0AYtRKx2O83+PsSR8zwkboXYHzkQ0+sDzMitQdz+Q54zdw10V4zFabdZOjswu82lNjrYd7yM/GbCzw2j5qfmv0pOpEGhQr7ZCq2t0P3juEJlw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713141563; c=relaxed/simple;
	bh=ZIj4J3ZkKfSEaW9woAWIaj5FgkXhf4e5lxMYVghCl+Y=;
	h=To:Subject:From:Message-Id:Date; b=nBiJ/Z/d2I42i/024ImxR5tXz2RyUjtq6/kNQDwNOzzYvWREE2s5djLY1dc4cODNP44nPRiffNsg6/YxJQTbXUBZR7l/aKoBi96o3DpNNJaUdsfMB2xhR8MRbIVcsIng8YPQOi7DF0wcofkjC0256A+jO3vSzNOZFqeAnrUr8II=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rpkA3ajj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rpkA3ajj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2282C072AA
	for <ddprobe@lists.linux.dev>; Mon, 15 Apr 2024 00:39:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713141562;
	bh=ZIj4J3ZkKfSEaW9woAWIaj5FgkXhf4e5lxMYVghCl+Y=;
	h=To:Subject:From:Date:From;
	b=rpkA3ajjfo1mFTc9RG/LeGZVLMh0wJsyvf4/kz7g5wz/G3Ao8aNvRFAS+ovH05paQ
	 nQEhLKK1QN0/4tbWU9r//VzWsbdbtnGfUFT89aPlWu4v52yWrebp0yUhvnCqLTDk7B
	 TpTc1LPjfeCPhIrn/l0RC3ddKmNySdRwihMg7tEvyZ3I8Z3EPvkLYLdV6BmBcQgoY7
	 LnIBo1aao7JKRt0Xvg7b3L8e/1tINWtqSyh/9IIK0qpd8zZI+rUWaKTaNvJeH+fYcL
	 eLdPzUog3mSNW47lJNtaW6bKYKVUBOqZZsOWGP4u6laPGTv89TaBpGW87YnPUoMxR7
	 Px7UCikibi3Hw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C34F1C4345F
	for <ddprobe@lists.linux.dev>; Mon, 15 Apr 2024 00:39:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171314156276.21644.15067702504356852487.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 359b3a1c524cd0dbe683644ae79d6073ce5b0025a44d939ea40dc0b449a8b447
Date: Mon, 15 Apr 2024 00:39:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713141562
