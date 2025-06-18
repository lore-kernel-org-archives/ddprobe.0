Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D4FE2F530D
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 01:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750211394; cv=none; b=Q12dGV1/AMuZeUd09lAj1u3tzZJMNPGgY6mQSCzOqh/zfqpE2oXM7vmxw/EN5aqYgB+WyuE4RY9DT0SGk84OBsH2B2fw8XljwjiTBLog3kAmEM7/euy/pAqIVyiVzOWsJmp7a0zXWkDPEyoHvfTRaasiOHWOe61cj17xi0884O0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750211394; c=relaxed/simple;
	bh=3oZNQOaMky39NK3ILpE8oqAycUUZgdDfdTcUSaHtC5w=;
	h=To:Subject:From:Message-Id:Date; b=m3UOtGPyvxtdXMGldyFlDn1wLxV2vS/sT/Fp7LHbPAClSFRZe0jxbFwf64iSl1NozqhzMHzjKSUMxlHl1m8P1wkEZ/up1G0miM+4ZbqyDHS97tFFsl8i4fBOYXwwu4dQVjR3yPW6XZbtuaVRnKk3DOR0BFHABaG6NmrZvD5iZ6A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Mdj5pYY0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Mdj5pYY0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A19CAC4CEEE
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 01:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750211393;
	bh=3oZNQOaMky39NK3ILpE8oqAycUUZgdDfdTcUSaHtC5w=;
	h=To:Subject:From:Date:From;
	b=Mdj5pYY0SvYezryQW2MyMjdDhHNpuCmeXiAQR4OG7O8hju3rmaWfakTPN2tDYjJj7
	 Ey8eJuwtMUs0pNGukQ1NU9fAg9k9ixKWiGgSE54NQXfixbhl3KoehCI7G35kfR+l/X
	 o+L49V0+sqdG/5odP9UBk8b6LXR/uCbnhMxPhsZX6sUuyW6XOBP3wHgYlDIejRTQVL
	 rW3LtnIpUIuirlBBfpmUFsSTywWO0fcm4JnujTKUh1/Z0QVIG0hgNK4lSsX/x/ld1G
	 lKnySfYoYeILJr44+ueRBFafEHYRfjUdJEUdcmiHEZdeSwTNzIQqx1AqhopnAqO9sO
	 xTJNZy+pyqQjg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F62BC71157
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 01:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175021139357.4114.9106390604356947024.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e9fabf6ebdd94b6cce9bb37c1152694aae854311df8b6fecd5d1b50f7645d8d0
Date: Wed, 18 Jun 2025 01:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750211393
