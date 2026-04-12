Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DAE8AD4B
	for <ddprobe@lists.linux.dev>; Sun, 12 Apr 2026 21:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776029854; cv=none; b=G/g5ED3u7We4qWuNfC4n+EQWw0KTqnzZ8xIlfFHbtKD6pr+nJx20iCKdefyMOA9pxy2xTLRwyQZXR32KyKVDgr2D38WiUpJ2l5PvBFZ6+IB7t+V1W6IRqC+gzcUOcZpXZzN9e2ChxhOwkZOYYKzU+cEZ4L0SKG83WE3ejvabFWk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776029854; c=relaxed/simple;
	bh=iurwjfcasAANEMXQwDyeuqRH5d/X429SyoujT/d4X8w=;
	h=To:Subject:From:Message-Id:Date; b=Td9KEQSpw5zAv90rWREGXO0somb29LXpzPxX96D26Eb4P3BKbQS4a6jBal6LpANOmM00ltFtuJ/Ak7DkuW54KBOASyE93Xm+b98fij+o2lPSo+8mJUY0T1dabFRPKMCLLWPvMwI5qB7u2e0/Zz/opJiFv/ZgMJ5yzP3/2zcTbEc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V5QAn0xG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V5QAn0xG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC77CC2BCB1
	for <ddprobe@lists.linux.dev>; Sun, 12 Apr 2026 21:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776029853;
	bh=iurwjfcasAANEMXQwDyeuqRH5d/X429SyoujT/d4X8w=;
	h=To:Subject:From:Date:From;
	b=V5QAn0xGlsr8JDXb+uquWeIDvzt99AqcO1b6U8Ir9g11PssOsehmf4k+JXR998Rm2
	 wFLrd2yoN9Fy3wjRoZFl3k1Lz5kRmCz+5FaR9bLvfmwAgypgTmKzisR/aFe3rw1Toi
	 HfqiSvKCaGjdYQTOszRKo8RJN+21gMntAhP9Htfoh+GQLRcQeY7DDlqCE+gQU//Alq
	 WaV95ciKuorlc74EngnxnJ86F5PurjJtISvgsrN9WZrF6Ote+3n0K5xyFaIvIv/qBm
	 Bbu9RTtxr+JafUOJDzJM4khcStb7CUEVPrGAbBsjlLQUBbNWUA54Velgse+/BxyBZk
	 zn23Rsv5rLmbQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABCDEE93804
	for <ddprobe@lists.linux.dev>; Sun, 12 Apr 2026 21:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177602985369.7013.2292199290994558722.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6bf981835c4e09fc68f0e65f603cb8d6e639c114a4ce3fc1dd02da2fc7424e22
Date: Sun, 12 Apr 2026 21:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776029853
