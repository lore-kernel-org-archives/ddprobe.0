Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CCBC1D54C0
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 17:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746985194; cv=none; b=auV+63E/05jlFF8V+Tsv6i/Yt1ryEfQ7mbt0+OHi4X36ihVhAz7HsDuyJIihjANQIH/oqtzoPVPnW5EkFtmezSGeAwi2Afggk5DRK2i8zpxRXo4dtWu5HNhI86DevIu0y9RgKR2cleGkV4QJUkXYHIl29DGFqQ3AAtp6eYJY1lo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746985194; c=relaxed/simple;
	bh=IWtM7LPqH5EayEarPbUM9oslfvfwtpKHbXtgb1yd0A0=;
	h=To:Subject:From:Message-Id:Date; b=qRnsn7Z2+u/cpgZxQQ6WkLHuDY4ooXSxLib1VkxhEYmD3nw+cl8uX1xT8P/iS1vBbjVmSySgsTylff2xN3UebhaVtbvGgpbSrbpRRPmGLFTgnBs9INNlzclXBtOQCQBw19Qgm8XrpOYlkf2Yx8H10EhXPUlbL9NDo1jp4svJNp8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RRRzmRyK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RRRzmRyK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5586C4CEE4
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 17:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746985193;
	bh=IWtM7LPqH5EayEarPbUM9oslfvfwtpKHbXtgb1yd0A0=;
	h=To:Subject:From:Date:From;
	b=RRRzmRyKJOzVyC1tmqH9zBz7Yll6bJq8puWCiybkkC5F4mSzImM1N6pyDdmcAV707
	 efDdgni1V+GKtFAzBRQYu4WOCPlkfNdMBxDae8SaN/PizMfVb3lRKBmFyqRY3Epk9r
	 96mWBW+nJEJEINN6BdpLWtLBS48alE3U2knspWW1u/zCXrIX5f1KaS3N9Y4pqhBoJz
	 0lpmUh07V8hjzcMS+OmuS9F23qyi4EWwgdsh3gdFLqJSC4xDAY8f6DUhdpE5t6MdB1
	 x8p+w9aIq9UdH6BNjObd0EUBPMwLPKNfKnd4sdoGDvUM2s33ft1aBKs/fDFAdtz8zI
	 ZSBnmA6nPssmQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92A10C3ABC3
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 17:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174698519359.26966.15207382002670853226.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 180c6a029c8eb072abd024c53f3c9ea3d0efa06d268f22bc6399fd84f30e1ca9
Date: Sun, 11 May 2025 17:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746985193
