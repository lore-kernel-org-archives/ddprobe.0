Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3248B298CAB
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 02:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776220054; cv=none; b=aagRpfcygiYoYPaN6q9JATK436YfPfsOHg5lkYh+8UT7mQalbI1QAsgd1Yq03HZ9P6JXHbtZwWTcR7O4ZQ8zuJid8HCYMKTN6JusaOdjBs3sKCTYX+Xm9/Xdnla+vo5u5BSbzz7j981qR/E0IJl3E7sBYFli50aDBTLPL4iI+qA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776220054; c=relaxed/simple;
	bh=JbrN6OUV0T0CVAwTr+zpnBoWOI2ly5r680azUwoa0pE=;
	h=To:Subject:From:Message-Id:Date; b=RbucqFczIVx83hkLVoffy3/jRrs7mPCh5rdUR2E6/V8t17JXVkTQcrIcIDLrLoiGsz1FyvS03DyCOoNgKmrVSxQc2AoDeCa9Ig3ikjEdUC9CNkQ7FaA/7DKFQv2Sb3rZu1PQ1gW9rc29nDcPTdkJ5MiZasbDaeA6HnuLnKFvX8c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qK80+RMe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qK80+RMe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C309FC2BCB3
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 02:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776220053;
	bh=JbrN6OUV0T0CVAwTr+zpnBoWOI2ly5r680azUwoa0pE=;
	h=To:Subject:From:Date:From;
	b=qK80+RMeAnVrEhT4FBjIr8yLWVreE1Rs1acfEdlGlkYCKticoRsULOByJ9LEdUJys
	 SvipEifYz6njINUSOYphyN/yJKbyKVnkwYCfHWKwHIoG4DNw9IYxzkr8Ryg3WLTLJS
	 uQKXgn9hH6UINtaJjBuY3dFYTHpq3jk33Za6X7lbyIPZPTDXCp0ksCiG8SXY9LmQSP
	 0sqM41KZwWqERQE+Xus51mFOMI4Qe2PxavP7CT/mlyYYv6Ddf5vX+/IY9+1kNljWC8
	 cJJeFcRf581s2/qN870uo7R/XyiHJZVNz6XR4EU7Ng2zIx4av0RyhhxZAA8C550RfY
	 orQBqQB3booVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF999F9D0FE
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 02:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177622005368.27573.2498762414668217786.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1e7add201baede4dc329c22ac6c468f884a8b73614b636c92c897f2cf4bdd243
Date: Wed, 15 Apr 2026 02:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776220053
