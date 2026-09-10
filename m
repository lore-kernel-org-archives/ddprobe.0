Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B26B489FD4
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 15:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789054234; cv=none; b=cGvfIQnK+SEE0fiMEBHhyBFobocU4HNhAMwoCSxPOPvIc0t/+TuT6nBAnXXODkuyvijr7o33gS7SS4gUTua/uO1YtiGR0UCQcjFjgbvXmWXwuBg4x5usQ2BafvkJeA3RMqR8tEkA5FjsiFzuUiuY4ivUJq4cXnGjBQpmI4mT0h0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789054234; c=relaxed/simple;
	bh=YxvaIecMieUfgQxchnuAcQ9GqcMrAkN1BPpMMod4HLA=;
	h=To:Subject:From:Message-Id:Date; b=gi6hfHXMvp9uKJaP2wlbR7ckEPhJzbOKPcrpKd4uoEADruJue9/e+nGaD+KOOfD4YsUbaYjAY+Fn+IiSaIC4x0aBka2x87F86cWatZqPfZmfWz9mysQMDJLp1N6rp1m3HlPc9nKD/icNsXAKKNfKnUWu5i4fM4+zbmNeeCu8U8k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oDyhP3mQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oDyhP3mQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9CFBC2BCC7
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 15:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789054233;
	bh=YxvaIecMieUfgQxchnuAcQ9GqcMrAkN1BPpMMod4HLA=;
	h=To:Subject:From:Date:From;
	b=oDyhP3mQ/5Cmbh1viPTI2Ssbh7UZZXZsFK3onragp/+Nwpn52rbSQoS82W9PvQT+i
	 +IvsTTGOQ3XDp/5N5miMuOBLfDtXm9csQYuyYmfTl/aDmJynrT6lBGS9oo5o7HvByr
	 e4iTRwq5lv86Lfaot7SANJsaYgUCb7WzjwYViKM0ZAgzTbJiFuzQmjKXWPETk4FOfy
	 nAbb8OjlZw48+HgJC0JYCQYjPMe1q2umqELQxXISs1rjEL07ngL4vYOVUF7iEuhR0p
	 YdULmFe/ZkysaUWOTNJHcUreo8fcYHXZQ7MA28Wr2HY3q8L485TmM0U1a+bN+aZfT+
	 oG5xtJTQvnfPg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2364C79FBF
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 15:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178905423371.4569.9784895657572191577.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8405fd93c3b4ba4da0539721b4fc4e068b11c4ab41e2b5af6fc254d59532c66d
Date: Thu, 10 Sep 2026 15:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789054233
