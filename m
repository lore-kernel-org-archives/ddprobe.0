Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 93054271443
	for <ddprobe@lists.linux.dev>; Sun, 21 Jun 2026 17:16:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782062194; cv=none; b=tUdZZWSm1U2L0JdSvfEl33gp74dLeVZ3nb6zjmtu9f+2C99Wv+PNvuj8si2iqGHtZguepKNNZTFY1wuiy63ITULNoxaSQjhwn9mj+EWJEa45//dfOguJ3+nJynkY3SX6/unuhF+RQP6vHhfroZtFD/a/s+1e7bk53mQim4pMWsE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782062194; c=relaxed/simple;
	bh=sbEAoGyyta8TbcJU9qSb7D+Z19Dv9jekQ7XldCA7E6k=;
	h=To:Subject:From:Message-Id:Date; b=W0jMnnPQd1khMy2RCAOds/MLB1TB7+REMEl0kizuiG2Ns56Q6dpM7bhqdikj5/5fJxTYpunJaX7Nb21T5D8qmJonDvSZdYAbaYVFp8p9vJ4LqvHM8GuZeq7FtgifInF+CK2cjZp2TH0QE/sSyEzUg50ejIceVaI83V7/N5x7/1M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Cvc8Imwu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Cvc8Imwu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFB22C2BCB7
	for <ddprobe@lists.linux.dev>; Sun, 21 Jun 2026 17:16:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782062193;
	bh=sbEAoGyyta8TbcJU9qSb7D+Z19Dv9jekQ7XldCA7E6k=;
	h=To:Subject:From:Date:From;
	b=Cvc8ImwuBVbb4L1X1D5Ev+AnP0Du4XdXvw5C9Zku4giWz1osixTUWWCfPhDBlKvU/
	 SUQe0WxFowwVn0u1W4mowwKCnnqCyCihxq+5PblCmzouc0Gg4Pp5Sp7JJatQvASnvZ
	 6bCFvh3gfH8wreOoMqqJNn/c+DAssnyZ9hJ4haz/FNK4jMcgEiE5V7yKbYV6quR65A
	 2J2B9y9L5Pk05DaWDPBDK+5AXwgtlTpzlX3350hGu6KM4Fsr39WGuC1SLfk8K0Uerh
	 ccEANVWRrRrvHG1Yhyv/h2b+BlZfNPTpVqaAzlaShmNt83JcfF82oafFAiQ9oZ4Oiy
	 MoWg0v2tkoejA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2FD3CD98F2
	for <ddprobe@lists.linux.dev>; Sun, 21 Jun 2026 17:16:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178206219369.19408.9048084275573503364.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8a7ca550e799627d04db97fa614a7c18cd3f3e8c0dc6c89742534d8a4eb7be42
Date: Sun, 21 Jun 2026 17:16:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782062193
