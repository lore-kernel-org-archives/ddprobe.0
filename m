Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50EC224DCF9
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 19:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791055834; cv=none; b=WIsb9AVP+/0PuU6RttwzbVtsui3Fn3WR5eOutgvM3bCqFzeG+99SCaplKAdggcgNTmSjLUm+fiIfPXCcjgd0mt8yaMFNInxzuV+4J9yFMQW0/dGVYMa4h/CF7X2/8qKP0vbkBPxFlUvOUCv6/pkGfF7eN14ioi8JMER4sChN9YA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791055834; c=relaxed/simple;
	bh=WLJ0n5vq+V5fmICvbaR+U2aFwHodgHYipetXCJaeDRg=;
	h=To:Subject:From:Message-Id:Date; b=rKdfTG6rTxYWTkhI/acUZhkI1GU32cpIf7tSvTPPTHAhtcdBtnInF/qpKlTbsW4B7BxAVHu1sAGec+GbMefi73KhEtsH7fIxwCYqyuwudzgfsEg9U/4+JhOBC/qVWKCRWE6zDOzV/n0/6T70prEEtRDVosSfzVkFw268hUhlFN8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YcEAyUnd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YcEAyUnd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3A9CC2BCB9
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 19:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791055833;
	bh=WLJ0n5vq+V5fmICvbaR+U2aFwHodgHYipetXCJaeDRg=;
	h=To:Subject:From:Date:From;
	b=YcEAyUndT7CODq+ANvSIyjP4ht6zCQrR7u5f4xa8R8d7EkldskOeXtTU5UoSAd9tp
	 /Tjp06Px/sBsebhkjarUpx+OmCNneVOjX1UjhZxjCXnASLryOi4lXIKHpjGygXaMNV
	 08zqh/mnYiTnSq471kiMQJzmDlJCDudoEzLPdcflKi/Flj04QvNKZQGKF6jzCVHfZH
	 0CQAOp8Xcj1br6T3EadlvVtxjQy8CiyqVb+bAmHIpqagGVurTNBRPp8H/yfhWZMJp8
	 NPbOnEioQf7XlVqOPbr2ilELPNQJgsEBLreMD3CNnTAG5O92mw15dTtF9bO7gz0fn0
	 +NJhSS917C6MA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE7B7CA5FE4
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 19:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179105583369.9359.368388300831329782.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a2fc9efd3684a451c4801e6a8fe7e5bfa31b4ff7639f185d31cd53661f578faf
Date: Sat, 03 Oct 2026 19:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791055833
