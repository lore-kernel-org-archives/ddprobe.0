Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 117832D77FA
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 01:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754962194; cv=none; b=e97rS2lxI3FmzsUy3m+fs/lkzusQsmx8KVNLFBTvLlw6j2crn1igj0V3aLSCRHjofWcukXVDmaurNMEO20UMie87HJt0QgWGSQh8zZ4PNCNFnpihLuDW2hSuKSa/SIxISMGTYHB0ZlhXFFNj6kh6c3657rGhDi0UsfRG8eU+IzY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754962194; c=relaxed/simple;
	bh=JRHeDyHMS488wGmxPXohjznNtleTm0jB/D6hg42M0GY=;
	h=To:Subject:From:Message-Id:Date; b=lF7aVqyTEGyS9Hxjlz5ekVtSYyqDvaeLk0mj2TbXkG8grS2CcFjBn3w2dp1lkpkVcYXU8Lv0G4zniOEZgyr1syAKE47LjUy2QC6NxVq8I+K258FzYx1Bc6W/RcXKd9RxRKpSsxiqwLuwh8y0W+SXkxoljahV9+6LSvrNQrZpbzc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aWafZZ7u; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aWafZZ7u"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E1A0C4CEED
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 01:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754962193;
	bh=JRHeDyHMS488wGmxPXohjznNtleTm0jB/D6hg42M0GY=;
	h=To:Subject:From:Date:From;
	b=aWafZZ7ueuj8SG+eRKL9B+TbYbYJUHiLYVle8+RbJqnuPS4MabperVMAHPcNfBpfE
	 62A26jM4GiaiqZi3ehmFLoMABVYrMpS/cr9QWMTo2SP/uxKYBniO9e7PP2dHm0zRQB
	 0sbatV6mOhaK7KjSetKWj/GscJSuPSqNwTZw6uwtyxax6YTL75lkWykBu/sUliKcKW
	 Nz7JM820QI94TPIJgzhIeka4o6nl0QtofEuAo0263LUzoZTeSlRyfZTad3rrp/WrvK
	 g3eG6QIHgH/xMf1QVUuDL0WwyH4dqwuPNdmY7F+Hzb1kLLnd5HM/b6kmXnIp8Dj94f
	 u0WHuaLJdX/zg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FAE3CA0EC4
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 01:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175496219358.29585.12970689660887441598.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3f9241f77daa57a6f6a30dbb0a9cd5354fadad5625d5961e07e75c153ca081e7
Date: Tue, 12 Aug 2025 01:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754962193
