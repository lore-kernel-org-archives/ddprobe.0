Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 06E0514C58B
	for <ddprobe@lists.linux.dev>; Fri,  2 Feb 2024 17:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706896697; cv=none; b=mVMtsTVGuKDV1IvjvYKEXWZsQk+9CeZ0a5IBQZBWCyFhYoN1Myb14mKCzY7oZqs/ggY9NV5aBvm1b82W8zBiWYn+HQVfxkOExYNak2TDOfnagl+KShRZvSPzIWApaGA93D+oN4TpG84HhguMJf+3owxguqyNyNFAtymQQn+TGVw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706896697; c=relaxed/simple;
	bh=AIQJfApwoue9t7dvX4czMjkXpKO3RtpI2j5FccjUJlI=;
	h=To:Subject:From:Message-Id:Date; b=ZXT+ktcORmpqJEeqoZ9NAtNDMLPvAx04PaXh557TXTUUWtjfNTxfzJ04bOxhZBcEzwWS30a8Llv6t0M33H22JFh1P+d512s2Vd1x/UV2Cu+o1h/iCDZmHCILsXJzGg0btioQverhCtkf20ktyr1fHjLREHJ9cETHRPgE3Yfxy1U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b8CGro0C; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b8CGro0C"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 81862C433C7
	for <ddprobe@lists.linux.dev>; Fri,  2 Feb 2024 17:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706896696;
	bh=AIQJfApwoue9t7dvX4czMjkXpKO3RtpI2j5FccjUJlI=;
	h=To:Subject:From:Date:From;
	b=b8CGro0CSHkAs2LQFPVepbg45F2EptMqmmwrv7WkerCu8uidi8LH5IQKevWEUL2w8
	 90crpEbInsQyjrPpqtkCZThEOczIPusstPBFTN6jPM5ulr3ipjMWTA+S0YJ0+cdFAa
	 yVrd8mEnSi3g5lWxStIM2x/FctbRbVTbniF3Mcpq+nZqC3IVo3jiYBO+k4gpmrBng3
	 z4nz7JtNmqOo4Uq+RI2qSu/CneITdXeZfz7+3xjyycQNaJjVy0HxPwJq0Pdxt9+3j+
	 mo8eNM8pcZNGEHTNw60jZhaef1TyWB0s9yJXIbg2yzHIPhbrjckGqAKaLfSqizHAFU
	 dCD6P0r4MqrIQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 66977C4828F
	for <ddprobe@lists.linux.dev>; Fri,  2 Feb 2024 17:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170689669638.3330.4501315369731066538.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: abe187d09feb3d65e6b9d8b277bd3276fa487512ffa3b270a7eb6ca83458e26d
Date: Fri, 02 Feb 2024 17:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706896696
