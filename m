Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FBDB359A8D
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 02:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777775254; cv=none; b=hoPLkMs1yf4IUwdnkopXvLa+P2rWnkejqc2mzOcKpOQSCqtRMiRsNtkvlNDRHf0rZzNy0CEwe5OCE03KC730cHwI99Xkjcln8Cg4M8kWtgg7Ye04efxsbXhfnovqxHsbqQzh8Fe9IdBP6nxcd6ryYydpc80zzFFcE80QNLgbVoc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777775254; c=relaxed/simple;
	bh=QKxU1t5JziGbEJC3KbSIWzI8B9oUIESts6kkscWbVCA=;
	h=To:Subject:From:Message-Id:Date; b=OkHLBwFp+7B4GzGwVOpl/4vL0WYPHAU3w9joGKXba0KLeoE4dUUO8R1a9W+c5lAMi7kmH1HzGS2RYXYvAxV26co9owbgKMKExsdIUqiTV48RaonO5M6d/GezBRykVdjQxjuCF+Z7yeJXHF+u7901Oip1KUvkJsjkzJCo/vMAVkY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OXkaGyPu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OXkaGyPu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD8E5C19425
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 02:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777775253;
	bh=QKxU1t5JziGbEJC3KbSIWzI8B9oUIESts6kkscWbVCA=;
	h=To:Subject:From:Date:From;
	b=OXkaGyPuEeDOacEMPS4CxQv/wZn/qgboKZ/aXC096pdBrnR3HVlKrf6o/k4sC6bkZ
	 n+1vkgJOMKM9paJWysxfjDWQNhWe1AAIaxPK3ZT2Xpvt3fZjh0wNYrafXdRzSBmiFh
	 za/MwQnFSEJ9TmLxN+Q4sDN5iD0dKs2rxK3OsC6gPlXa/q57SHwDlsvcmpf287CMZH
	 EAwH70gOBCnwbJT6P82UfEqBeC7DxAJH5PYViDR/3U/KmwNuy8jsrhJ3zhYhsj6a7O
	 WoAHFPCPS9Bhj5nI5Z5xaPU1CVMvz2Ug0kkgLJKlv7kSFg8Jx0m8SnkkEW3mPC7xUY
	 mskgs+SExeSYg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEE74CD13DA
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 02:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177777525368.17135.8025984957060226902.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1ba4b4ee0cdb10b5019f12d0f6ab923c82973728c93ecb95d5ba015d0c444a54
Date: Sun, 03 May 2026 02:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777775253
