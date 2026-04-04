Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45B6D1DFD96
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 18:15:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775326534; cv=none; b=rAyo/SW9kn1tzDi7dmoC9hdZTvsKFqjX16zDyuAJojS5IQkp7vxlTpL1s0Oy3xx2FADcz0Jf05W47c6hkePVnLOPan9dp47cdgfolaPTT221AIKt2fPUScZvCjZ5aBLRpb7kj+FxGfk8pfjkr9+iwxEHpzcZsG97Zpyw9qZsyBY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775326534; c=relaxed/simple;
	bh=CCozFVBNtGNC3BTpD8OJQI8WDZKKnN5Tbvi9Ry4qMzw=;
	h=To:Subject:From:Message-Id:Date; b=GkIMm2b21vOlv4uVIXh983b602MQl6mIGJ6en6cb/H+2VmXkRJAoaRiMnnmmq66rvZcP/Y6dt+0sRE0g3wtMWLKFq+lAIL5y7m37nXiXhlp7nfxEECu3Jiq2oSCZ1M03wAvV3LEZ7CpRAJnHuikKqxBTFEwRWrkGqrx19dcAwRU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a0DXnXZj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a0DXnXZj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3358C19424
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 18:15:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775326533;
	bh=CCozFVBNtGNC3BTpD8OJQI8WDZKKnN5Tbvi9Ry4qMzw=;
	h=To:Subject:From:Date:From;
	b=a0DXnXZjO1DDG7+hs2U5Pw7imxiGPkePvVbd3H9DMdyJzBa8zs7D9B6yKc1gZW129
	 hNUsXoXFHcxNrQREYvTdaQ0xziHJqXxxLDhd8s1CNxblHPM3Z2Ve7htu4HfAMiI9bW
	 hwYFOECOl6au17uyr99wFcP8924rNLSkknTOqvuIfjlXKIRZzERUkL4FVlfrXwkos3
	 7MgevPK/pkkeh9OjlfmSBX5ZU5U3IoZnhqzDKMntdjUYYer6Mjer3LxpcoJxUO1BUu
	 SkrD6ykhZSUnL4zzZ0jiYWYTBX6MLHOc56SiYQHJ2Irbu0zZJqQ/4QRkDqpSgaw8zF
	 +xSMYcE2NeA5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9CC7E63FEA
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 18:15:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177532653368.29845.14832581511920714075.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 966b693066edfc77fb457ef1c7653b62c001affe9d34fb560f897a21523dcc24
Date: Sat, 04 Apr 2026 18:15:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775326533
