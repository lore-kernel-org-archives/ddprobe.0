Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 094E434D392
	for <ddprobe@lists.linux.dev>; Mon, 23 Feb 2026 11:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771844694; cv=none; b=bsc0QncHmB/0tYHRWfL41EXEbb6XdF9wtcnawrN+QP2pdse1nInE++gy7ks0dxwEEDFSblJE9c6ChogXQqagm3MEjRseQKeTa0JVInu7KRFXw6EfsLp5Y7vT88j73JB320X6PoiBM3gi0v3nfJJkktpn6nlrv/80mvaStywiLOk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771844694; c=relaxed/simple;
	bh=j06ktL9faXW1WZ3eyXoUN5Dmby0WO0GHkZpKoJwHrQE=;
	h=To:Subject:From:Message-Id:Date; b=XW48SBRNgueqRO/lNVl1G1DKyXciTvVjrd6cEXQWag9M9KKzyXhK1rLTt0wAMe1ptRuUnwED0m5a1PubEp4kAJdwyk49kuPijjVvsGYjIjO8MKhB/X8A6hBlBtPUW8siUMW1Jtphwf9BOPWdIbJWC94o4ZfI2HWx2at55qN02+Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Sr7u2V35; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Sr7u2V35"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 98BAAC116C6
	for <ddprobe@lists.linux.dev>; Mon, 23 Feb 2026 11:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771844693;
	bh=j06ktL9faXW1WZ3eyXoUN5Dmby0WO0GHkZpKoJwHrQE=;
	h=To:Subject:From:Date:From;
	b=Sr7u2V35sbta/Bz4jxY+AtLPGvzGzqexuifBGr8xtdBF55DwrkxgywYEOGjmUk6+6
	 Rwgo62NmsvuNoRu2gskx52dNId8Erw7VhdwKYaC5KtlCNazDJAUvm7fv39nkg4i6GD
	 C8sY2qx5748XsYiXXdBekmclmnC1b+MImXsHjpYanqxSHg2v6joxwmA9XzsZ31KJ/8
	 jGygh76eyQcZfecN7MEJvaydUDg+bQdSoqvFNzw4EL+wJ4tVOyNrZdPLipVu4vDdq9
	 Xd4Hfk1epMS9dH2g+DOsnqkfl1BIpajwZFbJ8DoRlRGURoCnSFW+AdpqPfMTCn5B42
	 M+Gr3i88OClSw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91AEDEA4FA9
	for <ddprobe@lists.linux.dev>; Mon, 23 Feb 2026 11:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177184469358.4430.1514857626049403986.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f7b7d6e5694431f4290388c8358d3a1f8927505133a9338d41da7a499f10b601
Date: Mon, 23 Feb 2026 11:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771844693
