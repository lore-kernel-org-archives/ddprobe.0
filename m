Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AE8A37B03A
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 10:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773655494; cv=none; b=S8DKKwRdXX1ToX7WQni405xMTIcCzQ5yrv2/NiFwyNFGl1I4jvI3/y9N2UdppWa/NfnBn7ac5XlY+dgkkG41StkWoa0hSXa0aCXMC9zvi1BjhrenVycddBHJRrWq3hDUyssbFhKUDU1JNS1oU7mm0DLwWjCcWiKfd6hwt7ZsxC8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773655494; c=relaxed/simple;
	bh=gS6uHwXp2iSdAbAnmQc1FCaIUVuWKRKCBafZ+TWdcEg=;
	h=To:Subject:From:Message-Id:Date; b=gMBDGZBNKl5E2LiPNQdxGyUEE1BWmQ9R3zYEv0hMmjlfjXtQtRKkMslufYUemEYzd4wVK6crQB2Mdiqc5be3pJEkwOVQvs74qi1N/UtMHHyWSGK9+ctA0PzsZp6udCsBgxyf5TREWRBlicFV8LrABltCiMnKmLYgYStsR08ypUc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d9A8+Xol; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d9A8+Xol"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B35F4C2BCB1
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 10:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773655493;
	bh=gS6uHwXp2iSdAbAnmQc1FCaIUVuWKRKCBafZ+TWdcEg=;
	h=To:Subject:From:Date:From;
	b=d9A8+Xolu32JGA3T4TOEkDREAgObYlVLFm22qYYcVerKFwnipMYPGuQqT3pszv5PB
	 2rC+9AmZhn/7TahBsrZhCS1NMjTc5KphzJdqqFSQMMvM50gBIlIn0EpGom0vx8whQL
	 p1AOSP5w7tL/QENz2NKZh2RimsjCrpxBlkHrLbH16o4uLHPot8X/c71gX2NpRbvuNt
	 BOwxHX5UFAKkgPM+1p3j6FLqp95TfKsVXGbh/CrmsdaBSe91eUfz9zDG5FPLB5VG95
	 dIb5GFmNg+JWW2YXj8tLknAwv8nlwBw3C7tP48bHVSGeskQ4rrcRvA8xklBVthiq8J
	 CgaXzmAcU0apQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CB1FF46441
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 10:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177365549363.12540.10552571419203157713.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 35fd1721046356e1c1af98c7daf3d07fb5dbca93aea73c37ab1f3a9587a80677
Date: Mon, 16 Mar 2026 10:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773655493
