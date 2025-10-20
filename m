Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AB782D0C99
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 06:09:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760940595; cv=none; b=Vh2f+x/fM29FhWWmI/BSBWlghh0QZUGRwWcq6ExsU/qLdcAJBpDsY/1W+z/PRjhifS5DlClBk5XaRX1NC6KgeRlvpZfKoAB/dit3Q6hUsp4xwxPojw/ZqJbe4xXfNotXFE+yILd2qxrC4yFZeQ1OOhm7dAWOxY4nc23mJqYJ+rs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760940595; c=relaxed/simple;
	bh=3VIQzHTDMEdRxBOwAktX7KHenad5lARuwp+r9RFInuY=;
	h=To:Subject:From:Message-Id:Date; b=NQQQRNzRSL6BxBFA8gdKCKF3gbtApmgXsTPP1I7l+k7ct0LK4wHhkwL+mYP7/iLfZu3/fAI8G/bMr/6GHN6W/uhEmFm/zsX5TZX1pXW3sysQQaFD1fXpIefsCw4UcFD2pF97WFxRH/V2OvylC3QaE689U8zIASEcE9de0YnU0eg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hQ1P7RBg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hQ1P7RBg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2B67C4CEFE
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 06:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760940594;
	bh=3VIQzHTDMEdRxBOwAktX7KHenad5lARuwp+r9RFInuY=;
	h=To:Subject:From:Date:From;
	b=hQ1P7RBg5J3wRYWUsHb1mtgF0NmRpgSNWgEs3iLyhAVEZkgX7t9oyY/ZWzOUyG4yK
	 60QUHPm9Ty6ahNSnbb2m0gWeuj4EpZXUhjWmvNlZ71g/Uh6/qwAnFaM4zy0i85kb/l
	 yXjjgh9ULhueOpMQ/NT1zC1J81x3e3a3To9ZcN8qBubvFD42kdswSRvW3n4wzhilYv
	 bJwbc5ahy1iUmAG6mCMWLNnq9aQt18cFEUU1X2/QcCceyBQpBMiNFdMPq/+vecTusG
	 qpQ9JbtrIQr7r/hC2SJfTvMDeXfx+n2RyIgx/7MSYbY8uMu2ftq0SUuwgMvOabug+p
	 OPvbPu4N1QTSQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 907CBCCD199
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 06:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176094059358.14294.4776752994403202715.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 82245b1eef7877938fd2fea0c06b920c439c11ea2bedcb68c633fe8a3c37db0e
Date: Mon, 20 Oct 2025 06:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760940593
