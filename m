Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5FFF58BEF
	for <ddprobe@lists.linux.dev>; Wed, 26 Jun 2024 00:53:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719363203; cv=none; b=pq22uL5oLcP9C9YoCLN76kzdYemdlCWCWdBg8k4nBJq8aXndRgBOaQt2wdsVLtZKuYIXjp/QeD1Qxvp8Pu3FEAqx7+XonCRrSXl7DLODUAZ4sCp9UjpqmeiQBMcyG5bTJFmQ7oQFjp24DBDAang39MheHRTX4h7vn7mDCNyBJmk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719363203; c=relaxed/simple;
	bh=v7m+EUCZw7CQrQG8Nplo1K2EXYoBhF5rgxT0j0OxiI4=;
	h=To:Subject:From:Message-Id:Date; b=d58MyY9xUfaERzQDQedH1swkBan34hpXAQY+DDe807usHv0e3JHnt+tG4U3ubsC+HA+7UAYjr9ht9ZlbKSVMhHBQAZMX+C1MoOiJ6/Ar86ObgRlMvsWXJ/6IwhcBefk9GYLGrCT6fAfsiXdCWWATZPQ6zS4iCEEIijTicIVu8Xo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iv46affw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iv46affw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EDAF6C32781
	for <ddprobe@lists.linux.dev>; Wed, 26 Jun 2024 00:53:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719363203;
	bh=v7m+EUCZw7CQrQG8Nplo1K2EXYoBhF5rgxT0j0OxiI4=;
	h=To:Subject:From:Date:From;
	b=iv46affwFnAKNwCCS3g7Z2xnKPvPhPiqe5qqao9Z2ASof4xnf9URbOaB147/mqbTm
	 yDnX8t9kdM7GLSBl0qt4LRXg8QIUG6G54b7T300IaRZuwp/XbpzPWQcGOA+BTj93cI
	 wvpJx5XVpzwUF7sSG64U50bIz+vKrv4AUUdSoEGrSr9ABJ4NCvyMHWj6m9YsckscNa
	 J8WmBt9XdPRJktxkHloX7e2O8Oln4TnKkQet0OPgl6NZ/or80cIv1q9O8UZNFLPLaZ
	 nuzQAVhvQ2q0Nw0BXvANcY05PvpYO3oYusNhINmNeZ04zuLenYTZJ3cTs9DPV3kT8s
	 DtoFQqfIe9fAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D4BA9C2BBCA
	for <ddprobe@lists.linux.dev>; Wed, 26 Jun 2024 00:53:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171936320286.19604.13076228227224476354.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ad522dfb683ca2341c3eabe12bfc3b73a3127b0c913c734689276dd84225f1fb
Date: Wed, 26 Jun 2024 00:53:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719363202
