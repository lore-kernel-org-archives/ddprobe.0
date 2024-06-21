Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 63D061667CF
	for <ddprobe@lists.linux.dev>; Fri, 21 Jun 2024 00:00:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718928023; cv=none; b=qQDKlpkTvS7kgci+hu+piLq8r0OIkew3ml/JYrEvE/POR1Q+dxA4FpNigBYPw7iwKISnWt2YhzEDj/jLZ7G63oqSsLKWMrJuhL3AH3fAGGTm59emm+elV2rlGfmv/U+RrkutxjNHAQ1UIxEfxYUeOULa3mWYO/FOawWi25KY34k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718928023; c=relaxed/simple;
	bh=K/MSLJpFJ/biOuOi69XSZynQL7JkVvF5yoiiciZVezc=;
	h=To:Subject:From:Message-Id:Date; b=rCOv0wiGdIkigQX8Lkf+OyM8WDsFkXMO6Q6DkE3+FtFqGSjeey0ND206pduxkYSO0VfAmynr4pS2oiVSH4DFYJoRLrmESbPoCwbfFRcZw14PL1kBZcSFXNoUVJFU1LLvcpQnLZGTdhw3Zt7Kz505a2XXdSJk/sWp+Mvv6cPtuMM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=j+FQ7GPR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="j+FQ7GPR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E37C0C2BD10
	for <ddprobe@lists.linux.dev>; Fri, 21 Jun 2024 00:00:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718928022;
	bh=K/MSLJpFJ/biOuOi69XSZynQL7JkVvF5yoiiciZVezc=;
	h=To:Subject:From:Date:From;
	b=j+FQ7GPRKLqIGq5l1QbbcmmFgzuNYxxyKlzObGml6gXFxk4ZAbi6CmMs7Cs0z9K0K
	 FiyMcbXq/n0RifCB3Fr303KKUHNQAb0BuaLwVpmrdAuiuCLrcO5JPa8xs7Vc1n2I+y
	 cj8zdxihIyngMuG2Z/x4P6QBAe3zEAnmhebk744cAUeGqH5gmbGWlzgN2v9tRTVFNd
	 FVtdBosA1bh/hVFwguPP0BdV+ObjAQN6Sk4ev1HVDyZYoHnnaFIxNtWPq+O+6IZCks
	 pcr5krCm4Yef/Eu6blOq9Y7BaiLIzCqrP7T669ELq99YHVsi0UXd/AeL79GLIBWng4
	 mLZzNb4faA/+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CAD41C2BA18
	for <ddprobe@lists.linux.dev>; Fri, 21 Jun 2024 00:00:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171892802280.23985.10392229750191757853.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 660ce5fa6a7311a4d50576bace3a25acea960b2b2306329770267aa2aedc7d0f
Date: Fri, 21 Jun 2024 00:00:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718928022
