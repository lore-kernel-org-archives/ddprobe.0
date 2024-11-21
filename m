Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 319724C66
	for <ddprobe@lists.linux.dev>; Thu, 21 Nov 2024 00:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732149354; cv=none; b=pG4W6iiZyYbyZItvjqw3M/Ir7IKHsZu+RlpalTrWvjTGuYz8V0E34NfukgjOgnPBzMWv1HnuvGuEeQ9Kyi3UYThQtZ9PlnLT13+J2vcrTxAfAnc/yeKOFM49g8Q9quLnOf9sJh2xYow9bz+0iFvdHqRPDI6zRRc2OtMcdOsfDXM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732149354; c=relaxed/simple;
	bh=lgc2xU0YaQ+EbVFoCEcLGX0x+aIQyGbLkqABb3fCgW8=;
	h=To:Subject:From:Message-Id:Date; b=IietxEC8roTexmw8TAmzHSckDumN8SJNqG6xzRoWU5wlhCoWwsLBcW1Kdr+XfsPQCvjbG9wwgQNLgU8+Pf2p6ChH0rY5a9v8QNUCR5jEnMsnGL1UFDEZ1e5x0y4aPoWMAfcIaZdGwaBeTnfzPw27ad5E+F0JezomADMl8XqWpC0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TC+RUoDj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TC+RUoDj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7E05C4CECD
	for <ddprobe@lists.linux.dev>; Thu, 21 Nov 2024 00:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732149353;
	bh=lgc2xU0YaQ+EbVFoCEcLGX0x+aIQyGbLkqABb3fCgW8=;
	h=To:Subject:From:Date:From;
	b=TC+RUoDjlkyoBGEzz16+iof15iIJair3y4HXwFvx9gw/YINt3WrpjB0qBx6XKUfHS
	 mOgdoCOHkNzeYGD59Dn8omt1uHXZC363rBlngF4Z2qFp89fRjrUz5694eYtmkQeY5Q
	 Qs1nJJc4pqJpiSOiQPnXLdezIlQYZLkAyOhJOT8SLmHouBb6U3S2Y4FC/0pEcTydia
	 lLrHUFSAU4CPMEl/C0FS2a5HUlBzcvBMv3fQ2wdi36wpY58VKGM8GAjljR822dQNR4
	 YsonAQvG6S2rd52WjYtXAuaynmfQvWwVKwTvLtezkd/+Z4voKgYntxBV8mRfxvV5jQ
	 N9Bp7yRednmeA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 935ACD743FA
	for <ddprobe@lists.linux.dev>; Thu, 21 Nov 2024 00:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173214935359.20587.2053765600413701648.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 77bb49047d462dc71c38b99bc22dbfb1dec8fb6494709f3cfd3a74f70304b6c7
Date: Thu, 21 Nov 2024 00:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732149353
