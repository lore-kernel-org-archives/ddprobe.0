Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42A63349CFD
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 06:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786689034; cv=none; b=MtYmtjnw65xGyl+IfAJbBzicmHGWV77lnCTdpJI2tuGwdI90ljOUx4jPDg4Mm/Xl7PogbCHAo70V8WgB81PHUBiJoNIHTgrZ1TmkgNxqf7AFuHP264Tos8viazCqJzUycU6ATKrbiFIwsG/y4qlYlIBtp1iIuAizVWcj5cq6v+w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786689034; c=relaxed/simple;
	bh=eGPBqKiHqSXUa2VjT0ULw6pf5iRNEXNNJmGOa4K6VV8=;
	h=To:Subject:From:Message-Id:Date; b=Pt2i0MOY5Eka6eOHn1zqiM+ZFB9uR5zorqgvjJCXvOA/nmQ7u3DLLSniYyAwqk2BtTlYYRCWBetx0fywfJrgoujTOeA+QHd2VGyaAx5EDBuYsxPViF4fTqG5WyMFsO2mm4kVl+wH77LLi/b8NItWBzXi7OrTl0nGxEIHbKY8rkg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JuekprJi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JuekprJi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C95A1C2BCB3
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 06:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786689033;
	bh=eGPBqKiHqSXUa2VjT0ULw6pf5iRNEXNNJmGOa4K6VV8=;
	h=To:Subject:From:Date:From;
	b=JuekprJinS+ZjSyxcGM7wjPUZoou6/el367bnl/0I+/ueuYWngTigBw6fKUr2tclN
	 fNtWkBop7fUyKWzYF5pW8f5z2PhFlm3e4WCDk6PWsLwdYTWFNhZBG8lF8EuFyeKqmQ
	 xSrDcDCeGcuiTZnwY5phtw7j2+7+jDqPT5cO7ZNeT1twUc2hAkcO1E1yTSR0Uy9e3o
	 FO/QUoG0b6dazA3YNbndBrw2z7g+28lFbdvBXiXv4OnJHMLum755umbFJnmItzMX/T
	 pKBHpntssoq2iBHV5Z4vRGQwZI6FtNamRfbHWzyWyN1IfFqFpXE8+sdVOIGRQJ+BDV
	 yc7vWPkxki5OQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8D1DC5B572
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 06:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178668903368.26407.2828736473664362013.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 29d6dbc3f70bd7a34edd7375e372767cb4a150fd265309cff53b61bd19fa203d
Date: Fri, 14 Aug 2026 06:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786689033
