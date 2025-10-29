Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D7E221A449
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 04:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761712194; cv=none; b=Ou7rFERlDafWvyCSLwCShXPO9wrgC8kXCafLVHDLIUWHfpnvAzlfX5yVy2OKsr+o3U2QHwiW7lEiGGus2zmQWgWnfD72sxhE1kRWK7d05/pQXpCAqUrV4wh5v1dGZTM9iy4/C+i16s60rnNyNavlurYFamcHYT7mi6IpHF5kNe4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761712194; c=relaxed/simple;
	bh=6FZakXGxjd+vRgrY/uaJiVUAtIJbvbL4ImPT6pHfqf0=;
	h=To:Subject:From:Message-Id:Date; b=Py62JGNngarOhgW1bEbH8nK18+TPgLCtZXpQzGczfveHaQoiwBkuok/tn2xPvXuJR8NMAiKamlAOrl9STxxmQlRsrUM0qRlUI8TP3zJl5SZQBOO5DkmvnfxAWTxi42Kgh/12s0Kz+9en7TtNIEl5KOKPOUvK2cUtgFpgnXCKNBk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L/0ieaHA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L/0ieaHA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A69A4C4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 04:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761712193;
	bh=6FZakXGxjd+vRgrY/uaJiVUAtIJbvbL4ImPT6pHfqf0=;
	h=To:Subject:From:Date:From;
	b=L/0ieaHAbTiOFyomEfbumJaiSZbpBZAFZLiYI6whKalnhChsa5hxXiISLFbv3efjM
	 I15HkKbks3NcajAyY+dpJG5hu3R+w/Gsd4hEPY6xf++ltwS5MtHCjzWq9wC0PCqAjz
	 abV3u/Cey4wfDFPoeff9w1pfkktfJZckDxgk263/Tt6GAcD+ObKTK/vJkx8m1U9uXX
	 iRFtHjNiLGarcroIh52+3emXDWX1ZLm5P+x+zZgZfV/fLFBfQwovDmXaEX/VY84o7t
	 KaAC/jycDtOJTgY6WKGMboN/pth1/5gEY0gUXAKM4bY6YZ5g7OA2kfM/Kbn6q5IbZD
	 hMG6dAPxMEflg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9476ECCD1BF
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 04:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176171219358.8285.11675703583834352110.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d4c2225a849407be9d7acec9a78ee5add2658398fb65d439f22274197cf18912
Date: Wed, 29 Oct 2025 04:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761712193
