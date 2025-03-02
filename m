Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BD0F1E9B05
	for <ddprobe@lists.linux.dev>; Sun,  2 Mar 2025 16:08:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740931734; cv=none; b=QHcbKjE170jKR1h/DTAK21aTZr5V3JJzKVJWa526kDYqqYiDChHFk0NRUpiFKScqFKetoPn3m787DphmokuJ6qTns3h8U6fiAvO/cv/wJ7WTIW353RV9kb/hJr/6nbhbMP0ZpmtbLMmXcTDopwqRGeAwpn/J7RB87mMy6aGJpDk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740931734; c=relaxed/simple;
	bh=WWkCPNOgJVE060AA3naC0X0tiILTGVFmvF5oWWJ0fQg=;
	h=To:Subject:From:Message-Id:Date; b=cqzHKcctBWc9NZBbGAo6Vmm756pW1zDy4WivbmSTgnnwCChUaHBm8A3AHK5afbjPzn80ZyWBGlH0PAMLm8b1mibYdKlKr/ahvgZoMePinNzp9pYE4QO/LHaL3h0UXUmrC6qb2r+eRrSvMKT7EnG+MLEnuHog3z7rTEWB8DAYarc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QfVvioqi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QfVvioqi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6054C4CED6
	for <ddprobe@lists.linux.dev>; Sun,  2 Mar 2025 16:08:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740931733;
	bh=WWkCPNOgJVE060AA3naC0X0tiILTGVFmvF5oWWJ0fQg=;
	h=To:Subject:From:Date:From;
	b=QfVvioqiVHyUKw/op0EJtSmmO3qtR3N7WVO4iQscvj7PHti/cn5UMB7Yg/DkjQWBA
	 TeXTTR1D4bsIC2HrxSgj9QveqVfPFZipF8pxiSn7KHMkrU0mXcl68kXZ12c7zhgbC2
	 M5d/tUKn8NR8QQIYBT1wuVIe2y6wDKpqAzLZk29gEFSfPJqQMO9wdwAf/Gr9YEP8Z2
	 4j/LZLqGcugH3mSl2Fq/hsZ3qaGB+U22mBxP1m0b9rQ6H8Vo4H4/Jq3xGOaNXpwz4Y
	 JpMxAJIqWtEtZYHtdlWg0JRi9bp98M82SS/Klk9XNSgyYq/mVMxr3qGZ9b7QRBXbir
	 aSytvq9Vc3+Cg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92A67C19F32
	for <ddprobe@lists.linux.dev>; Sun,  2 Mar 2025 16:08:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174093173359.1513.4401036489171860604.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f2d9ec6ad23b8aef476dbad9327958df5b7089c5aa20eb5ff7917f7d3c1aecd4
Date: Sun, 02 Mar 2025 16:08:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740931733
