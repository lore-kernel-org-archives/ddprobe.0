Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 178C839A070
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 13:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773668694; cv=none; b=eZZs5+YJxK7Z1tRsZl1G8PYmk9DXJafT9osM79VeztFlLI4OS4js/X3MOIohTzk1FWFkmJ7KWAfWIGbzwPvSqMwhFPfuryjYvoLy4hJXaWLF3rPrjFBuIUH8nEGSc5gR66QMiU++Jd4vtCMuSa5uFZVzJglQE+OTidx9ujPpRts=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773668694; c=relaxed/simple;
	bh=wwsC7N5t1L9M+L2fy4HzpfwDw5FSKrvu+A+EShi5R+I=;
	h=To:Subject:From:Message-Id:Date; b=umN8+lzSX8KzBU3zn0aUWnPtiAo+rR2HscLs+c4zvOQKyNiE/GSIVlFITA2hrIXv3j/bTYNuav8acj/NZ8SKi/ItTwgaZfjSqUmM/4yx5j3do8mSzyFVrdJs40D1t1jhBvm5OPu9kc3YrYodKBwoAZXkcFPgalogbcRFNjcFvjE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s2izwgjI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s2izwgjI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3386C19425
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 13:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773668693;
	bh=wwsC7N5t1L9M+L2fy4HzpfwDw5FSKrvu+A+EShi5R+I=;
	h=To:Subject:From:Date:From;
	b=s2izwgjIAfnGyiZUppPmc8GUYI7Oothb+z1Oy2SemjNZMeBtJ3+3SFyxhEhSK1/qg
	 Rxa/4vbRx5DI75CcmeErcbmab4V9kVWQaoEIOFk48pCmAwZXicU6/eWwON1Qs31Llz
	 Z4suNHqepj0Ps8T9h74CYHAT5PnP9bDDThDRMPIhUTp4jwk0uoAf/TC7VQzNxLGuTh
	 htB6emT/m6AUt/akNQ+W9Pm422sX0K8GzFh1qgh+bSXTvwqhUgWl5ElHO3LMB7C9KU
	 QvwBj4UPaLusvq60j4DcQ7Np7bFRuJI2sDxLsdQfUjKJPE8ZK9y6Zrlw6sN/09HIxQ
	 12Jsxkrp+iyjw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9029EF506D3
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 13:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177366869358.29236.8777384623228692501.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e131b524e012aaadc009c202102c1848f356964df7723405ff324dc991773cb2
Date: Mon, 16 Mar 2026 13:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773668693
