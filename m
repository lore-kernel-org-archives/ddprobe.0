Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EA7A2C08C4
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 19:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759950594; cv=none; b=nkgLpcGrC+E3qwYNUcmvU+17qPFqKG9EykllJ0L2UBRKnwX4LzalqEovMncv5806CJXDvK6AOhtBltKokiSgzTJKwaji4+OL8V9ZsdrQ4v4gbwzG9aTt3aAF6BBf/ke50L1R3N/+E5NGj2sOZ3URhTVCly+VKM0YAWrAuFBtJHA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759950594; c=relaxed/simple;
	bh=IDxdxGSRNdRyV26NPJDonDEBXKkX48TEImnkFV34er8=;
	h=To:Subject:From:Message-Id:Date; b=u5Eb1YEir6TkAd3mCP75mCdVS2f64IRby0LgdClLbDBnG4VYgOEqD/a81hlfuFYAMN4mSpLS0zbfbUyMcTSrUuLJPGfOZnGXhPJoDYkWg/Y6Ha10VcWJ+JKg+WXvBer7nJ5bLJCG29WlaUJ3TZRKvtjWcz2Ymqyz90kRhV08dyo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SbSwfXI+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SbSwfXI+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F971C4CEE7
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 19:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759950593;
	bh=IDxdxGSRNdRyV26NPJDonDEBXKkX48TEImnkFV34er8=;
	h=To:Subject:From:Date:From;
	b=SbSwfXI+rtjOMlrvUxwd/oDxlbsPqmatRmttocYRe1/A7CrYo2ik3IiBvctFAYzb6
	 ngAkebg4rQNCZaKnxyu0tetVewdq4R9Rvo1+uH+G2IQviti8IMp4dvjzmXhlYGw65J
	 p71zDHwotDua4uxSk3VTrqfPyXKFL7kQWpXpUgMv8a/59SVlyMgspy9hv+lNVsof6K
	 dP9DOuHPjJWD9yXavScja9kEZMyYPJdi3o32mTebBJEvh2kmGTBu4nE0pgfHAgXu2w
	 wUHp64MGXTerYqQZLvrK1Ol/3MH2oyPx/4oBSN5uBCS2RjceVj2dUR3BIoPlpGZLK4
	 HQP5MMMBzK0MQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F8B1CAC5BB
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 19:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175995059358.19171.2077804737215505979.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 53926e776aa979bbd09f617cfbc68866d5ff15ca43929e90ce3e16c9b7f9565b
Date: Wed, 08 Oct 2025 19:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759950593
