Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E06D2DE6E3
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 01:58:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783735114; cv=none; b=ksrj6d8aY0m8XFj1IgywwxpA+7uxjcT6N1ql2V1nyItVuKpq3q/YpSisKuBL3p2tMLgaWjCBYhYrAIlIBNXQn/U9QWmCln6m4oCW/GTt5MqNlm9w+PqMBKFTpU+FYit+UvouJiJSmjOgaPdcRl09PBcf/luifBwREDVFpDSOYVE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783735114; c=relaxed/simple;
	bh=RwDPMz2pdMAXA5E1vnLLmGOx0Pu5p+60Ew78t0DSoI0=;
	h=To:Subject:From:Message-Id:Date; b=YzRWTemZzEDcVO0AY3PzBzFbFsrzoKlHyUgyfQ6ZtoT+YpeGytX6YY3+JeeltjDgpCfQTHFIHQjMDP5uYgH9VWRfg5Vp3zi7EUkooT4Fs4WrryAzr83dn67u+yL23unQ1gkxF3nVKNzA0MTYw63s2SsbsUO0zLm6PQZhsEIkmCE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p9ufkBfb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p9ufkBfb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBBC6C2BCB8
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 01:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783735113;
	bh=RwDPMz2pdMAXA5E1vnLLmGOx0Pu5p+60Ew78t0DSoI0=;
	h=To:Subject:From:Date:From;
	b=p9ufkBfbSupzC+P+IC8+zBbJ9Za82IGBF5ooqcPwHvDz6NXpxuyzATgb8Gk/pRajx
	 bg5JCS37g5fzYCMIegMgjF5WtJ73FPym1Daa/rvGiAx2U8Xj/FSlEMm4zssTH4AsMT
	 vPGGQO1TTeJzoGx+Q79iDtWA1P6dIx2Oq9KJE/aJfRahRgH7p+/ySYzePUEQVHw/EW
	 M6nchMc/Im5rYuWBc3zMDSzTgJwtc/ArroHttARlu6JoGzOZ+y+cqY36yyvEfx5wZH
	 L0A8sh6rC0cMr1+Nla71LU0w2afRfUzjtt1If/HsJNHokUs99XIO4K7A/IEiKBHEfO
	 pTsxrFASWgsNA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9282C43458
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 01:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178373511368.20216.14092772720309908166.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4f9a27c1dd56acedb8beb6e71f86b8ee99fdda3d9121354ce426204f70838101
Date: Sat, 11 Jul 2026 01:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783735113
