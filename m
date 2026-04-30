Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FAA036C59E
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 04:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777525054; cv=none; b=dC5KI8AoSbeBbyHRtEmKgIe/d7zEuOPv7VFWQ/wF6gjFNbWUF2GNINnIkcHvWMIdKJtWcvqbIWL9suAgJZ/yRkRWIlTS9Mw6FzUjo44ol34UQjlVoAUZcsXOMs9SFa6a5xAhLOArCjTcNoz9tAqeRIHRxJ5TbFEIQFn7QDAGktQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777525054; c=relaxed/simple;
	bh=3Ovf5afNdNl4nFucJtFirJ2N2WgoOgh2nMTn+dhvOA0=;
	h=To:Subject:From:Message-Id:Date; b=Kwl+kjsOKzliCeAtfnaQ7pLUQBxrRi9+2B5RYTdUcwMsDUbfERAxFBRNScwDXyyRCeT+fu6Ft+ul8Qfgr+ydW1cupxCcP+whG6ENNziJ+4Jrat0M15GSXgcqvzfRaFX/aaSqAQHVv2fBdZWqHt/dMpF7qNL/qKAkRS8QaNqGXV4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TYotCoz+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TYotCoz+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B73B0C2BCB8
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 04:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777525053;
	bh=3Ovf5afNdNl4nFucJtFirJ2N2WgoOgh2nMTn+dhvOA0=;
	h=To:Subject:From:Date:From;
	b=TYotCoz+7wMegtABPge2BJaqqJ9PogA7V82CmDp70sH579VmRTvtsoIf3EiPPIeT+
	 uHW3chE9n+WsbiLuQhN7UT/HZ71ghier51UhuMUQBqYem1zM4sCF0hflZTydlh5tZ+
	 mxNRaxuqzIQRofUdFs+izNbzbPGK3w5SgF9F3KEWzFQw74oA+/VKq/zCbRNbkE+IMr
	 Dc96WILqbQA0ALKbYm0ug7LZbidYfSZBolkZ6BF5M38AOCS1l+tjwxcrq7tlKBcsjB
	 AZ0d/iomLs1GviM5mm7psPwynH9CZv8Hrf7E921TpWLIAKEB46hB6qDVxIKf6XgMK1
	 MCa+fp+1rwB5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9516FF8875
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 04:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177752505368.20657.4174260860288675126.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 76f7792d942abc544fcb76685f047613e6419532dac53936d10b5e4cb7813c57
Date: Thu, 30 Apr 2026 04:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777525053
