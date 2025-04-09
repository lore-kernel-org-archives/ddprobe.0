Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B2201A239F
	for <ddprobe@lists.linux.dev>; Wed,  9 Apr 2025 02:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744165794; cv=none; b=XyuzsGYmndk7aA80RMw8YBs/ZveEpYfVeF0wYoIZWKaBJIdjsqMoquSbPjotiiyFQSyrhEooSHBln03hAYBEFvBX0UxS2ctWDpAH3tgW02KsRMSG1h5+iWKz4cHI48bFAD1FQpf8SUbCXaVXjgvqbSXcVAECuC7tpFDC6ioFPp8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744165794; c=relaxed/simple;
	bh=QBn22bhVtsr6yb9Ny0wPFx6XhzbARhhyh3GPcAEclQs=;
	h=To:Subject:From:Message-Id:Date; b=HBQq/BXWLGQVyFbK0Io94/B/T4ZPHB/itsxMwIsTGkj9E/OCQ3GbB/JL70im3a4JB/euDE2ovHqbEvbFtoDE/2lYb11zOcoOsWOoFn2mP9fL00zLZC1uEY3Wf1eVjq08w5Mjs5uakWbCnAyE4EZ5r0xSz98dbUKjuGiZArbXrss=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IqjZLDiC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IqjZLDiC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EBC5C4CEE5
	for <ddprobe@lists.linux.dev>; Wed,  9 Apr 2025 02:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744165793;
	bh=QBn22bhVtsr6yb9Ny0wPFx6XhzbARhhyh3GPcAEclQs=;
	h=To:Subject:From:Date:From;
	b=IqjZLDiCge0NPufjzrV2rmnrkrTrQxmHMNmmiZbN/LaR2SJJL44UCkouc5PjmqbDM
	 DOzPI9uxMZvYjsfIlcZyHnZxhvw0iJEZib7WkEsh/0QeYvcoV8XRGv5JywoUgZQLsm
	 V61Pmr3u5WXnu6vLWQ5nvXi1b5AbTAJVuEKgcJwCCeiwRMGuSvL5kwpf6RuoDF8cyv
	 mA7+jwx8vsBWwvuBcQLSXfLYwzknDzwbnHiec5QIn/uLmrPmnQZxo0V1rV91swZJGe
	 qLdkmJ/3oh8RvmDxMzJAag0hSk74lHcVxF2ojlGqwuRaSocPpYhst16xqTO+DWoXYy
	 k0z405GOARy9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 900ECC36010
	for <ddprobe@lists.linux.dev>; Wed,  9 Apr 2025 02:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174416579358.3117.15613182957005808156.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 60b78bef0755f40a77ba7f236fee7a8b9821c21fe3e9fd7d7fb87e721be7a9e0
Date: Wed, 09 Apr 2025 02:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744165793
