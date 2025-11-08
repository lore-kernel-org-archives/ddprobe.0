Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2581C2AEF5
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 14:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762611594; cv=none; b=BXZEIH8qdkZgIEOtGucW4JlsZ6G5TdfNCsp1ae2p/LTf27drUkVqcIS/HXg6qOw/J6rAE2Xyw5SF0Spa7vIh95rIntVheqK4ae5BnuqmYFcvWirjNilqbnequLy+sGYbCvXYJEVYvjDVBiOo/BRZUAGJdhItUALjei1P2UIQxdA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762611594; c=relaxed/simple;
	bh=I+HwhwbnPbiuul9oNOqwlo2uuWInwiBmcQzr89iYuKs=;
	h=To:Subject:From:Message-Id:Date; b=DZCsIJkrQPIcYRGovEUa6W/WQUv/sTBp+ne4nl/PoOkEHqkrYd1nyBKFsXNeGTdyo9izLiGdL9NqNJV42+SwbNDzCC47NNEHE+QHLwLTyjetK8cc2HNkmeq4WU09YK+pLyppP23MFF6oROTGGpx9JbzAw75wm56RJY487ZEYKV8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bp5+5ek6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bp5+5ek6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9BAAFC19423
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 14:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762611593;
	bh=I+HwhwbnPbiuul9oNOqwlo2uuWInwiBmcQzr89iYuKs=;
	h=To:Subject:From:Date:From;
	b=bp5+5ek6X5e4Nj9+L8hPoqW7ZlAhQIJpBIfwEeawQNPhtlKOqcQkFU/Lg7PAukNYn
	 +Vm0NAK2YScb4XZrXPUDGM2PiT3/Hjx/9IB7pS3DaDpHdbIlr77xjLtMPkWKnnEawL
	 NAORqnQwg0hTXPn4iKRAeE+/TmxQwCEQey+6yNO4/U0biEu9sH2q8fwZG7T6D8xKX7
	 A5++rWtZdHXDzRWhC67P6wZwwrAZLsD/29F3jntSn5fqbV7V0TN+pv9tIk7rPepemR
	 PBEX7wFoucQTsra/pK6oqBx5HqqN6ZOLuW6TOsBTpjlxclYaTF3kw95Iq1PjbpY2m2
	 n6mVfeIH6UAmA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FD2ECCFA18
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 14:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176261159358.15610.672833747911160100.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 141d2cd933e24d2f4080e93445843b1fd7752513627181df091ff5b1ea1f70e5
Date: Sat, 08 Nov 2025 14:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762611593
