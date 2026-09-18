Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 413D14B44AD
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 10:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789726234; cv=none; b=qhXJK2t1npwCJi7gt/Mwr9njricUzRAJ9eVjwRRdQ2dppvQl1rlX6fCOSqg8pvinv+KwgyFDoswEEBErqpF7LJm3pNDP4b/Ag97tzOAQ5XcqI6Wz9LEQyLp7hs6nkdFbd0KsLALYvrnmVw9GbOppLZjBGmzzs7l8QQkXtUx9Vgw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789726234; c=relaxed/simple;
	bh=8GZb0Qx5gVkdFdGi00Tr7OwjLhrWqRYMQDXZ5Ah0c0U=;
	h=To:Subject:From:Message-Id:Date; b=UXmn+/eRTHWavIL45lw5Tku00WQEec51gidPyZC73Iexx5mkL2DhB/hdd2P8Ine+2SLYb/UBUr9tHF+kDm8SklyJaxmM4nBFqo0JWfwm3u6tsBiCbn3+PcSoeIXcakZrZaEUMtipsD6wpwjd8fMMARwbMLX7C/eP+d58EizheWo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GALyRYCF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GALyRYCF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD7F6C2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 10:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789726233;
	bh=8GZb0Qx5gVkdFdGi00Tr7OwjLhrWqRYMQDXZ5Ah0c0U=;
	h=To:Subject:From:Date:From;
	b=GALyRYCF4SxZDWJ6AWPdnTQ6YYtNHJzbrjxPjaZSqrjNdqpKjZd+UDrn5Y+7Uyx3Q
	 Ds6WSSOwlZ972zWRp35+2S3k5o30aTM9hoMjb+7Qg94cZkwwgQZzqFYSP4MlicDE7d
	 NR4twpQY38kL2M+o/ToVjHIaIE71c0/ZudPOxOxG7C9d0llPNdRBWUEK5W9N29qoCg
	 h9N63AuoRseW+KdKNULiltF6wyK9K362vYzUxzXtCmtCszgqtE0vA3H92iC+ualyaM
	 thKCJcumRL4FYmJP95+ahir6oSNlrlPlc2ROhaxDDSnUlHGhy4L1aw+K9GYupzS1ZK
	 VZT9uFBNHSh5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9A8FC982D7
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 10:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178972623368.20187.13860736550883394437.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dfbdb765584fffba882bf8ab02453b2af242cd4bb35b36e29774b08e6db749ba
Date: Fri, 18 Sep 2026 10:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789726233
