Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BBEE2F3E
	for <ddprobe@lists.linux.dev>; Sun, 25 Aug 2024 11:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724583954; cv=none; b=Y2j+iWim55pJWmpY2nlwSki+8Rjh5XZOdcOYKDBdwmDJw4Yt6A4UDg/7YVKuPkCUlDBKSgxES2M/ZzRyhKUZOF9jTQ5R2bxy6iuqtoEUPUJn6T0Cj/qhPHvlGS0/L/ujVReY1fHslvCnY9dHbjCfL3sZc+15Rqvy9JtZJUB/MsY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724583954; c=relaxed/simple;
	bh=1j1869hPwMwRxncws7y6P61+Jry4x0c+VP3P5ayPjjI=;
	h=To:Subject:From:Message-Id:Date; b=dstizAV0euQE+SmxglVdcO2AsOaizqjHqR4SD7srDagrJVCjOTvu1PlreuLCRnB4JV2X1vf/NnPW0YBgBIzZ0bwg2lSgv3E5vuKhhfXewuH/JpYHjjmy8/ZIMWtlkf74+GR33nnoxPYDkiiyKWcFg0qzB5qpaQLAGSO1K2u4D/M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ifFWQ21r; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ifFWQ21r"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0547C32782
	for <ddprobe@lists.linux.dev>; Sun, 25 Aug 2024 11:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724583953;
	bh=1j1869hPwMwRxncws7y6P61+Jry4x0c+VP3P5ayPjjI=;
	h=To:Subject:From:Date:From;
	b=ifFWQ21rwPyuSul2xVCAYF9S1A8LDAt69wL49WWlnhOxnAqjzaXapsJJNyW8abGac
	 ry1VO1Iq1Cemy9/Pl0A4Xw1KdcAQJxNWtkIuBC7fAYocVC1mxEg4xGi5gEwOzuyU1m
	 g1upXTQpoLpz3hU99vMsFdteK1ej3JSTCPEekpNfAHImGb1bSBqZlqjj1TLzh/krdD
	 Ozjrd5HXC68qeOBAkN1QNqa3A6qoc3ub7FwzKs0jJ/PwA64jXhE3JgvnRrl3sz+uDv
	 7T6b1UNRE7AtKEUmXuzQJ46bg6D68GgXfdyovd4bXGlNFSTh5DzBZPsRwDvGauIys9
	 mbzn6hNV10LGg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97A68C5320E
	for <ddprobe@lists.linux.dev>; Sun, 25 Aug 2024 11:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172458395359.20763.10992525870266456266.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 47c17d0791f1b41bce7bbb67dbf6867fc7a79e299e71fb5d40c33c76073b815f
Date: Sun, 25 Aug 2024 11:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724583953
