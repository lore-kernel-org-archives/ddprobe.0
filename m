Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 299E319D071
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 08:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766048034; cv=none; b=UFWgvetKz0GbVBX5Lfdd67dyvPW5h/8cw8+BOLMNwiFgAekv0BEC+FP74hH7vD/gG4X2FspPPgJpnhQAoCuL2nrklrerBfB6449gCLF3QOTzVhxa5CfmUNN5w8jwjojd+AEGcuHFFifeAMhU29cmmpNY8z6dZjpUaVxASboBDOs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766048034; c=relaxed/simple;
	bh=NL6koojBCYXIhlpklGj1BIseG0vln3SAQoLXy4YZLsc=;
	h=To:Subject:From:Message-Id:Date; b=inIa6R8H2IXLSUbgE6NudZNXdJY4zT0+jjcdLZMYXAl5lz+3WWQ/9IdwxiEcrMwRg3wRWH4JaESjchl/uE88iTBewV0wkcd1SmdNsSttNiwkfWdU65MDGRzX8PNwL/++NjiNhz/IBnHzy0H41FuWa4VRPRaYvS4SPHBAcvUm6u4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bWP8X733; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bWP8X733"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B055CC4CEFB
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 08:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766048033;
	bh=NL6koojBCYXIhlpklGj1BIseG0vln3SAQoLXy4YZLsc=;
	h=To:Subject:From:Date:From;
	b=bWP8X733NM+ubfhRpKUUG2SgSxQ7jl4FikwySmY8mx8hIxHFYG2lhHAib3tJfHH8N
	 kYjMCwBhJMDfKzawJrz74iujnNhivFp/TpQZrzJgTwtOEqIh+MTXgex6emT54jC9BU
	 j2Ll9xtAZz6UAgGR+k/q3VdPaSlW/AgskdNAaDJnW5DMZKKEiaIiao7ka0V7ikbEO9
	 aJivba70RFWXoCgBP50tY51jAoq2Ss15i/AXy6oe6UwIBU1reHUSdeXnbACvThLP/T
	 GIBV8TxuxFSDOIdxnZSAt2ze1ebc+1dxRibSWkJRYHXv3t8ThFTBgenoG9GJMeV/t3
	 EXCKvwapaMQ4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D5EDD68BF6
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 08:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176604803363.17756.9412217248383951482.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1d59065d53de0f12e93258b90a567a269a897963f5e7390c4d154a377f9eaacd
Date: Thu, 18 Dec 2025 08:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766048033
