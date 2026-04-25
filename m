Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34CB41FE44A
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 14:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777127854; cv=none; b=GMonaKky4UIitRob/n+fz/VqYYd6MO7JI7klB79Mir3A4eGX+mWRkL2sG0WIZ+eA+RfUMpGdPEeeNKBYvInMUDjFxClGHtYO3rWUksve5mwcwi7UE78xrypnab61OLugrB6IXoUyGuTYAZtTLHwM8eDS6N+NDY+fxHLMmmT4Af0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777127854; c=relaxed/simple;
	bh=G6cT3/3gre0f27lTd6/QprFusHQ+bY8tkNlap0TcejA=;
	h=To:Subject:From:Message-Id:Date; b=tjdwX4CSL/5pNZd86pjKtPaGgc3TqHx+14KUQCGpA2lCi5MMb2qRjC1lMaf64knNpcdjYs6qH/6Z6Om1KANWODpKFlXLEVUkNKTk34JJi+bQN9kJf6OhTKJVkSS28QtBdf8M2vHoPBGxojIRZ13xX1VsAevKmAgI6TX2FoNlpNo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=apAFYHPC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="apAFYHPC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0CCEC2BCB0
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 14:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777127853;
	bh=G6cT3/3gre0f27lTd6/QprFusHQ+bY8tkNlap0TcejA=;
	h=To:Subject:From:Date:From;
	b=apAFYHPCZvLpyPT0johj1Q0iAnLTW0IiJDB8tsePrBwkYobuexLyStauwFQOHFS9r
	 mwY1MKaybnstd+Pg9EHf/e4tBDl+JbHrAXu5nwf5Ky8dba4nZ0ga3nVJNsVAGsm6cV
	 4MdpnrQj8Jnfs8Wgljgr/L7q81gQ8tynLxiJtXQ+5Ph7wI/Deog1TFSAskmHwcpB1+
	 7EC2SrIEii06PVeAJ3krZCj3GsoyOaV2PnlRmP2K732e60GQiX0hC2KA1Z4iDJUNcb
	 3d6s/EMsj5t2kimqZsxDOjOSqtJsDwixsfc5sva65xWNbClv7s+IeTahEl+5jTtXlb
	 8dNvayLu9ailg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC005FF885C
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 14:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177712785368.7117.14307994177865678087.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e471274f1af76d7eb8cfc11d6a9d752ab023419e9c053b40ae9f5db3033b475b
Date: Sat, 25 Apr 2026 14:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777127853
