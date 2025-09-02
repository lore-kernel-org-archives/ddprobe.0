Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 307B617BA6
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 20:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756845594; cv=none; b=iDKOrEZDa/3R/JBHjZhdphI4qpGpPyn9mNCWmtiwXuMThHiMD3d6VIrIy3XhK6G2z1q75gkMAvQ8miQ8omA4gGJpGB3UTiwstzfI+N/aApFUKAGl7NFOAUx1Wg6ViptVpqZKG+MWJ0hOAejI7Tjy4rQoshUGxYprn/ig43cVQxA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756845594; c=relaxed/simple;
	bh=Fs0X+s/QaRr4kT0f9/Ro3Fz+kvuE9x9I8m2+O3N9NIw=;
	h=To:Subject:From:Message-Id:Date; b=P5/etY8d2ATDxbTqYqHrLARf91HBPFL2YQwqYH69jjWRBbAd2MdbiKsZdh3HnDGA7lkYCeuHPZfQlsF/+amf+2n3hmGBgg/iWdalJ1XoQwgRXHHy4yWIyCowMo/18Qxxux3EGAyzcUWU+UrGBffJyHsIDHGKGDm/oVbl0odNoRw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S/m1GgGD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S/m1GgGD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4905C4CEED
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 20:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756845593;
	bh=Fs0X+s/QaRr4kT0f9/Ro3Fz+kvuE9x9I8m2+O3N9NIw=;
	h=To:Subject:From:Date:From;
	b=S/m1GgGDjiM8F+O0wMOYYtDmgWgC8wkyI0Yj/SBuet+pCVPNSh8tFMjotZoGo1aLt
	 pDbYZ5GAwAbetUpWY8XLI8CglwLbqxKRW3jjYSrWCVEVUEaFe9hJbVKogQcbRkQg14
	 y1YF4yz/1zvuWQOu4GW2Lo9p4Q0gBd24slEN0eN70ceNrMWkzHNotPojUB5+LtK5KU
	 fJCf7Vcjqo/H26oNkBPqkJFGzdAOImzDSm7HowdmZzCRsM7yoIXSGgDyDTxwXC5RTP
	 tk8nheIMbkdYGdPu8IhwHu6F7A4YXM2gp+3LMPMXAcQh2nK04qygRk5RgonIsVeyud
	 gVyfKOAeEKzkg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92F3ECA1007
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 20:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175684559358.7936.3922717733704107701.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5581f70d3f25277fe409116d55632db27a7381c3851102325e35334b78bfc5ba
Date: Tue, 02 Sep 2025 20:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756845593
