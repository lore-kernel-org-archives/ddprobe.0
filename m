Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 305F237B3E4
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 15:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787238034; cv=none; b=PCBZKB32xls/Y+8ZOAU+t6mI+1Lu9h1H4fGfaMg0Nt0rWB3hGaS68mM/UaokMbABlU3PzXqxqK+dCSMR1QNJG1+j50qkfXZiwFF46ZdtfUFcsQTrVTAMB66QiJl34/Ox2AaT2tvqfT1oUzQZHmSE9MEMC92qqB2Gbu4jS+vrOCg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787238034; c=relaxed/simple;
	bh=TPcQCNVVtYXQGLLbL/p9g5cy0EeoELUQNtr0DVTwyUU=;
	h=To:Subject:From:Message-Id:Date; b=RgShozwGG0dMIED94Q98XZ8t0YarL0pSTnQFEldfJCYYefdIolepwKygkfdTqr0GHP0Bqm9HhMa6zAU27eoMiDTNZe8tdy24L2FHRGRtCEIclVwkLyxIx+4brkCwiXrgb6dwxbqv/QvJfK6MJG6C/4DUp9LAkEb3+cLYTv849nU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=twrZ3Ide; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="twrZ3Ide"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5153C2BCF6
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 15:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787238033;
	bh=TPcQCNVVtYXQGLLbL/p9g5cy0EeoELUQNtr0DVTwyUU=;
	h=To:Subject:From:Date:From;
	b=twrZ3IdeV+fwRqtflmVVNBkvb+wWSiZUGY6wYka1X3RvTgHTeT9d72XNV+BId6yop
	 61E79JBeYmvaKwKqJC0Ii4hkK6Jt2orFqdgGo2j7nmIv8rRI3K7xFi61EL1wCBVvM7
	 pbu4Bt4NU9OseIlwH05Il2iBBSKcesdPkZZ3fdxuJ9a1jDL26dUH8PnrsSNlGtVmq+
	 eQAj5To/msF2aTdnwigpOP5QKbVcb5Hr7y4UAzZJd6lsYlMODQBWmkx4svwMc1MdDm
	 IwS0NqI8Zi+Z0fWwMMZBM7d69CkR+c+2lIbiJU9DHMtP2ch1Y7njd+o+0xqHG7EHvs
	 WKrycQGbwpvxg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFC98C5DF85
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 15:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178723803370.32406.1703651659977417222.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ec4b86d6d699651137052f3f44011e567e6d4f590e567391d9a5925c4bfa9f1d
Date: Thu, 20 Aug 2026 15:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787238033
