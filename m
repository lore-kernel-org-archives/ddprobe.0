Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 889C133893D
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 02:04:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780625074; cv=none; b=Hj1eehGKoLPAwjHmJNeNDdNJeEXigszYN37lfMOOMPo8MKo7qd/as5s7TB4BaQ3jXnPCSat13d43FwasY+98d5LT696e8N34MundY+WVhalOH1OS4wkQHPR7pAVs4D6Bf9gh5WustzhcyZlsyF2Rsssqe6O/vXE7dvUJSIootos=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780625074; c=relaxed/simple;
	bh=SRW4eLWebi8/xcSBD8Km9X8hIFGqpzi2a/1K+HqL7FE=;
	h=To:Subject:From:Message-Id:Date; b=R27rq/AhDCmKusjLNkZnp2rU4CGIpr5aGaj7HWDklUutNiepmOknwZbJyEHYVlf/T2hUvtcus0Pama7CsAuqanHXy+zHHUrXnMk/+vEDyJP13ppn8agLyDFg0hlBmH5Ct6rSSYnooS/+TzzhOiOBf47BpdKI9wdwllnW7kBsCMY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TOGWJLIX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TOGWJLIX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C884CC2BCB8
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 02:04:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780625073;
	bh=SRW4eLWebi8/xcSBD8Km9X8hIFGqpzi2a/1K+HqL7FE=;
	h=To:Subject:From:Date:From;
	b=TOGWJLIXaDEcMEOqW332CNz+q/+DB1dBPHW1EQiARXtu/LLvsldccyu0V15Tooc3+
	 pz6hfO/AcKqm1cFk3opCjmXNCFn/olX9QSuOHPcUVbJweHId7WfAzP6MdKl5dRHoo1
	 q6y0uD1/FlEUQ4ehtsckbxu6jj/ztkyfdAxLyjHutHy8uJVo/H/onQHt0Nl2ySmULy
	 gXKTlQXQm0DPoTZ2yU/+K0U6Z3GxbNBRUGVkkBq0iYx2xAu7A3X26XPQIZkvwM0fCU
	 vpmBv12l2NkD/zDdWygUuO+4X2h9B807sd48nS7Y+CcY9HKGLtPRANMhXRnH4ye00E
	 7zgDO92MxW1fw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC814CD6E6E
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 02:04:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178062507369.30296.7488122013913410171.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4d18adcf5ea8d6161a78024c66f1826d204bd2ef57fe7475bb1972870784dfed
Date: Fri, 05 Jun 2026 02:04:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780625073
