Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D976013BAF5
	for <ddprobe@lists.linux.dev>; Thu,  4 Apr 2024 21:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712266696; cv=none; b=CeOIMFvPT6ttWYop88kayLxtsoCn1UFp7E4wc2Y11eD0m7ZReRcW/0WA+mPB0YoV/LrhzpeoIWskq8cQly6v7KsXcQisseciZDFSmdNAkBSYcI+aPb7BRugk0LEGnl4oet2YjIEYBvWy4PvOsrrx0gp8U6JaIJ9Nxkv9kwIfFs8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712266696; c=relaxed/simple;
	bh=bGoe04dJ8N2ehQMjdMYuQoNUe3Tsxh4082Cf7znu1IU=;
	h=To:Subject:From:Message-Id:Date; b=EsTkH0SDi8v95GP7vwVIyLfqONtIZ/DjKLNvtzghj6jj3wv++K48hVAm5fBNbUOpRth8dS2181tr21cPTVr4SYExNtgfQqF/NkpeDDxqyWIOrbZ9Y/bBOhSsopTCfVUWt1nzvQrrNdg5GjQcd8VKrM31h/YYi41gaI9HJMNvCJ0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KjDMycku; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KjDMycku"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7DC7DC433C7
	for <ddprobe@lists.linux.dev>; Thu,  4 Apr 2024 21:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712266696;
	bh=bGoe04dJ8N2ehQMjdMYuQoNUe3Tsxh4082Cf7znu1IU=;
	h=To:Subject:From:Date:From;
	b=KjDMycku2YIDVMwEs73frRSK1QCkorT6aWP7kdWqU7jv3cn+w9kbuDrg1FvmZ4utL
	 C0KbYzo7agNKav+cHmoSxGaLGv+KS6mOj84UESLL5UZBRoqt5yca7jDaXGTkMCjNli
	 x9Kxtic+oocKBGUYjpGOCsbfrTvyVUQXTxWwu2N/xEbFjfBdGfkIOoe1ssmAfNKPys
	 DeCmh3yKM1V0VezSfuuoiqx5CrOkEC4qcCiQi4xck11xqAQLktXXL57qH0zeSRG2Bm
	 Agj3CW0yCQTM1S4EpenteFKtYGbGFGLe1a/ils7kCov/CsR1963BzuJEtP14AhYmRm
	 xfCTcoAGyBo1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 64DA8C67861
	for <ddprobe@lists.linux.dev>; Thu,  4 Apr 2024 21:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171226669638.26860.13947507252418512580.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 26c4024dbe83fe1ac9d0b563d3c885c5b2120c14afc9c25e3d57deeb7c6f3348
Date: Thu, 04 Apr 2024 21:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712266696
