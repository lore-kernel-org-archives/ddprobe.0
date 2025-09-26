Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 186591A295
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 03:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758856194; cv=none; b=ZPyaJ+mDqt4+Ha4kU4UknC0du0T5vajB4mcQNd/NwnCqIH/xRKsC6LvSEOc6o+oW2vWCDDGoqoM3g+IZitN3SspjY026e+sYwbnfaRPH9+PZkKfiXRVozKHXg2m8KYm1+wp9S5WAZ7XVFiXp7p1pzG+khdlE6xF5fHsjy3JLg/k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758856194; c=relaxed/simple;
	bh=AlP9k7iftZ5YZ1wnHfmieaTjI5qNuXCsPrFSp3z1NI4=;
	h=To:Subject:From:Message-Id:Date; b=p3B5el3rivmGNjbB3aYs79VNg0vxlysbxHBkfyZVSuVcRI1VUm9SIrnWno5a6OCNCYNqvXgm5cB6FihhASUz2CeGGZcqpijSWck6SdRF6i8+5N0Ar0FhtQghpQwyKKBLQs/yaqxIajsItJo5VeRgjNJ+IUTSPuvRxOgLxNp4H8g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CuWvH9ux; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CuWvH9ux"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5BBFC4CEF0
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 03:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758856193;
	bh=AlP9k7iftZ5YZ1wnHfmieaTjI5qNuXCsPrFSp3z1NI4=;
	h=To:Subject:From:Date:From;
	b=CuWvH9ux/uFcmLanCxTgONNwTjZeKqt2xovLiQiN67we8wOIjDGVsCPWW0Zrny5yD
	 BniGO0crXeONL3/S4zME7CX3Gei3Q5pXaQHEwWf3JTlO7MqKOisHivkhGn5OMS4M3q
	 alDPGghEO7DO8QmDq1DvO10EjKBLL5dSu2bUin6SidEHYlEehEQLTw0XVRIW5o7Ys0
	 JJABc67ztmGe0HSN9Fym181AOECjaNRcniB79XW7Xi6yALmuMw+mHBfHXBNWLqdURs
	 z0MfwzX+SCF5htEUb3RO4P9kfOPgnumF9v1a+SgvWNM3vZpMsD4P7A5th5Ca1mNFVm
	 SlPnZ+T4ZOQ7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92EB8CAC5B0
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 03:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175885619359.5575.7214813445214044929.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b5f64a8728f7c0ca9473a687681d8da45a139392dd387976c0fddfe0b179562b
Date: Fri, 26 Sep 2025 03:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758856193
