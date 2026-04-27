Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A2C7399039
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 12:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777292854; cv=none; b=FesY88VwXkbumXMVKmXWjsKB+PoGD2duVTFy9uqkAG8YmdruNTCL7k0jaZiBM1r1Z8ZJ+UqcalMGXs6dGQK/xufXl9SnEFbEK9qWr+JKWAsMIXkVNWlz72Y7VlSdzDVpQeSZLF8HruiRt3tdRG93v9jfELadWDPv2qb3hxcrU14=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777292854; c=relaxed/simple;
	bh=LLCGQ+kP1qTl+cJsDUCK8VDblY+1Y8nejNSQ7s3c/dU=;
	h=To:Subject:From:Message-Id:Date; b=TU3Sp/7LQROyQBG54weAe7biOb4vkIULoTbbjI7WXhdDs1fnGElbXizMbeOVxX8zZXrNKxWkXM8z6XYggBcoBXYYdgW0rb7f3/9w54enbAy1/xSgjA2A9P5AxApjw7mypV0LKAImJ+D3lp9DXrVd9kz55NJKf2nFRarKIOAO9fo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UBF4Ao8P; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UBF4Ao8P"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6545C19425
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 12:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777292853;
	bh=LLCGQ+kP1qTl+cJsDUCK8VDblY+1Y8nejNSQ7s3c/dU=;
	h=To:Subject:From:Date:From;
	b=UBF4Ao8P20j/RoML7wdmzluma4oHbazcYztXRzGLc9Mp5vOYHtNci8k1ak5PcZiDy
	 C4Brd1bjevLClpqJxw4PLc4yi7Po/6nXis/A3A/GTxfaOdKD9cNBVyJ1aZNsv0oTsq
	 i7h0BSzQSkWLzFTVHhbDKrYUhNiVw9cveNSCKopTbFt/VbCwDO68uchLbBGMADFLXL
	 oUtAKAOZsSyUcitbFCZy/BwWW6EyCZDNV+qCCgIVgm+V2NzTJUJhM8pitDXDAyE3Hp
	 wYBSDBrZ7BdG6RP5+14Rp8QWzX9eUM2cHj4TAzH2KYAsj5exgDW54qUATPRzuqxANP
	 KJLO7nnyL3U/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8AD1FF8860
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 12:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177729285368.30966.15104917942593122474.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9459b282fd1a9513e491e8d0657afd0cf973f1d75d2f45d7e5dffa2f0d3e3542
Date: Mon, 27 Apr 2026 12:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777292853
