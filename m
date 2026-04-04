Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BBC7221FB6
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 15:55:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775318134; cv=none; b=KHvU09t46YnM/q4/nXi9GTnySvEOuvtSVxvfoaQvDDTWI8JH9aJ81vEeG/nIJKLB7MGxRNbE/mBYKE5HvpgdRSMeh/A3ryV7XpY6pEyGIPp6ezXuAFmLtS9JqK7a+bMnmiiRoz3nfOh82BN/iW2sY31OgnaN368FTyA3t0e94eM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775318134; c=relaxed/simple;
	bh=CYU6t4SMfQkcuuhsAipBg2jKUPOAessxWEzB5cdBCGA=;
	h=To:Subject:From:Message-Id:Date; b=GoS1YrgQoicl0Kxc0WarhnwTNyk3MZtxAz1aDAobg2Bv2maA1Lx88rqsjrecA2h5Yh7DbkYI/0OJzVv3kiYhqBt+ZmJ1VOGZjG8CmYwabu06Pwa2lI3QnmAykYZM/SMrdreZYt1Xyx8dUtiTermXGWvDHDuB3D4fDnGuXGn5bYA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jvuDs155; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jvuDs155"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4A71C19421
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 15:55:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775318133;
	bh=CYU6t4SMfQkcuuhsAipBg2jKUPOAessxWEzB5cdBCGA=;
	h=To:Subject:From:Date:From;
	b=jvuDs155hNJSZw05BX3jJ7SgnalmvdIjtfs+ZZ/8OegCuSdSdiRL64HNONo6Xk9VT
	 lcK69FOfV6I1Gb8+Li7OZ9TUvWAkdYkNqi/xqxuNbLnrKmMKWpk8Ti1hXBIYondTuH
	 BIhf8QE+g6TucbCqslrjqL2e/PxI4QHN15gZOrKSnmic/B/C4geuZLZK9QUDja1QIs
	 nkv2oYQ9lNY1lqsdmzn8dNxlEAyo1d8SglZMhVWIzxKzT/Fb5ORC1BT+YwSBu4ixXt
	 t0/CLJZgCFZs+x0OAIhvcMBNuo7cDZwaj+j+6916DDCaSLUgOS3HUdJnHIsAuTYl7n
	 T/Y+NTPQugocQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE279E8537F
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 15:55:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177531813369.6465.11354852003936783506.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: acac70d3cdba94296d6ddd6e9797b16cb93648055e6c2f28aa6513fb23cc9bfc
Date: Sat, 04 Apr 2026 15:55:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775318133
