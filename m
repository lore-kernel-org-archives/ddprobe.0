Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 276B43B27FF
	for <ddprobe@lists.linux.dev>; Fri, 15 May 2026 14:50:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778856634; cv=none; b=Os+z6csK9IJ+F/125DCGRXDLB8p+MmV6XFRe93qwKnb+fgEmmGjaIVHgMsvVzGHCqHLu9KA/mCrCiOcOo482B7cOJz+83BiNUhJebJYTwq1L6sutDlDfisaV3bI5AvuvdsdSJBbf20AOHixZSNdyyhYkAW6+u85O6zxqjLG9WQM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778856634; c=relaxed/simple;
	bh=OqG/5jmCYCf+wEXT7HUM2lm9Z/u1mUHhQFArKQ9Mobc=;
	h=To:Subject:From:Message-Id:Date; b=Xb48Ww2C6zrETqZw2yQaVdQInn+AlKDWq3JkWdp0+n4xai2iTqLc7ixq7Dx5oK1LhuP3vyH5gtj5BFnWozRlv4677aN3wr9CEzRc/14nD1SGIfCZ+BpVY9BIm97FdjUn1bAZZqYeRiXGbloutRnV4GtsA00uLH3aPmWH+8CKhzI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SLSzj7qO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SLSzj7qO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BBA09C2BCB0
	for <ddprobe@lists.linux.dev>; Fri, 15 May 2026 14:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778856633;
	bh=OqG/5jmCYCf+wEXT7HUM2lm9Z/u1mUHhQFArKQ9Mobc=;
	h=To:Subject:From:Date:From;
	b=SLSzj7qOTL7jRjn/eBAkr1yaVZVqDaUgvFU3UtCsCpiTH3e4y7gN+s66oy36QE6Pb
	 9qaVH4XkEUIixZ8vh77V4RTbHkX3mvkyOMB9r/SbJnC4rkkQL1xQi6KjebHB3immFh
	 Pn7IRtelPB7ZBKWc8VTilCn6e+8pH1lnk7YVtl7wNkxpjne9UfoYN7maDQheYw2z8u
	 f8ztwATntMz46C2oronrSwmmAzap7bWi1o/AwCT/qQH/KVGaTldABZKdRsUd9s8n1I
	 /2BJDs2gZsj3OmpfxZyCkEj/5KQKmtxeIXmqb2JI53o76ls2n6VXL/YYEVdYa7S0fU
	 0WPYBL0g6MevQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC08ACD343F
	for <ddprobe@lists.linux.dev>; Fri, 15 May 2026 14:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177885663369.29008.3358876561652059471.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2b691ea17fc4a9f48e56a31d7dc0221f83769c30f67038a70ea6f80aa02b9865
Date: Fri, 15 May 2026 14:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778856633
