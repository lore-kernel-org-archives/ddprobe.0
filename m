Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55D6F2F25F5
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 23:24:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780615474; cv=none; b=HetUcbTGaOSqwGd7ncDAMt8+t62IttcdTEXQZvlXuIL45NRZUneBWUhUYiWggTgII6/zr9Jhozp+eQSQH/pSO3L7p50Se3pU0phqW1TfSXyyh6yYxev2ZxAq/GgbaiK2g0/aYCwlzX9UBggD6XBh+41SjE4rS40UsErJbCTakG0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780615474; c=relaxed/simple;
	bh=sZbUFFSAstOe02jGS3KFHfnr+tvYETsqtUyeR5cg//4=;
	h=To:Subject:From:Message-Id:Date; b=ZJaluxGLOJR+CNYMHJZNCsoZ9t1y5duT47hYhjqm2ZtP2QBaZvPO8Kcw1WeMpSSSh7y0a0G8ywtgnYL4yP46ApChsR20hTMuLAciA6Mkfh+4hiZcMvitld69lq8OYnPO1IUsfWpS2RHMrI36n/ysr/H4vER3/VhPgGhJ1Rl8MsM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Gum22oop; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Gum22oop"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2B1BC2BCB8
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 23:24:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780615473;
	bh=sZbUFFSAstOe02jGS3KFHfnr+tvYETsqtUyeR5cg//4=;
	h=To:Subject:From:Date:From;
	b=Gum22oopYpJfattcQp42K1Fx+OIEKva5PWcoyzrm0+cXJml1z0BZHUdbvevVOvFcH
	 KVsOcXezZpxc0y5f4GEB7Vlj/eiMwqSale3LGGRPrctjIivaa5yaZhISDZ2/zAy1uk
	 rCvtkjWTEkiL2vXY+F3p1a9cDO2rI+b+xe4p6NjwP26hfyEypgJmJxOSEUudEEH2dE
	 Lcz0g3dB6m/D1cMHqydZWL2lDp9mhfko8BdPTJdvPe9bA6wnFxLEyT029SSGPXEt9d
	 UdXHevrwFC9Tr9Hodugo5xqSILbuuhZEn9RedhmWEIti/uIDI/yPm4/YsKiaHWXHVt
	 7cMLb6Cxx/5kw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B50D7CD6E6E
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 23:24:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178061547371.31659.14061030273242654196.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 78fd0bf75e5d6219fdfd7012e43bcc1972209a3e47e506b73f000ad0dcfdb406
Date: Thu, 04 Jun 2026 23:24:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780615473
