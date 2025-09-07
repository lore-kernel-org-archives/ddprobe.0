Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1578921CC68
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 09:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757239194; cv=none; b=f7sq3p/a0hUHFQibqHJrAEmZbq+3aoNSW54kKjBxj8By6LRotdCFiTmRUF0nNJP98uyJOq/Lne+Uq5qPXmtMgPsvXcDvMSae3F07+EWyi4Evm4d5ud6NgfthYFh0sRCT0jVrm++6YolbneJ/rWEfZTFaW5aPYz3V62cal2aoTxg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757239194; c=relaxed/simple;
	bh=9KLenouyYVkdcz7H3/dFWrZA45+LnOFbX7iIaOYf5bU=;
	h=To:Subject:From:Message-Id:Date; b=hgwTXLrAljATS6IsJdF7Urde22MzWTAKffuIx2Mjs8t1aFvTqRV10F3bIweySOEF060xLRt3+8G8djrg7P+/Po0lCJkv5cU70myVceyV339r240dkCtEBoogPGZi5SExkUDVXHcynzwBPLkrS0BR9EbqXqua4jH4/VogyKAZ3ko=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DTaEmPN9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DTaEmPN9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A48FAC4CEF0
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 09:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757239193;
	bh=9KLenouyYVkdcz7H3/dFWrZA45+LnOFbX7iIaOYf5bU=;
	h=To:Subject:From:Date:From;
	b=DTaEmPN9xBxrwNNoOO7iFnOO4qZLhEV9NvhFIiAdHjSNYQlRI3+18B9dmKCGNR+sd
	 OOvwky120Z6wLf+W35dECpN3txqsX+YfWRPTOMuoy2hlbr5XNHe9NJu6H07Tg2+73l
	 ushs+IFb9n0RhuwjPOzLjliYaYF78UJI/TXv8rNk37wXUyCfUETDhmsth4RynepmU1
	 Iv2OHnsUTvg836h0h2bspeROkHG2BvdD9tE98o8c0lJiLstkAhiIo89v9msh+dImmD
	 9dUrjgFGY25uYjyBnQg5TUOWksqEdHchkCyQZS7jhO2VzN23cB+ComgD+qiDHKlxYa
	 jh7CFIBQJLk/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 920ABCA1013
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 09:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175723919357.26248.256253346760032514.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b3e6974a3d01004c26f3e0bc4aebb9a6ce64a8e2c9e82d28f9d573a98c737a68
Date: Sun, 07 Sep 2025 09:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757239193
