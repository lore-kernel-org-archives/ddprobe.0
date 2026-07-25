Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51FDA369D66
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 11:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784979634; cv=none; b=STqW7L08svFICF3t6apvtN6Ssztzv9nQGJVpu3HKMXIOyjaU+TlcDFk/KsZBpXvrlZfL7mQQTMANLXErtTVwGqqxWwH8N8AF+WyFWGkqdZAcJPIvgKCpO6QwUqHjLLQmJJeipEgIIthHCmRkHr9wiEBxvk3IFnN6QmVzbCZ1GtY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784979634; c=relaxed/simple;
	bh=jBb3VOGOM1VpWrbp7PRE4FSqR3PbjUZQdYwvsqgGB3A=;
	h=To:Subject:From:Message-Id:Date; b=KZkgNYkLEyETuuUxJ1V0xRO1zIuBKftXNV6vlZMjKirHDAuFnB9GtIJ3Th3d0yMBPTEciuJtXlANAIAnStbwfJkpm/7xtsIbk/Wg9S+YW9cGn70HM5svKyAdrZXDCLqxWKqCNeN3wGBOX55NgRn/WvskYu9eYLxxMy7Do/5Z1SU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V5YW0Drd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V5YW0Drd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCE42C2BCB8
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 11:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784979633;
	bh=jBb3VOGOM1VpWrbp7PRE4FSqR3PbjUZQdYwvsqgGB3A=;
	h=To:Subject:From:Date:From;
	b=V5YW0DrdRWrYXP8/DhF9t4tamZjGY74Zqh8a0vt9s5EhOE4Sbdmn8Gd49PjQDkP4q
	 g9rcIQOGpcnbZ3NVEHVptlZww0s7oduHLZg+etetpZQ+dVdr+/TqJrrGroEeq337YK
	 BNWtgw0McLDVhUnzqDVmBnCZDssll0p+ePpTcC1vQDYvXfoAwUOmczm3VNm1IbctVj
	 oENYzoACNlo9sjul7PZHG5htQ+TO3JupOwHjoOSeRysFSbT4cfcn9iYcC9DnG6JDIF
	 YzBt8BnKK34RIR4UfTOE36H1/GR7ITiT/HeJIL1cVbumlFRHu1oqtQJ9T/6flE7sXh
	 rkE/nJRmNuSJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9020C531F9
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 11:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178497963368.25844.9451588713186875617.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3d226b339cb3b4e1c1e2cc8d8324f2cbb44105d310d9876e5fa009a5b942296a
Date: Sat, 25 Jul 2026 11:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784979633
