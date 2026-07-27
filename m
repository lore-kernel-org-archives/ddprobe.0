Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24F9B3E316B
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 22:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785192634; cv=none; b=s38oz8kh0MdUd++nYzD3CCBN8HAic5KbD6DHaOF6UgMHdy4jXHpw6kzayAtTCNVUCdwN5U/Mj8luYToxvZYuDMWaggR1ls6KI877FR/q9EVN8NY0dsJkmLIIqjYfC9Vax7LTj9JOl20UijUcOrTWhGdxJWADCAWqPJQRoRoWIFw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785192634; c=relaxed/simple;
	bh=OhP0r3Jojd5OMcUjZ+A3DfVn/eWVVNAcixwcCSQL8AM=;
	h=To:Subject:From:Message-Id:Date; b=NBi0l7jXSKVvf7k6ab0FBrdj32HMMKpb4Fk+oRst9FOaSNWTIGVlTOfoi6Nx9PYGThAJlfSMMzKsibIFWqidqBBDjVzaruhN3QCL7PTUNO3BxvfNIepczmkfSYHmh1mMb0cIjYRlj/opQ9/gbzUyRdZtPbm39ek5sn8edSnhhYs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F5vv7c68; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F5vv7c68"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFCCCC19425
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 22:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785192633;
	bh=OhP0r3Jojd5OMcUjZ+A3DfVn/eWVVNAcixwcCSQL8AM=;
	h=To:Subject:From:Date:From;
	b=F5vv7c68aYWAjFVLnRrW49GevKy5xtN3t9ZRkeRIEO9CDE9pcAXD1Oxt0hmTkCqbv
	 iTgk7l5NU/GO14yofyoPJJa+/4n9Aq6AEv9pDTCxnZAnqQTmczxu8YFzWLAb0L1u9v
	 pjf4HWfoKCTXfKhq/VY7XTvEZo/kArYeT8YO/ui5IJJktUb25SwFPqwyuRETZSp8k0
	 DNc1+VtIp7bdXLToOCFhlCncx1+IJFXawLrVljJeTfjx/QhQJpsfc/tdOPGLTnwHpU
	 uG4Ktqujl1CZzGme1F9ijK2KXGoPv3IvYOiiCBOBVNOsCpH//CMlABAFkdfLY539kD
	 RFFy2y+xwziuQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA282C531D0
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 22:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178519263368.2068.11300201850036337873.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 30ae3b86902313d1493eeb37ad10369a20f9e04b577aeae83d3515968852ffda
Date: Mon, 27 Jul 2026 22:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785192633
