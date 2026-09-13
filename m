Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4105F369D74
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 16:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789317634; cv=none; b=PLSJDypisc12WQdjHd/imqoU9ARCdnpNRwYrvGX3Cd9XtklphojVf7nSN1tPRGiLW5QS2hkje0Mv0RNFc8HtQL2lIVMMRMOK3W3S5YK5rxAaqlVI/2fyFD0+TX8ZfgksI99plw8IHBKNTu2i1fRRpwpLEPpbcG+how9B8tfnvAQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789317634; c=relaxed/simple;
	bh=Zd2O0Dtl/Sq+gb+ENJ5wrYkB28n5U42h1svPkq6V58k=;
	h=To:Subject:From:Message-Id:Date; b=A+6hSkTSHYvpxCm48CQnQwJCDGZlrO897b+evMkg7vVeHH6hKBSusnZlTO/C4SFsNtAbv9y78VQ9duI7cZP+yi9m0wtWHDhQp395yeWYlOZT7zNBZCwpDo3AsyjJSlhMM6u2Q8EtgDdbNUGPa2V269J9owNvtGoiG1wGI4maHno=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=unpPQZBz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="unpPQZBz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C972FC2BCF5
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 16:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789317633;
	bh=Zd2O0Dtl/Sq+gb+ENJ5wrYkB28n5U42h1svPkq6V58k=;
	h=To:Subject:From:Date:From;
	b=unpPQZBzDek7+EglYahFWs+gyXYjxsdtyvzBpbJLcZesvdDbGxsG6nJ1g4nbt+s5f
	 KMNtNR8F5RFUqBFdtkFusKyKvu/RzSfLzkB9OtK2yDsPmhg5IfhmcXZ5bVxdWy19kX
	 HxDd/cP+3Q9tk0UivrYSvbtuIIQEfOclgYtjTRjKyK3tl3SVirnqOo6HVtXQzLnWoP
	 Rx9INAiwmrZ7jT3K/1mmA95RYlK0IFLyBVLs1x7h5FxisDCrvxWMk0Qm8fxa7zY0e9
	 qbNMGsW/k9dT9V+x3a7IPA/WWL8pesGAJmlyE9fv7Md3N+aKn9YvNH67yzfPQ1f5Rm
	 Mjx++HjR73AnA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A937CC88E63
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 16:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178931763368.7216.10069418319084975294.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e9f362c74678a97479946080185155fa43f36bc770a73110e2e1da510fa11611
Date: Sun, 13 Sep 2026 16:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789317633
