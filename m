Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FAF517BB28
	for <ddprobe@lists.linux.dev>; Wed,  9 Oct 2024 19:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728501954; cv=none; b=KKlQunSWLPxuuXJMD4XrzjYKxumtqkktFuSXFst95Mgedj4F7Cf8IJd1g9le9kUlKEkL7KJHeclovutWOov3XM20+gN0iKPwD0aJKQZMcdmZMGvHMdsM39gt/YQZhxGEq/Er0kAvRaCgiMQAX56DseodBOJDzcmzq8r5DHK/PTU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728501954; c=relaxed/simple;
	bh=cp0sLNDh1K3F3ctaaQz/jx+quWoyKn6adblIGb6z0VQ=;
	h=To:Subject:From:Message-Id:Date; b=JaUdomzyROboPSayBMA+RbeH24yLqKlA2MynRAfXQsUvXzStRA5guJeKiX8Wk7WtgIpVnSIyQeJ/12u2S7wQ0hxSQ6E6hbLU/Sy2EXWj7xmoiU624HnVX73CE2X4q5HE70bW2IcJy6krohVhHR73rAldDDrJsEVf6I8pRqCJKR4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jWEMgkfV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jWEMgkfV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD032C4CEC3
	for <ddprobe@lists.linux.dev>; Wed,  9 Oct 2024 19:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728501953;
	bh=cp0sLNDh1K3F3ctaaQz/jx+quWoyKn6adblIGb6z0VQ=;
	h=To:Subject:From:Date:From;
	b=jWEMgkfVOOXESoFxveK0SsxNdVDHhL2oZXpj976yykgwNSNSOxUs+p4hhRBk4eCsU
	 FPOi8GO7MoZDFbtTNrnJA9uu+68BZffEPQ98KvnsWKTpd8zbL91UYPmuclwz+v2o+v
	 Aq7pZuHbBtIr5UhyoQMfbmNmG/i+1ZTeMpl0eLMHnySjQDV9dFE7qvgtXdkISD0q5m
	 nY9hIriLyYRaHoRy9B4EbhrZ41OOayOHidwRc9CLSPsvPEX8QBIRSbjZPeiN7n0hfD
	 rHx+I5sbbZ58ya6Z9ukV6NXPqiVLYQGvUznr101L1SOXl+u3a7sxcqLmfaGJI65tXD
	 1+IekrK4ILGQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93968CEE343
	for <ddprobe@lists.linux.dev>; Wed,  9 Oct 2024 19:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172850195359.11170.12476429151771516962.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 71f1f28275be7ad302ab8107479de85385582638b4fef97aed7c64ab01595373
Date: Wed, 09 Oct 2024 19:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728501953
