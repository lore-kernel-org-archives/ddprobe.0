Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 109912D94A1
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 21:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769203434; cv=none; b=W4KSd72ZOR2/TntRb7srJU2SseasIY2kHub2KfLeboxAzVDePCwEySP4Olvhvmu0rSEvP2gq4LEt+zvi62yXBpA9VXUcUxWHl+ecoA52X2Nr/tuEGBrMSsw+R2ojesz8GFTvL2415VVRBjUeISU0EVatHf7QOyOt1k9IvC4KrJk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769203434; c=relaxed/simple;
	bh=F24ABUJqbLSa+UXpx2ExbXMVqwRi7zuOa9rkCHtCfzM=;
	h=To:Subject:From:Message-Id:Date; b=cj3F5zK8xKUIRdGgKajKahAowNWEFqw5CCTl4MquSd87edYtq+NPsCvO0bUMGvqfVFW0BJorLFsGfNhySHS+lNFkx7i7GgEo6afgtGUMzksmBgqwG6i+4bdbk4B1yOz4dDGx+O4DseLfQjUvP+KzNmbKleHTXikgYGpasnCVzMI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CsOwgVrY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CsOwgVrY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1CD5C19423
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 21:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769203433;
	bh=F24ABUJqbLSa+UXpx2ExbXMVqwRi7zuOa9rkCHtCfzM=;
	h=To:Subject:From:Date:From;
	b=CsOwgVrY+mMwQHb3DQT+QIqQxfaH/9bfEYPLpobO/hDOaUS+Cpb7ZfBXokqDNr5yi
	 HDzM4UT5wgNA0NzZtysUwsmLEzhCKNx8Cx3WbPuY753srhwgCsVSe6tnWatkwcmf0M
	 EHH2ZR7OO+IfnYK07GhR3EhWw6j3OnJXyonqPA1UN5OVfZiKARAtl+Ly4bCTeF092r
	 AULpkNXax81g9BdFJK5UaPJSthNyfXbu4bixrZrw7ViGJVJGc+xTT+z6leCV7KwXXG
	 /86SC8QqD/YKUH5BPt//fcWrzi7Teei+Le1hpzml0oi3BuIY/m53woblIV50bblBbp
	 Hxkxq5jFlD90g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 929EDD778B1
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 21:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176920343358.16125.5782759327757690693.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b1c59574c28bf31f2d26677e601a03e26d6e2fa867b15bcbf17b604a1514f1e9
Date: Fri, 23 Jan 2026 21:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769203433
