Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 643D17EF
	for <ddprobe@lists.linux.dev>; Sun,  5 May 2024 00:52:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714870343; cv=none; b=Yetn8eR4Ir6nKcpvLwvid6ePebxDc3b8co5TYLL3/RqiPDIqRSa8dRaG5R7fxp8yY3T8wv5m12cpPLjgxiVIPUox71L26fKTxh5R3K+/lQ1/qImGTLB+18xw3qv8CHnT/ypsidNxpWh8kn+mhtFZlZ4IBNvIf2r7QUC4Wa/tWjk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714870343; c=relaxed/simple;
	bh=NASVWxHGWF6b1JaVXdEhkROBYgSEjt9d6kz5deWv5NM=;
	h=To:Subject:From:Message-Id:Date; b=L6+wt0k61joFbxKGx7LVpMIGrBseSNHlISwf+U4y9YfqnDZqaY/+zaRZj4AIBtoQMVLQ87ot3NiN1l6sGyDkvED3qOteM3jCqPOQdZLaJVDG1PUSdFng6MKap2mpdOPoRZEibjbVFpV7jNKwtfvi2s1C2k0CYLGG6j+GuVtVlOo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gSLllCbi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gSLllCbi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D085BC072AA
	for <ddprobe@lists.linux.dev>; Sun,  5 May 2024 00:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714870342;
	bh=NASVWxHGWF6b1JaVXdEhkROBYgSEjt9d6kz5deWv5NM=;
	h=To:Subject:From:Date:From;
	b=gSLllCbiDMetiwuO5VrN7+q9Ef1N1ofVlabSo4ALHRguX/Pel7uz3BOT7YHzxNooG
	 kg7QMcOTwimFquNyu2jakI5H47zB5HYF0U8sBITFIGt6zm2pJYD3Ol8R2M7bbw818l
	 fQ2tOtiYHgYRDkt2kbDXF2pro0A3FO/97QINN7rWtyys4ziaAPao7W/se/ReCc996W
	 O2727mivHlbB6o/PJkE3rrlJZxSczierzIxvR7G/qDiRN7g0b6EV6sZdCB5r4VfQbn
	 7jRowayooaqYJY9SFJu//m7wu74iBPiiJJuIbZhlR7JTvPSZA17Y7LuXbYQ/pDVPqR
	 f2wL8jK2LYEDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BDD36C4345F
	for <ddprobe@lists.linux.dev>; Sun,  5 May 2024 00:52:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171487034276.32582.18013817970686839783.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cd00be449ce2bc7f8ffb1d903ca091ee26fb4f5b0792a0ab18e0fd151517c00f
Date: Sun, 05 May 2024 00:52:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714870342
