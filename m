Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BC5117B50A
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 09:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772789094; cv=none; b=WHYRqXSaPKPzZpwgESBsnWeC6yPo6J1Eg+4QJQbcVGjMLqpMPZmcuaoNphaV157U9Z9+R9LGMb+3nIZbS184P8up3wT4VJuC3eDa5ZtFdej26uXKMet/hPG8BxOPxi57Yp06HD9qBiIShoQ/i/Ks2RZCL0uNPBQfsGSIDHK7mCo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772789094; c=relaxed/simple;
	bh=H8odB+S6T6WQufZoleCTde62eF+lI7Xgo3Ih5Hw1m+o=;
	h=To:Subject:From:Message-Id:Date; b=r7vJ9a2DCAQZ6nRrEEUUdhqhcCdkNepYszWFhqiaT/jGmX/JiRrvJ/P4EMvzDA83XodMvAzAkXC43FEgMkaV6h40AIcPo1YHwMZf0YuDdWBq701L2HgQ5v91K1EJlgIreEO4gVk7bxylKyB68h7ScPrnXPA8JgBP236BC7jSjd0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I19CZok1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I19CZok1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C293CC19422
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 09:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772789093;
	bh=H8odB+S6T6WQufZoleCTde62eF+lI7Xgo3Ih5Hw1m+o=;
	h=To:Subject:From:Date:From;
	b=I19CZok1Yq2QCxsY0wOY9di2sYEh18ukyzP2L5ozlkK4pQnwE3WhDsZWWmn4wDjK9
	 h3tQOpmAS/17XUjszdFv/oDPdwWAPCvWOTXWyjFKE1QkuU8qJZG7wUCEYx8r20+9VX
	 r/C1JB0fLmo/piREBY20UIFYcGzLndorhA0gWSJ+FCSKMAroqjOEWCl6i0Rn4nGh3t
	 H+N1Bkd0ElyLiGzN7kwm9BXwS7cN+MOaWR6sA4/SGHfu7KvRd7Y4i4bfgHI+N9IEXR
	 j/HoJOy6BmSMaxTFU9/eCZpABIFYDKOSs3mMhe33YRhy1b5ZK6ho/5sdC4ch2+V6zY
	 ljZX/Iq5a9n+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D6E8F01814
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 09:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177278909363.5492.734074314700685753.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 09b20c0943b84eb935a876420dd546e1c67b490984b9b2ada0bc746d7acb6d57
Date: Fri, 06 Mar 2026 09:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772789093
