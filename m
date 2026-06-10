Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F8E917A303
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 00:45:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781052334; cv=none; b=caIrCzK309Pu4r2bwLgtg6ZPp962yax6/CMO984Id11bKNiq1XNI5WCe+SkUmfW6v9TCudWOiEtYUSu586NlwehuTAxeuGncQ//NPiUo5ekiHRVZIeSOEXxZWk5/8RgCzwEK4rOv/z804SExqbgj972dUBOYRVLazC+SulMmk78=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781052334; c=relaxed/simple;
	bh=B8ZFc1CXjGkcqn8eoMV56Dof7gP9s6+hpxA4GNUSlrs=;
	h=To:Subject:From:Message-Id:Date; b=qpPgkQYxkc7c/Cux6HQnmFXIqQABkAz6S8BcytkCTZihlnnyE2VyfXtxuyy8I2k0GOFjwyeMygBRr5kGQDpOAgcie3BwZtc2sx6Iaehy7lX86xR/pqg5fNd+wOo6ZiMYjlqLUnXMvVdyZ6+eNHG2QGc1ST25ZLtMEBZ4/LjrHyU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=onkwkZTE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="onkwkZTE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C147DC2BCB4
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 00:45:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781052333;
	bh=B8ZFc1CXjGkcqn8eoMV56Dof7gP9s6+hpxA4GNUSlrs=;
	h=To:Subject:From:Date:From;
	b=onkwkZTEKBKIq7LR66/uBV6KASFY58m6DfeFKBHn03Qzik/nOL20P7SySv/DL31de
	 1ljtVpBEf4tTtbQbmVpoRlg2unLZAVEfZFdpu2rSgmCBHC3gyK5fzbbpZ+Hz+ZLtMh
	 dQpAOHaVC1AEaAOCzH2o8s/XMIvwzyHgtv9zOfTdcULEJSF5LPtmIcmd3ybqZKBsgg
	 JFVWGuRFlhUlDweTemo+AoTmWJMcMsmV+0Ir7oTvzkGdVZ+wicAuBWwYMGdQ9uHNJt
	 R6n2v4dbp43lcA7P28lqH8wUVv6l0s0eZUibLjHrHtZow9B4BQKiKxfPJlC2DJnqJC
	 1CcQar9+tD8Bw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9198CD8CAD
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 00:45:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178105233368.25417.1488399348246425016.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c11c7928ff4ce3ce7924932182fffe62dbbe351067fc0deff359da29d7c90485
Date: Wed, 10 Jun 2026 00:45:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781052333
