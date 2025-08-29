Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16208192D8A
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 15:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756483194; cv=none; b=ohTbTDtJCbX/d5ejRmz1isjP8Fmz9uf70Mez3Yl2F91M7Akx4rQlllgcyUl/RB7zPkULe2of69BbdJ10ntT4wcwfZ2eKlJ40gA7wti2QUmdbazX4mnKVFA5PL/V4lbGoEHtOCKrFqi3JP4Inlz8WK6/iTOF2Ev6EERMPpPNrN5s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756483194; c=relaxed/simple;
	bh=XplSzkPEHHCdYAXoPq2BR0i0ep97HV0AGJ2fUkrgbFI=;
	h=To:Subject:From:Message-Id:Date; b=ALIg7kOnVR6Llk+/cvyQ6SJX1fGsgwQaQcYQBhTfZM2ShqPCWuSGW1a/i+h9ODmq9i5drkrGyaMbA0mUkxU10/CfXrQVjA5/Jax5LqM8tNfsOXfItP9+URxeemWcMxy4qt5XodEjIJsCDHMEZmoPf9670Q1txIHCsV/AYi1htZ8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aDPSdeJl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aDPSdeJl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E728C4CEF0
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 15:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756483193;
	bh=XplSzkPEHHCdYAXoPq2BR0i0ep97HV0AGJ2fUkrgbFI=;
	h=To:Subject:From:Date:From;
	b=aDPSdeJlg0eol2i0XlljJ2BR+rTLiM6P0+XmWwQe8Jp4JrpzEKN4duq2FCGZ5Tv09
	 3SS52Wa1NCnxM5UbTDXvugh1iRWEbw1K4D+GBxz2SMemCfmxQhb1UpUXj9/nRm4TSm
	 CTlwA6mBALH7gKPzNr4QxkqTgnkpHZyUECfCjZ47wtr3D7r3mEHWrbns8Yya2crPyd
	 l1ETzuSZYydbKwCN8olM8m8drWgE2p4yxeOPpnG0IjAZglsXSPeL/7Zoa0x9LQihsu
	 OXdZZ4o43BdUsrsQNn8muqX5sp7fZWfQEA1IonZBjJOlQ1cUZHDvHT6thwcxCWYAdg
	 iRUMfI/7pndaQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EDACCA0FF9
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 15:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175648319357.794.8606326261159760221.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ff1927707fdb58b7631884b18d044f3f7f427d2451eda5caecec045a7691f774
Date: Fri, 29 Aug 2025 15:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756483193
