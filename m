Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F6312D1936
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 23:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763164794; cv=none; b=DhdNCdCFZDHAqeRV8lJxpG2+iJ7tezrXIRGWhDgu1cxPP5kj8N/VDz4Ox/WiTNvMgJECB5GCGmbk+ZRnHljuy30c/3NqdPJYygnO5AxPxXU1tSeMBpl7Hiu+DX6rwYTyfzLgaWS2rulPRU5jyI6Z1gXPvvHBGWVVMPj4vtVRi30=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763164794; c=relaxed/simple;
	bh=fHhBoVvCyJ9hW0afmURBI1FgmROJVyFNJm4QVXADYoY=;
	h=To:Subject:From:Message-Id:Date; b=GJ2O8S097BCqtdnJWoSsbGGjwdUmiWS6oqbq7wqx9Z723pshCs4DLxnuW6tGKPrR6xKpARKAlEqHsi2oYg7anMEIyV1UVSu2WBEEqPilL8UC9ypplCyNlcBVkmjrs1NpbJYfatxtVk71c/Q0leeNFlzKVcbnPnKa990vXcq7BDg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a+uyUIOC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a+uyUIOC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C4DFC4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 23:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763164793;
	bh=fHhBoVvCyJ9hW0afmURBI1FgmROJVyFNJm4QVXADYoY=;
	h=To:Subject:From:Date:From;
	b=a+uyUIOC+CPjHLhbLGyEG/xp5xGpfTgeexchlKVv4O29kDOQ8Gvxsv7w0C3tw7GvR
	 e38LZ4xcs+OID81DDwzWmyRbr0ZHFtGzLo3iLVYTnjUnB0drd5uTz3rEAGeM/SbHmn
	 UuG/K4rzZ9KAT711NMIXyxQGWUocZwxNV4r9iLNWAHEgA9vGBt0S8f7s92P8YRdIfO
	 fb35NPin/ZM1B4hUiBXEhfQelCfZTimJRuzJte1W2ni/PGV3vFGDQZxCxcABJB4/TO
	 sPGitah9zvNy/sNOBgUmk5WEhFD+c/P6EAQHJDP/sqJ6iRCf1jpa+poiIK4ZAoH/Vs
	 2hExsPBgXAF4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F3DCCEACF9
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 23:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176316479357.32281.3395839402949997656.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f9fe14676987f949b8eb3fb577c2a237c1ddd87a0306b6ca6abcfe2f94af4213
Date: Fri, 14 Nov 2025 23:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763164793
