Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52C7F157E93
	for <ddprobe@lists.linux.dev>; Wed, 19 Jun 2024 18:39:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718822363; cv=none; b=Rsvta8SebJ2mmz5I9TdD6iLNS8qgUee4CGXOy2LmWH+TMvyGdQnXUtn35B3OPTPtuaRvqapl6V7bCvECpxbbC+uK2GoYH70hR3aJNOXYIntW/bzWHe/rJwN+UuqF3VTodOoaeDne8j2GrN1yRd7ypQyELx+33rhf8Z0/Es1xzsI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718822363; c=relaxed/simple;
	bh=ReKvEiF/iebVxlYRNdPphqD7OlB7KRWgKWPTRFRH88c=;
	h=To:Subject:From:Message-Id:Date; b=Pz33izGIlW9UKyegwA4Lrsf6z9DhHytDqZnwo68H1i9Jwy80PGtlvBK0l3kocQPbDp8h2lHQADflDI1ktRRrQ3zYTA7UBEwegGfAjkenVcH9xVzGtu683RQcuteHD97SCLfoqW7UaMGj4waeQiI3LOuWh23lRNVm6UgzZdR9AWo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ocz+5upp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ocz+5upp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2A3EC2BBFC
	for <ddprobe@lists.linux.dev>; Wed, 19 Jun 2024 18:39:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718822362;
	bh=ReKvEiF/iebVxlYRNdPphqD7OlB7KRWgKWPTRFRH88c=;
	h=To:Subject:From:Date:From;
	b=ocz+5uppCvhwMUSSGSxmvivx+c47iO0jQLKIja/FiYKOeZAwU0XhGst6dshVrQR5D
	 uauARfUImk/JUWcmqRY+Hl7Sx5Ol9WDETBDS+b6QBRl2Lgem3PRbGsbnMEM2Uun6Mz
	 MmiFnb/DxJvx2bzN2nXb0Mcxh6boRwQSwdGhyH8T9L5PSHWz9dsqQ2Rk5armqknxlw
	 li7UU8iJriH5c1rPcnMHo9fdxEkH+EVNZEafbLc621tgrjOpEfFNWIemcsU5sXEC9N
	 a6rtEA7HT0X7XceFn7Qv0c2v0UebCHoqhGQjVC5AbyotH/aUvp+Zku2hGtzE78GvFm
	 DHHWrWfevWuVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF9C8C27C79
	for <ddprobe@lists.linux.dev>; Wed, 19 Jun 2024 18:39:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171882236277.6510.6168707852241900242.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b394700b73bd30c3948b0db548a85a00cef5df58f42d6f9296ea7274103334ac
Date: Wed, 19 Jun 2024 18:39:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718822362
