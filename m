Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 180BFF9C0
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 23:01:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763938914; cv=none; b=YhmN28qWd24J9lMbkJeGKROXEYXYT9NGot6X+CIesTQCr348KTdh3Jrt9PmAK21Y2WHyaLda9W1t5gYeyk/9G2BFSRoyCnmaY0URxU1aO892+5ZFtALyF3YXndArp3rFSBVaraWWu1PX3ZQpK5cEkMc9c1bvQ8Il4G1BNrR32Bo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763938914; c=relaxed/simple;
	bh=MMhD8+ci+aNHz2b1RufrNtrdvc8CM5C3XMdl5tZRkYw=;
	h=To:Subject:From:Message-Id:Date; b=D/4+t9p0pYt0oJWW3RhznzHbFM9st2oaKMQJq35lbxHPtIwAA11jT/8NnIsT/i8V3ZG6trolOfvolW2uWfkVQB9aZb9bf3nChuW2+qvVjFCxt347uLs1wZm4jM1TIsmDLmTbKlNi6WKFiqQwhaUyNswD+sw+jrXtkNC0INanL2k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kxRGBnNL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kxRGBnNL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B095BC113D0
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 23:01:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763938913;
	bh=MMhD8+ci+aNHz2b1RufrNtrdvc8CM5C3XMdl5tZRkYw=;
	h=To:Subject:From:Date:From;
	b=kxRGBnNLoeIdqYYYzkM3qH1n8XBys2MP0ChsrFGKSLRi6zUk80sckMETVV0+32Yis
	 WDRPKiAR1itRI/zXiQMeEyoZsRS57YoQBMfvP9JOnHdUj+kIubw/fWgcWyqbuxJA4I
	 WO+dtFuCJ+6SbWq2iBgmmmqJ13Nm9w6zmvWwnfvkGQdpxlQUB0V3WTads6xGKpExn3
	 POBGtJSoBOjBcaE8sTGNpqCSuHE6VvtivMLG18ef4IEhjYPLPA+vzq4g6uuNeNZ2YS
	 Wj8OL7AKeYbsfcSYBOb3bPgtYDjgk+5fvyjwmVglUydUJ7rmxbh4Yw9IpnLJNyFlkg
	 8Mwz/4s1WYP4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CF23CFD313
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 23:01:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176393891363.25887.694025181432128362.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8c2f76c3a2f2830773058d8a6fc727a11b70e1acee64b1e0a89caeddf26214ab
Date: Sun, 23 Nov 2025 23:01:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763938913
