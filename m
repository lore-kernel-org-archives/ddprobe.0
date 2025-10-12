Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35C8C1C5F27
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 04:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760243994; cv=none; b=s9HTsj+Ey7rcb++gKZQ9tOaOVY0iJbSz09qLcQV8/eGkv+GPIFsUu8swA/Cjcf9y6K1UAQuAxeFYYn/DdlsNity1y+V7xBk3+NFqX2cH7w9HnTmzlLfGbUnaNIfDVkDZJlw2TD1Qk493SuPBvqWCyZnTB4Z4hl7ioEQM/7WAFXY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760243994; c=relaxed/simple;
	bh=lcyHx8rc4n69Y8noMu0zbFQ85w1b6HVqYPqYfCDZvqQ=;
	h=To:Subject:From:Message-Id:Date; b=JgyUyIukDGmnCyrBkCtErypJtj3nLKCTbgyhjOen6rmUlAOsY9hxFygoWfxTyjDB95AhZCrhJ2uXA4S6AfiCiqa0N4gY5UVbPvxidCfchYdAfN/C4Jt6Oq/AbZ/0HTskcWh4cSZZvGfo4jsHhsBa79Xszzj3ZHn/AI30+t+cymU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nA4Iq566; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nA4Iq566"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA4F4C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 04:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760243993;
	bh=lcyHx8rc4n69Y8noMu0zbFQ85w1b6HVqYPqYfCDZvqQ=;
	h=To:Subject:From:Date:From;
	b=nA4Iq566LGljamnP6bx1MSouS/UwXjXYzRarfNwJ9ySSovCHXMr0vZoxPdehf87he
	 rYp7c1i6Qh7kVj8ZQqmw9kEv+DWRjodwneYwGmsn+kJu70j01wjIFblz44CbvwQgpA
	 CiT2plq/XimNMH1c7whqFSDcOUQQM5ETO10BjpElGkKv/LAWpvqy0IOh+o/NfnC6I3
	 pCFLo7Tqhx6ITZNo+C9Xfa6uR4EVYgFlrJ4VxXMP8DkKEsZ9Rk24r3QAfI0UOHliCm
	 MH88rAsFmBRkgtvrkLe/zbere16tYtnlVlmLeUQ99Nefhk9S4WWRXB2NzfSMKpya/H
	 uuO28SMqsAeaw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96361CCD187
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 04:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176024399358.27748.6623748941153849471.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c0af78a9d042beaf1ab3725953f016b8434cdecfd9b6f7afc33abad4448e5b7a
Date: Sun, 12 Oct 2025 04:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760243993
