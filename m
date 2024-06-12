Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 87F6FA34
	for <ddprobe@lists.linux.dev>; Wed, 12 Jun 2024 00:48:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718153303; cv=none; b=uohNIlWy8qd3nc5kwAE4vnsIMZkY6uKfLYIilDieFPEX4PnBKRxnfkBf39BEmieZT7gloZiqlpToGW0uOjsIv3Dp+SE55edKrK87NFPw/0CcGA+xxfHNVNe03dbA/4VKkqiE+Rq96qVVKquvXwRqyjI1/kxOQNpZYVvr7GMW8IU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718153303; c=relaxed/simple;
	bh=OAEPAKQeMgcoLH+3StlPQshYLhS4c0N2li5e/ZlRTy0=;
	h=To:Subject:From:Message-Id:Date; b=uukOoPNO14KKKJ5BFM/QUk23HVsSrpFOsK7fjO/+0Bxr6lq2hh+PudaZOef3NW68mjANFHvdvXqnmVkIPmHmdWonkDr0eG2yMTMocx0dXIzLm3vYSDmBE6YYVY0hq30Mr3uiP3O6Y33VHz5M6ENl/Dr4PfJ0QKGdyHmQut6z6dw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=j6sqOWn1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="j6sqOWn1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0DEB2C2BD10
	for <ddprobe@lists.linux.dev>; Wed, 12 Jun 2024 00:48:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718153303;
	bh=OAEPAKQeMgcoLH+3StlPQshYLhS4c0N2li5e/ZlRTy0=;
	h=To:Subject:From:Date:From;
	b=j6sqOWn1QPfaQDiXgRjBAQs2URks2tuOj+CFH4ddTyN0cv6MzyPbx2BNBN9yX61ct
	 waiLywq8mEvOvQLco8p5123lpKgJfTa4eqzCOf9tbAcUmlexo06BRtap3oeqL9XTIp
	 g0Rt0tCjqYs0ywA6h/XF7rdYM51wInnOJJ5sniy/KNWoFLSJss+oi7XC3Ha/RrfWyW
	 ySRO5a3WNq7n8V9/CPQZQHVsJOV890yVebeeVRlSN2hdOPN9+2FiMvcNeyRNDmI5VQ
	 KtR4VAOp2BPaHHu5ga/gkOEMvi1WjkXx1DY1ATPdHFEXgW+TsI4BM6smKvN0cTq4KM
	 yIjqTqvhOGw6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E11E7C27C79
	for <ddprobe@lists.linux.dev>; Wed, 12 Jun 2024 00:48:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171815330289.3414.4617235254367214599.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4ff7ea47280de5e3b7b1d8169631af26992d1c18db15d1c98ddbbcd1538571cb
Date: Wed, 12 Jun 2024 00:48:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718153302
