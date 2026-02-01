Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 124E9226CF7
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 23:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769987634; cv=none; b=f4QdNWyGuvCOZP+wKtBVy6NCH8LwfCGMQ/zwHpHD8cm78e/cGA3HdyQQ3e5KX9cUpgrQzihx6c+qqawcDfNM7NyTiFPNA8ttypdXjKjQpZW8gDiNvfaGLj9a705ltCAObyT7+WsbTGtC2+35AQdPvK+zn4Hrb28jRUMlRbI3iOE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769987634; c=relaxed/simple;
	bh=GE/J5rmYmYR7dnfGr6SGjIwU/8T+pm5OrJuM+jvs0YM=;
	h=To:Subject:From:Message-Id:Date; b=YwVPIzBCPaIlsk73w+VkJ/O2X4NZ0lwc8U+E84SrYyyGk/d8IU3R+J/idWkSnF2yJm44kmCDSXqNF1QTdowN/uFY/Wt5wLqQAuIPATpu/tjAWy8k+rcHyuYN4+uCWwgy2psg1JBQJJ79lcCKX92emjrUkdSTRTz8xGxG3QKgMPU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jAk6RH8h; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jAk6RH8h"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC283C4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 23:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769987633;
	bh=GE/J5rmYmYR7dnfGr6SGjIwU/8T+pm5OrJuM+jvs0YM=;
	h=To:Subject:From:Date:From;
	b=jAk6RH8hS92Auk0gYtKJeX15K4R68feQOpoc2V+gOgsqTQd/13Az+aqAuflDQN/ts
	 mu4YlDrf175ITkDUgf53oqGWDUV1z8KqTynBpijE/6+AyBj3Jq0fyW14rMn5n6TcrD
	 bU8npFY/fKilgRXysP5+sr6pC/JQHN8C53ymecTFz6MwPSq6r+rg0pnz6QQpj/q3c0
	 qibgBmdNELuQ45zx7Cfp5OeBcgY8YnuAtmRMFgp2OFvr2EasRYqz/4PEHGlHhQJcId
	 18qMoMv3D2RJb+wuFlm6/LaxwZGdV6XN20SyAO763n7O42GyEXOsLab+z7gwO0QtM5
	 g49xgcIg+s5Lw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97A0DE6529E
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 23:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176998763359.8493.2197065645057170612.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 36f3319bec6fd1314e5e3705a831f410bb63ed05bb705ae71f3f6827315b246a
Date: Sun, 01 Feb 2026 23:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769987633
