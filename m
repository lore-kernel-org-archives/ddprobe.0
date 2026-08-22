Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57CF137204C
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 11:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787397634; cv=none; b=Q+eiBY8I2SpGN4qwST/F/ptLus9MRqk2u8FsQNAljP26usCv/gfZja9dFVYe825V8e18w9XobqNBwZWeG8imCjDUmMU63Kve+Z2qI68ocTvwQwNAH3agxFCpOW/UOObMtCjUwiZoszzfw1QiXCMTRYT92tQxiNJX4lOQyUJgfSM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787397634; c=relaxed/simple;
	bh=oltF5FCWCGYkiQmD9YYd1UkhxQc+ai1WMakkWI/MWDk=;
	h=To:Subject:From:Message-Id:Date; b=aJrFoWHm6/jCzQnw3wfpQqEt04oqv+SxnFctv0GPQdXWxkJ5G/kJ5VPxDGOTb8gs5FXHIQN6FDifzOxJ+3sWcIYd1qoRSxixU2kesc2JyJ/NBhUs4j/eMfW08zdtYzds4iptiAPsXsiJCR1bvd9tRaYYFPISFYDsAFTtpJROpIE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AalTJsbP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AalTJsbP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DAA5FC2BCB3
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 11:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787397633;
	bh=oltF5FCWCGYkiQmD9YYd1UkhxQc+ai1WMakkWI/MWDk=;
	h=To:Subject:From:Date:From;
	b=AalTJsbPx5jR+1gPjABDjSMuez6VAwoD7w2sFIYD3SXv6YISLirpJfUR0ga6BRH5/
	 v93nLeD+5ID5UUGfYwB3bI/p+UHY+duP3cUeSAN4M72+rEcI/ZXb7bA6nMWotNofnz
	 nr4ZX1EwzqdXo/tMwC2D+PCQhM9PDJ5bknwxBARzjQxvrDi+rowJharyAWgjOWNfQu
	 o8xTfFLiGy0vcDKGciMkDCeERSNfVNEQy52E0vb+/Fa8NjqEENRcWBWBRrLilG8knR
	 +8DRSfFuTNBzPZivQRflh8sfjiMY95/WxKK1OgWgqsV4FpmadD3+Sd0HkZUrs7SAW+
	 wgQ37qUXpUOyQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACFCAC5B572
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 11:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178739763368.18533.10476069293898481044.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5a56acd3d400c1008a46963feb53f6d3f382324fdc61469c91c952107191d3c4
Date: Sat, 22 Aug 2026 11:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787397633
