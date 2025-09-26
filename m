Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 08321BA3D
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 04:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758862794; cv=none; b=G9MG6WuOgItiPCim7q8itnyiQxtxgCT6JEpvyRZixcRhbiMjXx/BLyRbSaKeVrntvsVRVcNkH+DAnKeBE+0urzQ0cpdFliob+SZLKJSWxs+QVdPOIs/HWapfC2A/ImnQwamUpUKuY4/3i/Hfn+5fU2EURkDd6Wy+dHAebpqKO5c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758862794; c=relaxed/simple;
	bh=yC+eDn4OI3airoH7/08j/4BN93Vd4QniqOkNKz1wiE0=;
	h=To:Subject:From:Message-Id:Date; b=UONWMyTXntWZkaqQUSqEiaqAbedD2FwwcaQlRVli04OyKwLAv6nKN2pj6NZP6mPFvHgbMTME8yWDUVTfqz+Zg9zvRG1MQSL9oFvh94ymu5BfzSA0UHO4cS7gZnLUVVDMVjfUXnZCvgiA03j5k3TQoeoBY2OgTP41aVoL7WlDeZA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ogxCds5V; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ogxCds5V"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A34ECC4CEF4
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 04:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758862793;
	bh=yC+eDn4OI3airoH7/08j/4BN93Vd4QniqOkNKz1wiE0=;
	h=To:Subject:From:Date:From;
	b=ogxCds5VI+O4y9JQjKfWcURhkgLt6UNUZyiAAB40ZXVPv0y9TyXHJClk0lQ9cD08b
	 UD/yJJYDUL1O3aX3RQ0/CGxKGh/02nhHiHrlptHotgmr9cx7fa6gX4vRUf6k7NCpMX
	 MYn+3UpDavXXDkbrOgb/XpliS/pori9ZdL7Mol7B/VBBTZfb600+3BD9dFTNkUajYu
	 tMyJdTCw4ZJhZk6yRbizcC+bFEqkZ7k1wQs/kuhXO/CuhLwDXvWwC0TaNpM/GsdBIr
	 QTsCy5xzj1VVD3+w9BZyon8BdGB9bBrR2KSQQBMNdKFbpMOs9+M/0kNgvLuQy0TQgJ
	 1SDz0drL9Zomg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 901CDCAC5AE
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 04:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175886279358.4367.11068547362135231412.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d9e0bfaa21428927fad006aa6b0d34db0ae5840fdc8f5714aa12e284ab488e11
Date: Fri, 26 Sep 2025 04:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758862793
