Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20628272E48
	for <ddprobe@lists.linux.dev>; Mon, 16 Jun 2025 09:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750067394; cv=none; b=W8OwdRibPlfKSOZDlMVXtzZwA9ZRmkK7Em/2vdL060yWX4t6VO8aPkR2jHBru10GxhHXUpRAbuIV/JKAr1NatpkfrhZG9iMxnWpX6BuomkEuwHJ19XX+73OmmNlzSWs+V+fHjPK3l+hq5YQuc2bYQWIhiZ3QD6CgDJQuft09iiQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750067394; c=relaxed/simple;
	bh=zaMqsf7YjVV1j5wnxYCDO3ILYObPSUdCUjJgz9iqu3o=;
	h=To:Subject:From:Message-Id:Date; b=Z02cBnNsfFmhAqaqJvfTGef8L9tl2fi/rYWcQ2V3rsAPXit2W36Lec0jcH8J4qYAVt0aZlGebuliZIgDVVzv3eVIMOKNbxfiXAczLjhybmmLYmYIAkAbfb5oDlcw6JGCyodibEefuWY/RsOmo1PEbbGeAd6mLC0YaNgJyKJARWc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jdeGlxhA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jdeGlxhA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4B32C4CEEE
	for <ddprobe@lists.linux.dev>; Mon, 16 Jun 2025 09:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750067393;
	bh=zaMqsf7YjVV1j5wnxYCDO3ILYObPSUdCUjJgz9iqu3o=;
	h=To:Subject:From:Date:From;
	b=jdeGlxhAgWFyyBHCuFGEDInmXJwYYPV86GITm+vME5UJkAzG81z3kkTZkVXnHv61d
	 DIVcnZkfjC0j9Uew1eod1iAhgh2hfBNWC5d9OUYaoO9wNAz/AKrnJRZ6A4kfEhc2kL
	 f5wf8G5bvIA0aJ4TgkWyWSYexoBukd02r1xuVUsyzBWdZzrWjLaLbKpN/1xJAiiGO5
	 6aMx8ITejRrcO7wIJdFl9YcFWRUZk2q7btelvUJglYPo7ZpUdZECh9EJB35HqgQ4Ml
	 xtzAf9CP0MGlPOIb6AkgPsiGTdePKENRahS0xsCWKDUD42VtmVeB0Ye0QSopUMWhEf
	 vsW2b6YyMrFIw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F9DEC71136
	for <ddprobe@lists.linux.dev>; Mon, 16 Jun 2025 09:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175006739358.28038.5143425426094050683.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cadbe647887b26dceb6c14d0472d5ea26816e4baaa63925206a4f2e8451b4079
Date: Mon, 16 Jun 2025 09:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750067393
