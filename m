Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4368B17BBF
	for <ddprobe@lists.linux.dev>; Sat, 24 May 2025 01:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748050794; cv=none; b=Y9WBOgFZ+WI6so05zrCIDSupTXkwmWkgaXLscWHoqVpkE0So2qS09Pajo6zDAI1SZ3xTxZYmTcc3Pxxs3JBDFELLOZKJiMl6RdWSRpM/vGS5AfiGGdVhWgeQuT4pqzIaeHNsP0CjUnVjUI8B8dM4WhrvltCCpjjnPD5RI+xI8Eg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748050794; c=relaxed/simple;
	bh=mh0AqH9ZLtYSmvGeFJp0Z1kzFYGtstOhi09TJ/FWG90=;
	h=To:Subject:From:Message-Id:Date; b=KNRU6U0t8TO/ACUlmuP+pJf7QsmEFZ1mt+xwGmWpq7pNiODXMDai87RqbBWoQHn9BXQO3RIQjhVGTPFnKUquT3mL2tWdbh6OIzjkT165iQp4+gNtUebxVc+hrALyOHzsedogz4LjYZqZKQnCJ5DZkbf++ZHk6xvKOk0Lt9iNbtA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TLHkJNML; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TLHkJNML"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC627C4CEEF
	for <ddprobe@lists.linux.dev>; Sat, 24 May 2025 01:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748050793;
	bh=mh0AqH9ZLtYSmvGeFJp0Z1kzFYGtstOhi09TJ/FWG90=;
	h=To:Subject:From:Date:From;
	b=TLHkJNMLRlxEUfLm0uTffxT3rfCzWRYxXnBpnglkFauVY9kZO62P2AF+qmHauMuvu
	 KTDhgUEMeIo9ilfjC1dnvt7S2qnpQiaW1a/ih7LLRo62KuLTuIVDZtDXy6Be08a/+v
	 orKhQgBjQXB+ZNu9UIfTumLctiUnfuvizpYrGS0tsYM6rWH9hzPjOwixm2E5ESbbV7
	 uHX9WCKHHKAMiPEURzT8/6xgOFzxr2kA803ITGVMfkvnkqRMPvjyquODZ5QN5EvniX
	 TW5qO1Wvddcnf4V5X35Bz59ouO7GmvCwMAXqWM+Muo84XfMZS1e9AH/sHqTGrvldCH
	 4pVgwS3CY4Bdg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99A01C54ED0
	for <ddprobe@lists.linux.dev>; Sat, 24 May 2025 01:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174805079357.8881.14221649270660102633.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9dff24b699b94f78cdc5c49aeed2fa226b0bc419a469782dfddde3c392ec9d7b
Date: Sat, 24 May 2025 01:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748050793
