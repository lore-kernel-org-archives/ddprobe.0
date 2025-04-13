Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F28017A305
	for <ddprobe@lists.linux.dev>; Sun, 13 Apr 2025 15:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744557594; cv=none; b=HQd6WCvIe3dPXm3SA1VXkFnWsVcAM0XlW7JBDklstNBSI//1xARwiSwuwTyWU3kDg/qVnA2WT2tVIpSyAidVNJo9rDzyPWDgm/yxwNEse52aGA26nn2kmTqjoY0Ey19h34OZ72lrFKx01MM6De4uUheOcXTLsYeXZu/N4JuufcE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744557594; c=relaxed/simple;
	bh=RBtABVFDk8KAGd5FnKkMGEdLPL8figQUSTLWobqIZGE=;
	h=To:Subject:From:Message-Id:Date; b=tcQIbFwevImc3W0fLe6ZuW0qi9x1NSGbD8o4NnfzIvn+TmwMygBecpR17/6alSTNe5SmpTvsqsTU9U3vcwhI5irxlj1RdeI4/8VPRd+MhOCmhE6OJwaEysQwxe4zUclck5za4HfXCDadsled2tubPlTbQEOObyUJ1qo+63wKdtU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XIW0hQpG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XIW0hQpG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4DDAC4CEDD
	for <ddprobe@lists.linux.dev>; Sun, 13 Apr 2025 15:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744557593;
	bh=RBtABVFDk8KAGd5FnKkMGEdLPL8figQUSTLWobqIZGE=;
	h=To:Subject:From:Date:From;
	b=XIW0hQpGoPsYLGTk3yDSE4wvsyWLzI8WGX6tvh247WiTzsQ6PCtWQmvXUMijPp1Qv
	 pjWouq7utwGH6L0hC0QDPuQ0y3GUXmnN7IhgPrTga5TyGog+plWUKr3hKFuMCuYR9/
	 wJ0yUogH2ZtGJxCXfAs5tPwV6YZblKkNzu645PO4RjnK+mgZF0O9Gxt645evE0QO76
	 hRQWXOlYGodT9c1gjEqMPmXCvH4DEepU1VSKmkvvhaPPGpkIFUfOskW9dQskvYiXtS
	 O2YZK361d79aJpoKBtrXRzJbchQi9Rr2vxbUrlhf+iWNQtypI5g/HIYUOSZzS6HPwI
	 5IhEn4fRHT9Pg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 997BFC3601E
	for <ddprobe@lists.linux.dev>; Sun, 13 Apr 2025 15:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174455759359.3077.17673335331287770373.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dbeca2fc4d81982553368b188da008a1d34ea8752fa2c6ef4eb558e4ec98d5de
Date: Sun, 13 Apr 2025 15:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744557593
