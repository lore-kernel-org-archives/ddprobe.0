Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28187225D6
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 11:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762515594; cv=none; b=vGU4J66WSOi03z+nZAY1tBrhRSFgrBAnnZLKTSWmAecQ24Ll2pMnmY8i38DgZMW2BLJVI+s5cn05eB4FRHyjVKqd/Hti4HhMlXus4O1pQXJQOaKOLt8KsRB0BmEP/v/7mrXQbcI9HwzLF/7PR3VlLavL9HYfQk3sXLyLHFEAPF8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762515594; c=relaxed/simple;
	bh=NJ/ba/Y7zZpRoPT9izkdHRl3Ixj8VeCLGld+IJ448iY=;
	h=To:Subject:From:Message-Id:Date; b=GYLSDSz3/PkhfTHP0aiq3KDlft0uxN3GE4lgF644S2Tz0Wuhp6xhJPKWVLczmWXqPUKVd09AOfFlPoaUwAZZTAWksuooC2pjoreOabTXnYZ2e1k9evFEeCUV+IJArypHvOkta6UjXXl0kUhd7raTSyxQyArF1HYdnBaGc81KwZo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RXEx6+Ke; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RXEx6+Ke"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E438C4CEF5
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 11:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762515593;
	bh=NJ/ba/Y7zZpRoPT9izkdHRl3Ixj8VeCLGld+IJ448iY=;
	h=To:Subject:From:Date:From;
	b=RXEx6+Ke4WQFQ62WtT2YNfJ2Vcg3NvZpzsJhHOeVRLJSJxanRqDSYFa46X00G/yko
	 ifXORfS0bXiDap0FyuUoTFOErAcF02OSIk5I533vPRlDeBSLqrO0IJojOpLc1t3F8H
	 zA6qS55uDtw3/tE8HNtf++BhBPmBr6+XBUyjtdWU0WQyEGKC8yCAWUvEyHW/gVtFqr
	 ecbAklizHY9DolvyHOOXXJRuXZCpQAhAssJXQzqNVXDNKLP7RPwuDF98HiwyDccS7N
	 SAtXEnGpSQeewJkpTysP+5EfqZoJ06L9Po18RrCaKm5tzn0QFBSX6K+dyZFVW58wIh
	 ZyLiOiOLnKk7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93428CCFA05
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 11:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176251559359.2687.14603124980895339459.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 33b601d519e03c280fca47f68d530d59f94d9839cd574bf08abf341a9ac5ea5d
Date: Fri, 07 Nov 2025 11:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762515593
