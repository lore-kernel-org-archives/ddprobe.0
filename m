Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EF77C135A6F
	for <ddprobe@lists.linux.dev>; Thu, 21 Mar 2024 21:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711056497; cv=none; b=Lw0qQkLjao6BzyXMcdYpsUDQdlzeZh8AHCbKHcSqJgmv5R7QII8R4hHZBbtyms6TyqCz0tk4DzRfNJxTAC4TpTBaio2QIlZQv1U20TgTeji4rMyUQzRfW9V9RhczC2KMMyRCc3ONB/0ikDbpb+Ac6t2fKEhMBYbGnPj2k+f7Ywc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711056497; c=relaxed/simple;
	bh=3MoCXJMQWmjtPemCJ1R7CsTdqsvlyQL+IvO0ohwe7co=;
	h=To:Subject:From:Message-Id:Date; b=mwkUd70ZOO1Q2tO4nOBoXxhJ9OOZHpuw+XfQiv98U8D2ihl30RLDIR2PZrrfho+3zLq10Q9IkAuonym2NJHhghQReyBnaEHeX+D3xid3h/HjZelNbBIqXGjteB54W4LMwPSMaBIJyI6yrmWhtarQBusMNqOLclAPNCQ0ghj4DZc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Xu5NqT9c; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Xu5NqT9c"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 74D36C433F1
	for <ddprobe@lists.linux.dev>; Thu, 21 Mar 2024 21:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711056496;
	bh=3MoCXJMQWmjtPemCJ1R7CsTdqsvlyQL+IvO0ohwe7co=;
	h=To:Subject:From:Date:From;
	b=Xu5NqT9cIC3Hxl6/SZbCTnYeZpTeZIrJlYl+xX22kw0fa92mIEr/lzZ/pzWqAilzs
	 AGVhP6mS/SsUfwyPqab9icNle+SfVoACB/OpC87UzPLQHOEPKRIzZSgFTdL5bfneJm
	 uDs0IumL7Nu6AZLHyWkR5Uiq2sbUgFSX05dElT0xRVE0eOWNAva3Fked0/BZCVtKfR
	 tdlZYEnEDZ6sF5e0gcOiqXzS1YFHGugCiHDpbYTHpq4SU52QilMsX5QDh4xxmLPSkA
	 Lr0vbBwA6ptv/hAsB/jOOMP0dhBozX7ze2c85+hgO2IoS5gcsEvkwOlfDhajKxQZ8t
	 MFc6j3qJ21X4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6451AC54E58
	for <ddprobe@lists.linux.dev>; Thu, 21 Mar 2024 21:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171105649639.8306.6470692391134812712.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3187f55c223dc8be94bf29674821d4ff161c3f057eb85656c2ead447aef2b543
Date: Thu, 21 Mar 2024 21:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1711056496
