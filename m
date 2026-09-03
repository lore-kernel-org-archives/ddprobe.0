Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 300C64FB9D7
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 17:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788457834; cv=none; b=YCLSKt6hMorP/Tim/ab3k7DjTXc8b02+56S6vvEQ4RzBykzvlmsm1HvBbno95dPQtXOy08syEJXWotVlWbfFhDVAiwfzIeeYBHO59cAcAaKGWO555IftZPcUGu3GDskvRr5r1YvCwQjdORnoPdQBhFvHp2x3W0UYly+LvGcmRnU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788457834; c=relaxed/simple;
	bh=5hNtYXeiglAi73fIV8vSY96vuwPBo/4J5Bg7u6XtIhk=;
	h=To:Subject:From:Message-Id:Date; b=geO7HolN8AnwwGYCS+Njr2/kmkiVFpNSwZME3XiCmCFxyc1Odmp/k+Gkt9icBj0bfIVzGheiqUapgf7xmtZ79+L6PTcw4q0y3XgW4Ykl8JVkYmKbqpMV46o8FEGbSWOzJ7GajZwts+hqZDUi6TRV3pgDfnIuqecGrdVxS4ds3BM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uSsptaz3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uSsptaz3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA08DC2BCFA
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 17:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788457833;
	bh=5hNtYXeiglAi73fIV8vSY96vuwPBo/4J5Bg7u6XtIhk=;
	h=To:Subject:From:Date:From;
	b=uSsptaz3rHFG1CFV5tAimAhMFSpy7c6EqJmjvB56yjkJ5UMloyBxVpfK4vRWjyoF5
	 zw0IwXxk7ykgWFrxCmSXu+rNpe7O7cT1Ptossi7ZY693/WFjN1TuaS7keT18dnM1L3
	 pFkY/mN28xLC2/gBLeUanzTpPTNxrk8LKJVmSur3f+AnCOGzH9bkAekOA02fync2HU
	 5k19W8g8s9Od3x5paKtDpPkE07ocJ5zRzlzWnll1yxl9szej1dOBMWp1ifru4AB9dL
	 nLZMbPF3gDVJ2bZKdHq5Ze20fE/ZAU/qysRmdYeYKMX594elaxs8idbHvPHl+eHMOt
	 Jd6Co763t+Ovw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3640C624A4
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 17:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178845783371.29810.3378177678578395652.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a384fb049023c76dcda6ff3d44899e2bbc284a6ff271baf5ad86493a75c72bcc
Date: Thu, 03 Sep 2026 17:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788457833
