Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B9F036F909
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 20:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785443434; cv=none; b=PmJfxbeg/92vyoLTP7CGh7Dzgzn/+zhhD/7WLX9szagllzA8o90X+snYL+tUvAb85X5fA3fWjnL3a0vJ0X/w7nLo0HK1pTA+wwD6Lujd67mn5Xm4tz7ViE9o75atHEfM5QsPMNzrCYCpibCAw/xGAyGjXaM0eadxTiAg9RmQock=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785443434; c=relaxed/simple;
	bh=X+sci5YjPMU/lYxDZxQXMO3VuAfkulrMECQGLwX+QmI=;
	h=To:Subject:From:Message-Id:Date; b=ouuipWImGwJ6pG3uUEAdAd4OIVMHbNaOR/aYoSNjsE43jSQC62rdNoSQqAygw38exDOnURY3LirijeF7AoBKbOiNBwumdLaPjMonZXCr+YL3owDCYIl9r6eiVsiBdLiRZVqWNTPwRFdkXccwAV150bDJAg606bsaHRHCux/D+EE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XOgSI/a8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XOgSI/a8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA6C8C2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 20:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785443433;
	bh=X+sci5YjPMU/lYxDZxQXMO3VuAfkulrMECQGLwX+QmI=;
	h=To:Subject:From:Date:From;
	b=XOgSI/a8JeTL7GjqTWLaqzE9RTUv43q3hvTWOjVsWb1GjbApzFdQHQvOqjFc7eL2H
	 VCAsAATvD+4RWvvE7creexEj91D3wsygJ3mGlgXBvkZxcHjybj75sn7YiRg/CNVvfr
	 ebUfAIdaXkCGrp3n2zOsB31z8VU0ZC1VLVARhLvFxtjhh4z/v153vYPpLB8hKZ85id
	 RdPupQ/895SLws3pPL1msHk0RtJhmdjb9nw5Rjo7V21Ic5SKKz4S+cwovWDcz9Hm4V
	 TGo5O+DTy9c7fdnQl9PKXL5sfS4O5UvSGNUDOdbXmhWIkKMpq3PXxk3l4Zq36MH1z+
	 mi1Dt115rGqTQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8A7AC55167
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 20:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178544343368.10726.4558725984744602918.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0b268751ee3130da02a291757a8526c9a50d286b0836f882b25a07ab23eb7149
Date: Thu, 30 Jul 2026 20:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785443433
