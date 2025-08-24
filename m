Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 64CAC1FB3
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 03:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756004994; cv=none; b=KWZ90KC1LEoz81MzcmcWwty2EQs3IM8g9484cOffNrpSqcdCO3NG52dyGLVXJg7Rtbud7ANEYct/cLZhB3DkZj8NZau5e/DFWMcWz7OAKs06QjKD+BQPwMnHrrCI1Ec5mvkSmQ9tjbCI+a1YrcduYZRv9bjzNzR6x39u9374GUc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756004994; c=relaxed/simple;
	bh=971d/ZBlTWsTFmR8ErMW0tJvQx6+2FHaBG+7236FUXY=;
	h=To:Subject:From:Message-Id:Date; b=rvv+Bt9rZJWkHqSUK0OzbcIdiFBPsQE0etxpF8/og+8n5PvWXZ9RRobIdf7ODeGoVdtxHyJo8+mr3+Vcn9ru2rxbYU3M274OOZhVGvBRmvpsge+Xtw6j5ClEr2XOI+SRtw9cMyTLmvY9cWLEIAF+8V0DhZy0z0gZWPRv7tpbzq4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c154c28u; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c154c28u"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7A05C113CF
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 03:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756004993;
	bh=971d/ZBlTWsTFmR8ErMW0tJvQx6+2FHaBG+7236FUXY=;
	h=To:Subject:From:Date:From;
	b=c154c28uRIzZwqCcIMSucZYSvTzfSFafioLPhyP8eT1zj2/IPbe9M6/SFPh7MeWr8
	 dywmXsOGin4TNBbhPqkZfbOdWSaWF0Dw8aNgIMFtDJhwojb7ZxdmA/Ctrys6iktSTt
	 GkSDOvjA0TR3nS85OiB7X67A3qwMc5CcI7H9ANs2KqJVU8So6GK1vIc6jgQ/nKnfiu
	 bVNWNo9zLMmoJRP8olXaFXvt/vG5kTEH2VIdfoboN2fKeFu5XKxTm15Lb3hVUrsGH/
	 kSISKDGj1HKCJ46XtKE0tsKnmLl+Jso4/t67SIYaX8L+y/EpGQi3qc1WkwLs1vLZGD
	 xCyrDkX5acMEw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 935F3CA0EE4
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 03:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175600499358.14352.16804961640963140904.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9464aa1de7f0c84f290966b4428b719a6c7186c2894180fc03ab6986190a001f
Date: Sun, 24 Aug 2025 03:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756004993
