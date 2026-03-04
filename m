Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21A6337DEAC
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 05:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772603094; cv=none; b=H5votPOWHy5lsyzPsuljMB+92OTqSAOdWG5h/jk9uSYMrKL80AjYbAbJarqIeLceyQVcBIyeRPZQdA+23mCxEmbiwM9Kr8LZ+xMQpvtXLu3CYEnQBUmGZzhJUU6XUQrkBCSY5LAgmyvxBZwvBR82eu7+NhCdRcXcPRT594of1/Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772603094; c=relaxed/simple;
	bh=VfmEkIWY/nHKnzNSdi3pjSfgExbPC9NtFMwa8bh56aU=;
	h=To:Subject:From:Message-Id:Date; b=afDtARPjkog1OAG/qc3GeCLQozi4KbIGW0zyAadb7yzYIJne+uT81N4lT/oCXyk03FDHZSRCcrt8PGdv7ji8+OZRwWJDgXJeG7Pwquw2+w2AtelqQdS/Tf75WbDdjnl2Dole9F0DYLKAty7Owe1HHkd+80NSgExSIJmtHsS8GyY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n0VryZBC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n0VryZBC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3369C19423
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 05:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772603093;
	bh=VfmEkIWY/nHKnzNSdi3pjSfgExbPC9NtFMwa8bh56aU=;
	h=To:Subject:From:Date:From;
	b=n0VryZBCJss9wo7QsjBOp6PKV/wb7f4ScMNOIcpdncnBa/k8Ukyb4f1FRIELc1z/s
	 faXR/zSyvXkCvf/zPn8VdHbRlO54Z9q2JcrKOp5X5dqnBXRCZx5lDZiQGLzZdjtnnP
	 pCvJcdSAXigNVTJaEYqj0l0HKbk5KTHgMOyAyVN1xXWLKTDFoiS4hBtwm/I541c2qD
	 ISAxXKIuuznfQMrTTivCbWTJ1ULtVDotEB/7FJoOHGE0+g/XFe961bw32Up4wJzarU
	 wmeEs7R4cpfJ9uYMbngae2BmY0znbXVGjBY/ge+0v4yV+ZNrofmZSjfXZCtp1jHAtq
	 pRVG1JIA3VHaw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AAC6EDEC11
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 05:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177260309361.3369.7005959126914961984.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4887dce1874559a1e7cbb16b4820a55dd6d74fc064ae514f1f638199a0cc3bb3
Date: Wed, 04 Mar 2026 05:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772603093
