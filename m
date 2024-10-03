Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E45417C77
	for <ddprobe@lists.linux.dev>; Thu,  3 Oct 2024 03:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727926554; cv=none; b=Al5sbdEZJRCpOJsEPNtPACD44nvddWsHgf7AE5TxKtzpR55shjSTMCK7HnBePVQos1urKjVsr+W9DAmWHVaZMeSOBjHJdMDAFyUBz+OjqRlfbwWXrxkzaWwsyucp4fuIn1Pommzlk0VWHm/wMQi8LAiXw4QdRBc8PoIpNYSa680=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727926554; c=relaxed/simple;
	bh=ZuNhraAZ6Vz1RBSJuvf6UMlASRjH3QhNiXJ1aLk9cAw=;
	h=To:Subject:From:Message-Id:Date; b=YgnOTycEIE2FuKyruvppsr3jYDEMxq6Y8wrstChK9+TtxZQ7feaCh0LD785TGxeXl/SZNhYdLgRUPhu1kspNhM94viJKCo65gfXRUJNl1piOfAoSrnh+MHEcMBApm6YoPcTpzC3s05aDSldoy+OGHeYcftkLiOx5xLraCui6fFI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PjxMfbBg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PjxMfbBg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1278C4CEC7
	for <ddprobe@lists.linux.dev>; Thu,  3 Oct 2024 03:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727926553;
	bh=ZuNhraAZ6Vz1RBSJuvf6UMlASRjH3QhNiXJ1aLk9cAw=;
	h=To:Subject:From:Date:From;
	b=PjxMfbBgp8sRF32mprtU/MC/3UrCYV4wd7tdvvfAsXaQX4VBbt1QJGCvjJYZZ1kUX
	 YdIQ8tj82vqbrKuWLRy/dqg2M6FDcePZWQCMH7WFiJBelFSXeKmF/3++ZgIZfc1kR1
	 LaMtErfQ7Ga4MktGYfF8MfwvxdyTT9JWP+auLAFALqUtfYhDxt0/jETM/1ixeN/Ho1
	 uDlO88zjO5Zr+OtZG6Dlm1w/+cr0UeXcQ84Ob2GyTDUxtFOcgiMKudiT/2PgqWckaX
	 ujLi87LYj7/Cq72cv1fTrfZ6BQV0CGS5yXAI7af1U0P19Ea7FJtrEerSQwjID5uglQ
	 H9yqRY8pgP3Sw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AB10CF855A
	for <ddprobe@lists.linux.dev>; Thu,  3 Oct 2024 03:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172792655362.10638.5392646383840630775.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a38d0fc37e4a23c6c7afbbc39c4661dba0ea097dcfa9533f30d558bbe0e936b2
Date: Thu, 03 Oct 2024 03:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727926553
