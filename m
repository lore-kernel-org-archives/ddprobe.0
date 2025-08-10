Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E04A1F4161
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 21:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754860194; cv=none; b=PijRcLUtrLcN8YVqXIYTSNbnSZeRd8ZNyk9ivbdWIUaxswTkFLqyYN/JvSydP3Qc8RpRjHs+IRwBXe9qy1Jl0bKR30t2PyKBItM/uLx+TqRv0Z2XLjEB13MLIzyCLxGAVZo/Oe9ymKdFSAp6BqZsYQLYggLY9bMDt09c6Z9/r+4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754860194; c=relaxed/simple;
	bh=q8OQJf01kHNT9aVev17WvVElIhBfWDtawjdMsUBiIYo=;
	h=To:Subject:From:Message-Id:Date; b=dkzWj9qc3hGNx1P/qd4pR1wBzWqjI44zJWY6OFRf/DMAi3xbClRtGiAl/hLutlHhZK0rD2twuXBVkCMNLT0lYazUpLE8ktiDgLVKbTknboU8Cb6dtzxBbeLGqaUJAPqafsMlGjVnbjoHCjbf2rEK5ZYmWZMKH7PNqGV5d64JvQQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T/qaMWvV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T/qaMWvV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A82D1C4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 21:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754860193;
	bh=q8OQJf01kHNT9aVev17WvVElIhBfWDtawjdMsUBiIYo=;
	h=To:Subject:From:Date:From;
	b=T/qaMWvVfLjtgVpjRiKHT9WiiyqmYM0PvtDoV2CmBSs7p7KqBnS7J5Y6I97zTVbeV
	 JDeNnDiOsHYmafsGZCYjy/Dw2YqSyZ6Zu+9mYgcqeCN36xUoOMwUrpDtlcOHdVmjvi
	 xfZCnmZ7pnvOSKR2PyGbtP4JrpmNzltCgbtve9izmoKKU7xStsyv5PtPCGIG4VZzxA
	 W+F8JidWy4LUpfEGsOyowURzGm8hpnZeKqVehtP/FqeT9J2iBO3WyHhAVss4mrAnoY
	 7yirVBcVAwhjLXRwAkRqN8B3nlvHaREwb6BUrZuCBHDpijGLMvLn9/qVmFtdWTqDaR
	 1hW2AFq3gFZfg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92B8DC87FCF
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 21:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175486019357.11641.825092068352766108.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6c7f1d93c50282ceb8655013ceb779f6c25aa8b26a5a0af2eea53d56c35f1057
Date: Sun, 10 Aug 2025 21:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754860193
