Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51D57818
	for <ddprobe@lists.linux.dev>; Sun, 28 Apr 2024 01:42:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714268543; cv=none; b=jsZLrQr3sHa+jINguFmpIKBajneNZcqDhNUZLRjGFk1imLNYZR0GbPalUdbTPgbqLnaRhRCLs1pz+xCQULrVO0guvJ9yAcewwnd0ubd27320ZciHyY+D8uzNUSSaYv/Dw+oXAV0vwQuuSiFuOYVdeqCc8oiRFR61r2FeQoWdckU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714268543; c=relaxed/simple;
	bh=k8AnC2GXGxaHZRJYe9i/VBuW6uaKBIGMXmnS3COluM8=;
	h=To:Subject:From:Message-Id:Date; b=k6seQrqx+7EaWlZN1GqhdnB/a28tnpfycAXDIYIEwUOST6THbOrllU5UxU9NeFWM6NtUHX2XN4OKGAgmGlN5Xx+14OdVijr4FHha6EeD/rxPYv6bncjHebB8qabqI6RQpsKYakfd4G2NF322BXaIfeN0TfFpskhZ7pr6gsNOTx4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QdTtk3KO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QdTtk3KO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5835C113CE
	for <ddprobe@lists.linux.dev>; Sun, 28 Apr 2024 01:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714268542;
	bh=k8AnC2GXGxaHZRJYe9i/VBuW6uaKBIGMXmnS3COluM8=;
	h=To:Subject:From:Date:From;
	b=QdTtk3KOLCHFeH2rgFkSYxnGnzrZUjY4RD5KgL1wn4BWl2M6ogPeZcoEDv7QtLRui
	 7NeFxOuO3oM8101zmO/3wX2c5yhK1e0OlcwQBRkla6GPcJOKbdOnkuuR3m18dMgpFw
	 nveBLmZ9/LBzx28qtIqUE9p6weNyCYH+jIZ/LYAeuFIBWta+G6DJcvh88qFATZkLVw
	 06jzsZSjDppDnwMw/t0N5JAdQGr23SElDF3L4P+6T9JusFHxetiEWnwAMJA//1b2aq
	 WgUAjF2uLL5LLWxqkbdXApQFWm9OVc2rvU8MjMfipUTjNlz4z/m+ZsWHPgSvr+Je+E
	 tQl1F10Nd4jHQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE8EFC4345F
	for <ddprobe@lists.linux.dev>; Sun, 28 Apr 2024 01:42:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171426854275.16349.4665177875959685495.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 744018c9d7d836adcde45b90fa83a01a6e95bc7b8be3d3bc609cb2f2c079710a
Date: Sun, 28 Apr 2024 01:42:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714268542
