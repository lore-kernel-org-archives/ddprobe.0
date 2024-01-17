Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A2EA1DFCD
	for <ddprobe@lists.linux.dev>; Wed, 17 Jan 2024 12:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705493897; cv=none; b=jZ6TXzdq0knXrMQciyN0tN9+E1Ah6pQpC5VlHZA+Xpc05DIppMbygxHc3JQEBEaCf9FLF2txHfx1W3UpEZnRrfUsHmk//D+MFuwh5F9gpsjkrD6KDR8qV58Cv7gPhLPFgY6m7OsE7uqbvDqArVeddQAm8TkjAIkNZAvaL3vhpKQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705493897; c=relaxed/simple;
	bh=YiwqlClSM+4aicfCAc4IDrpkJRASTCaVfgWJD1oEQKE=;
	h=Received:DKIM-Signature:Received:To:Subject:From:Message-Id:
	 X-Rtt-Probe-Hmac:Date; b=gx8H+ESeZB7T+0cZ6iQphlnqYzyZtQg/9lcQIhC1A/621ES6WG+b/Ipv2VBieuF/nf5/Hksmg9BOQoRKaSbn4pGrVhirEu7dgFvoIehGfvTUmKYvT28MjqZQGso+NphTCI+JGpyuFyaysHxRb1Uby7iYps77/ZVmYiQYLfTjQfw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B/4KDq+Y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B/4KDq+Y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7A111C433C7
	for <ddprobe@lists.linux.dev>; Wed, 17 Jan 2024 12:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705493896;
	bh=YiwqlClSM+4aicfCAc4IDrpkJRASTCaVfgWJD1oEQKE=;
	h=To:Subject:From:Date:From;
	b=B/4KDq+Yi3LVJ2PwgTBMMXIdQAv32slXr1+gbKvsrKuh/M1pal5FCewgWRE/yQd7J
	 eLFCzPekk+4LgAzATEgi4Kn0RMp+djbkm7irjr1UO/RrrLfUFq2erREEjqVA+2cAxz
	 HrxBcPm78jgO4BCH8aDqf5SVAmFiihqnlKZH2YXJ7PINFiYHW1ummvKpjLkJcqOh8/
	 OVGb7Z5ym/XXw6XBk1glV/kZuC1TklAWqzWJkpaOpJQe7k2jwiOddakdizc/0eTnY/
	 7EcCAhdn829hSvFvuhXPsCGSB+j5Zi2tY84EEamAV8dVQFl/NuGqystOPt1Nlcjl6S
	 5vdvsQ3zfIp0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5F991C47258
	for <ddprobe@lists.linux.dev>; Wed, 17 Jan 2024 12:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170549389638.27698.12967952297832121259.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 90ca1a0964fdacd3871178de935053775ed343b4b79a2a1174eb59bc710d38c3
Date: Wed, 17 Jan 2024 12:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705493896
