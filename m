Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F2E6225403
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 04:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785730234; cv=none; b=trWXm+Zum/dmo1705k0ltg3xYsd7HtRvqc+FhOd44LfA8iPTc8xeWrth/RBQ9K6QeuerPbGZtP+C0qcvqVXetEp28GudvA1Dc7RTZxDibIE06VboThMm5ZjMwdl1uuQdT/j8FTcsjwVevGfniC1Z+Kqv3aAL2gxsoGaLlP9QkP0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785730234; c=relaxed/simple;
	bh=VKOHBXFhJRjDwlZONbiplpKoWbZXO2covhABJLZg7ZU=;
	h=To:Subject:From:Message-Id:Date; b=U4sUcJqD407JnicGuu6M16ZSlVqSzKCfUbsle91fsHdbSzU6MXGY7k75mNDv2pslsL/vhmpYn+KNGf+c9NF/ninyZ5YnHMlfUS3o9Ois+kmvrZKTg7ExF5DCMmzgO3HhqmTDHPiF0IjOUKBCvOFPR78jVqN6EJjcA9i3OpAiy+Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bwWGNgnY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bwWGNgnY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D101FC2BCB9
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 04:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785730233;
	bh=VKOHBXFhJRjDwlZONbiplpKoWbZXO2covhABJLZg7ZU=;
	h=To:Subject:From:Date:From;
	b=bwWGNgnYMlijcHXMg3FlfbbQsuf52Y/kbFqIR537Wsj+e1dP+y1kntTD+LfYXnA/3
	 MI1ZGmhU1Upy9PajNPfSnNJ3qWLSakyIAW6hIvWsJC9za0s2zN6b9Qq0NnT/RVJ4Lr
	 mSUksbcNNKedPS2gN9hEwI5xEzt99eOJeNezRCwFNCAOJ49yTpUTMWzkTJzNNxodeC
	 5L2Wuznd9oi7IqiEoLuHgW/DEOBXB/nfyxqjzyR1Basqnn8o15mLZgk+aSuC/OFVVx
	 NjuXUQ5zZVYr1SZTpMFRPLj0dxu5TjP1DSNkYyks/gfRtNx3KX76Ns59TgYjnRo7CC
	 0bR964hdP0CLw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD14EC5516F
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 04:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178573023369.27787.2682168208750089628.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b579447b99790a4fc76745d46fde9ddec2255eb80d2b43b2f7629ac1b9a28484
Date: Mon, 03 Aug 2026 04:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785730233
