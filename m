Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4787D38DE1
	for <ddprobe@lists.linux.dev>; Wed,  5 Mar 2025 13:38:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741181934; cv=none; b=nbFHDAj00f8vVRs0IdSRVkejmFEPgzJ7SG0udg2XLpNnMvYUsS93mXWpCrB8RU36ZneH3STQIdJyGJ6uZf6s35ABwX+vpbdlGjs5Fydow172wWUCxDYrZ60EGJEGRPZ6F4YubMHyRWZOML0LpouyDHsgFLE9KCvu/KpUCkVprhA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741181934; c=relaxed/simple;
	bh=dHPPiUJbzxOpfJOKHcZu91M2jPedU9Gy6xKLwoCNJRw=;
	h=To:Subject:From:Message-Id:Date; b=NZG9N2Mc5GOuq42RU/Q8lnKlcD4q+7R7wOR9anuZiZakkWtMbhWQwQ6W2VMw9EwTmRsoLhFren30HYbx2Gs9gttk904RhixwEjwUxQWfakqGNBXpOCsrEGJxjpzHXsLRBqWrmJn6qHOGeR7lNhVzJZp/EWJENp5f/bwaSNAe4tE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WVozvVJ1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WVozvVJ1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0935C4CEE2
	for <ddprobe@lists.linux.dev>; Wed,  5 Mar 2025 13:38:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741181933;
	bh=dHPPiUJbzxOpfJOKHcZu91M2jPedU9Gy6xKLwoCNJRw=;
	h=To:Subject:From:Date:From;
	b=WVozvVJ1k9OgW6tsPnXoMnD0s1Ks6xlrPOqRePuCStBlkIGJr/29QHcDE+pxZujRG
	 PvmktvaBzt85Kqe2sG3JSAzIawuRkXl78o4COhor8GA29wbQ24dTaMGxU1+pE5aAP4
	 Ip4R+feeeHx4gOjSrqH8BKvYN5sP/rS6Ky669Mtny2q6wLqFRDJKzLF2rrUKVLPBA0
	 xTVor2pJoBtKi/psfEGiKorCQvdKcPttFcz+Rxpgthk9g+pKWut9NWMdfzfawibdbw
	 UWoIlTw0ELA+pvW4Kp5A+ZXfJVSJ8vQ1ldN7Q7ejnx8Vdgda7LUlrB68V+cxrs2Zlx
	 J31ZhzGjbQtIQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BDF4C19F32
	for <ddprobe@lists.linux.dev>; Wed,  5 Mar 2025 13:38:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174118193362.27353.12487510220970067531.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3d3175bf1228cc583419999da1c78d5799c0d71ff5ba86f9f53161c2f08b31e6
Date: Wed, 05 Mar 2025 13:38:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741181933
