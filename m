Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BB161B4F1F
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 00:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767920034; cv=none; b=TeqgA4f7eEbiHej/r6YeEZ43s39y8TdBnYKjLFT5jFP4nuMONTCwMVIddFvuNTo4PLa1mf0kWEkY6xDbDhB1uihkJ8Br7cjcJQAX5nTpgzv8E+hsA6pISugiVZbfwV1V8G57ve/BfTD4u1fkEepUuKQYPNwPqenpqe7pkQ1uznk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767920034; c=relaxed/simple;
	bh=W4jl8qAuivAg3BprwsExBXlvT2mV65m8dj53cj3HtLo=;
	h=To:Subject:From:Message-Id:Date; b=eawGA3CCsT0D2bjQJ7EOelbBHRlZKkGk4xAx7x2GHFl2hTVr2ZzpUOIYjbr3I5Nqr0M3BEv4ILdf40h3RUe5eRkB3L9G/UQPNXsH4Eas4HnusfzpmIJj6oW/zYyXJ6QZkDnzyhaYavme566+vxesZbzu+V8ynUa0w7GvilxZ9SQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TbDViWB8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TbDViWB8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2F0AC116C6
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 00:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767920033;
	bh=W4jl8qAuivAg3BprwsExBXlvT2mV65m8dj53cj3HtLo=;
	h=To:Subject:From:Date:From;
	b=TbDViWB8gAHjgcnJDpb7KG/U0HAn8yGJkB+3OXK6aRhB38IpI9jcbNmd1lfQ70C4c
	 QV1NgdprwBoeYL5n8VX0S3SJijcL04fq7/CcnPCVZR0+EMsfHq3GSPme6dtNrGnunm
	 hOt/zfbjopAAJEMMeRbcWH8jCKWQW5QFZkN+7wa6JklF1sl2z48Z2xyRfWGOPuO18n
	 /0bczd+3BxKSVnSmd/zZtwAZkFu9IAHHE4YlgcoZu0N8ear77eUdkgmkzi3m7Bnc2I
	 QLMBDFwXXbv63MzRJF8yyAVktKpuNCt9aGcF3wN2betLiw45t99Af+icsRaU2HXVJd
	 SpbFXaX39WpEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92032D232C6
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 00:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176792003357.29319.2461627519213109041.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 222e8d76386773e6b08a143c82258e414e328466472c61ef8a84f32eff81f4ff
Date: Fri, 09 Jan 2026 00:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767920033
