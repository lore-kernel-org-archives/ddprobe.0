Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EC61329C7C
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 04:54:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780894474; cv=none; b=mJ3fnQp+L05Vv863ejUbxFwRXG3b+EdBJCPtAubYFgP0aTVDShpJshKxvBWtf1jiIQhaa05KvGpZTUTFHqdk4asWTtsApUOAUL8zi4Gfg/BabKeFsxP/QP8HuU/lLRlGLA4Kkp02Z5ln4Md9UKwiwa/Ruzi4O4BwDSJiahnspW0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780894474; c=relaxed/simple;
	bh=VbiP8K3DuBtaeQ3XF8J8G9wKNujyrCMfCjictGMOyGU=;
	h=To:Subject:From:Message-Id:Date; b=KWdAi1MyXP+OtbHZVQFpHphGWTkXL0SVu/pVgGbrlewfYabTIeKXm5OOMNpVB2cogtZtuZ34la6SP80GRl14TZ2JtqEQJH3ZLz5x5r8lkYzHTFwX4TVk1BOAX6iXc2/0pveD6xVkQTXofSnIhoSQzfSSGpNKrsbbzKfuwlorJDg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sM9xr6Uq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sM9xr6Uq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFAC6C2BCB0
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 04:54:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780894473;
	bh=VbiP8K3DuBtaeQ3XF8J8G9wKNujyrCMfCjictGMOyGU=;
	h=To:Subject:From:Date:From;
	b=sM9xr6UqV82AuaWFA0Py4tD7XskerTUQV5YD69Ya5FStJBu326hxy1/R2RWuYr+PM
	 cH3/UHTw8YHZEMkpY1HafVrQ8FySkREaYffttoUJXdsgdonZHZNSkJvJVTS8gCkyR/
	 xj7n9rL2Uh84IiEUUApIlGjC/k3S5Ru6CadYhrZwxqAlm+N0s3RS7Xj1Yyx4h67p78
	 ynFRGlXhrMrTfXcae5E5howOtBBUg41/GSjB42pJKYuFYsfRnbjigTYz7bcK63ryMs
	 dQzcru/acmi+hVtIx5SGqwZFInlxdYGEyu+Kw7Q+jx+BNPDjYT/07yx8wNz2gsJDFn
	 0tj2kSYNRn64g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7763CD8C8E
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 04:54:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178089447371.21964.18423111263606653482.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 58851d5683908a0cd467be8d148864c4f5a075725f392748a6020edd1d229437
Date: Mon, 08 Jun 2026 04:54:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780894473
