Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27A072459D4
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 09:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751448595; cv=none; b=MTNnd/qm3gUm3j5Qv5Zqa9xURpMaElANShn9bYkPxrdbzR4cRXH1PnoQf7RdWRfNYjWrnYggvCUOxWv7X27sn45KGXcf5mNwG1qLZMbSz/zi5pqUcqM+g/XtyOy9u/kcpYo1AwWdUy0upqT+IkDrkcspwnq0mszOKXm9S5vm5tQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751448595; c=relaxed/simple;
	bh=xrrYd+92Nvz7P7/s/EeYx/VP59OJUecQbqY+P0Uuvio=;
	h=To:Subject:From:Message-Id:Date; b=eFz9VNXcsS/3rxHevHsYl3MeYBYMkOqv0Nq+K0xFa3I3C7Zq5tZct+Mt5+ATmeEWE46O8+Aw2e/KsJGq10ijH0a6x2Ss37b3E/z4fnJUPiPzqxcWZLHM2kaLvuLG9g/EbBie38MHnbiNR1SEoGGDD6fSQXZSWnFKHRLILDilzRE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iUgYTbok; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iUgYTbok"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A03BEC4CEED
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 09:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751448593;
	bh=xrrYd+92Nvz7P7/s/EeYx/VP59OJUecQbqY+P0Uuvio=;
	h=To:Subject:From:Date:From;
	b=iUgYTbokxwx6gcUlFbF9QDdXHVkl8UoGCR/e/QowU1PngrAN1XSgJZ9i/B4Ji26ck
	 xCqTbDaNKV9cHzWXDRaYKtAb3L0oa/TCn/6cTac6xga8Z2N3JwQb55OYsqd6Q9UPP+
	 DC45ECbllBdPM0tBnxLDMy5adl6Yp7KN8lV8bgyxecjsVk56TlqthBR1nY19X55u6Y
	 hVYGb524wMDMhoTmVrzn27+WewRYQvfOqragDw9TsaHOzlj2ziSwRR4XmBytTFbKnQ
	 tB61N80JapbdhmzqgsIMX3pySQ8GvSSFG8cokGNT8E5kniZ6L0xGYQ7enJlJ4X2E+L
	 hCA5JypAVwNtw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FD40C83013
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 09:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175144859358.15788.1931994175739736614.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1d6728f155ae43f430c6a5e6dcc90d2b741d2ad72648ca0dd896aabec587ee07
Date: Wed, 02 Jul 2025 09:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751448593
