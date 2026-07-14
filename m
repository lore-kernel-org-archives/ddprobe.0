Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D1BB9377A87
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 18:38:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784054314; cv=none; b=DDCYqkBo8TRhcZBP6iBwX5FH2JEhyRcg1UwKVd2MCV2EKV8ZcB7tisLKxnSTFllpwJE+2DiAtlgLMTdCd/2fETk66JJeLsoiUCFUj8T3qB/RNZ5m+ZmU4T9NTu2Y7hh47EcEHFg3btuyRyt7bpaiCUXVMYmJBFgysQFA5R4tlKc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784054314; c=relaxed/simple;
	bh=6I7aAWsF9fQzP14Co/apUJhLjRNtcaIMHzZmBuuXgj8=;
	h=To:Subject:From:Message-Id:Date; b=I39O9zFUJBPjMtOmt5yELO5KRWRPnMVKipB9/NVRj2kdZi4SPyKSyTINavuqYdRKPZXathlbEJS26lFRNmef0WrIi4PwVVqePJBFme+uin1Qm2fNJITJHTvTDIdM62jmRJliGhKDcwDHNutu/oi4NC/a9jxEDxWb3Ofh+uNmZBc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ac4jx1LT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ac4jx1LT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DBE13C2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 18:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784054313;
	bh=6I7aAWsF9fQzP14Co/apUJhLjRNtcaIMHzZmBuuXgj8=;
	h=To:Subject:From:Date:From;
	b=Ac4jx1LTwpenPhJOcckJyDvbePcPyG3aPoBE1t44H2PSJ6jP05LwTlCsO+tvN0TGL
	 ERLbFH5MGLHAuuDjMD7QYsCJ86x3yP/RqLf+6pRwAkTSZdeljBnrB/hIFjmY345KV7
	 5YVQ0DDYdZhp3/IViDco+UEo/cg7ow2aTy3+I9lQdDkDHDGfwPWU9+CPSeWDhJ+kpu
	 mAFfpdaHJ8I0SAE8N6HwPxzwNX+Oc9iLsEeuf8+Dy4QDtXSQG4Gd9p0Cm6qrqTy+QP
	 zymA1YhKbmLpMLI8SX7jtqkOvBh7dOZRq359T/6F5Q9XUWIqHCHlbEEv3IE6Z617o7
	 naY5snkq5+BKA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABE5BC44507
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 18:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178405431369.20391.8463279192031378237.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 60333a42768171eff9009c17e4ac5695b1b3083cf33585dae999c89a15ce0fcf
Date: Tue, 14 Jul 2026 18:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784054313
