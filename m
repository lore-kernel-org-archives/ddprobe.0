Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2782520CCE4
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 14:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766847234; cv=none; b=WMregjkJ0FeCfUYfBCGkM7rPNSWx0tK3O+pNoQ0l8ZQlei2s0pqyahVA7m84LR76lFVKyUOMVB1VCfRVzYEsSaVPB5w/HQyPTNMEQw/MeSCalaZJ9C1Ys2RLaK3+mcZ6O/iALkLRqLKYLjXbKbjRSqQtFrq2/6U2+5jZfoae0Bg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766847234; c=relaxed/simple;
	bh=MJffttSxrHPbtSr8hftg0TcvejzXbqFGkXNBxXJeU3k=;
	h=To:Subject:From:Message-Id:Date; b=WRrrHuooy/UL+x9BKqIofIUkt+NfF8YwnxoAPX+OnIh6AxbdtoS500KCrQy8JCSE7JKwJMWLhnK1C9wI2qpPd8+mCGAjxr3QlrZ5Ypc1I56M6W6XrVK6JcgdYcLdTp+4Fg3+QLGAAkfviAZCdiwSO/oeXonqEEHKGIqfrMktdag=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aD0LzqHC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aD0LzqHC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B60ADC4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 14:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766847233;
	bh=MJffttSxrHPbtSr8hftg0TcvejzXbqFGkXNBxXJeU3k=;
	h=To:Subject:From:Date:From;
	b=aD0LzqHCJpWfDaPEzifTOPsy50V0yBc8y6icYp4ebim3yXuHP3xngoLHnS8XiL13C
	 b0BYmGo30l5OqQNUG93nf9vPkrQfAjFFrxsxB/giGEkCp2PkHpy9i7RAMiMfsqPUvq
	 j3yeh6nOVILsgTj0CcrNmZN62qOQRaXASCZRrORfh6mrBfS0nKstCj+IScUD3pwAnt
	 s25LqEuBl74VBbD0KnrJfS6d7O8SJX4o5YflSr6ogc2WkJogW4oCMah22l/Q07E4qu
	 2bm0pTy1N5I+BJIoM78PcNchvOwOXyQkN8iv0lMZZkz15d4SnhttOYWH2ZKcRP2rdf
	 uU7pKpiUTArpw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BBC5E8FDCC
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 14:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176684723361.21440.14431328719752354557.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: de0da9c1a4ce70df4846e992cc8e34e98d9f4e10fc0321080f724a948adc8621
Date: Sat, 27 Dec 2025 14:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766847233
