Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D9671B6CFE
	for <ddprobe@lists.linux.dev>; Thu, 29 May 2025 01:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748482794; cv=none; b=V1rZ/IkTlAFaSf/pVPty8e9LoM5XseRYvrgPIU5bR7nmIHdk1kTiutfaTkx2JTNl8fXD02xSqMmDnYutyisqkwkR4WC7DrGDtqYlb8BdSSH79AW3BQ335kdsnwlQB72QK7zCpUvjH6rQWG9bG7e70hxBtyxtSm/bropd6vDqBn8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748482794; c=relaxed/simple;
	bh=kKSNxcPnFlCjxB8bb9i4vDB0WcdKck+Ax/lf9twntjc=;
	h=To:Subject:From:Message-Id:Date; b=KeSFToJT/zrV7Neimw75Vx3wfOKsuWSN2vm2REuq1m+OhTbg/HvtFs1z9q0bSGD6WJznmmDAqJ9rxr9pOkyOeILM0m0AgmVqyIfYKACvb9Q72lvPNFTh3gcmED7HAaeiqiaLrqmlvORb+dd1OXYl0gXNk1+JZNHLPNT2HWsY4MY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pw+xcMtc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pw+xcMtc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A00FFC4CEE3
	for <ddprobe@lists.linux.dev>; Thu, 29 May 2025 01:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748482793;
	bh=kKSNxcPnFlCjxB8bb9i4vDB0WcdKck+Ax/lf9twntjc=;
	h=To:Subject:From:Date:From;
	b=pw+xcMtcxcN0PIhgegPfkFZcndQ+9VBCYlszx4nkteyiJbRZiBBCbiZf5F0XcsdAS
	 jvmrX7IkNYlceOf6TwEAxu8GtZB/74j2b8oGnb9MIrNeDZIsE3wEcW5BgZcY5OKfg/
	 Qm6B3BPqHPDN+M0CmPFM3I2jP9pS0DpbHpsx56KgPWHp2AnA8kwdAePr85PJzDt+1u
	 rXXoDaEZuz0TpR/rzgtf8H/fbWmuFh1+X48kiIAvNlJ+ljOSQ9kkliPAYzdlwZkBef
	 m0sL66qrvYREnK3df9R3rPv2o2uCYRj8ygaFfGKwxWnxTsMQllcV91ZsKGqpCwMiIx
	 xqiF2UluQC0eA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E5EDC5B543
	for <ddprobe@lists.linux.dev>; Thu, 29 May 2025 01:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174848279357.17373.14007928813528810380.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8db7c2e7f010232b0adb7ab1ae2aab2372efc79b2254746cf2ac452fdd2dbf22
Date: Thu, 29 May 2025 01:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748482793
