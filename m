Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DFF29463
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 22:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782600514; cv=none; b=qnm3xOdAp9FgbbefdDg9+tNz8DuApFC4tDPKqPkGytdUQDKitA2+oOvhGHx7yX4A+zyoUWza5oKaevE/z3VlJU3IYAufE29drD9rxX2nB9F+BsZSswsSRYlpcL1Z9MnGQxGBZPfY6GtyrSCk1B0x2djDTv/w5/313PRJyhiRKrk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782600514; c=relaxed/simple;
	bh=vyVhIm/5V+6Ic2e/diJ7dygShH0tBMLN3YyNfSnumuw=;
	h=To:Subject:From:Message-Id:Date; b=I4tc7kapJhJr+Agnekb7m6E+drLpTlgjtEZrKV1D2HhS1wjA1YlXYWRK3i0VHc2lEqn5BTsaPpbQjgm47VojibLWzwIDj4EusS2OI3K2V1boBf2/zhahQXBWDFypZBt0L0clUsmPQwQ5IYRaSFpD8Ms5nh0lU+N304ot5vxBCmc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dKNkGnfG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dKNkGnfG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0DC6C2BCB3
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 22:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782600513;
	bh=vyVhIm/5V+6Ic2e/diJ7dygShH0tBMLN3YyNfSnumuw=;
	h=To:Subject:From:Date:From;
	b=dKNkGnfGD3B2QEQHTFJnBAvi/uAPnlSs5CEhieIr23NHl+GxW/z+Z/0jtlmYb88dA
	 GJwA++SNoFo2ROBu/WZP+taKYKqV9J+e4YSE63cf5UpBILvKfhMzJRj04HfuAgXnhI
	 BllNWaY4tH4D6SvT7hU5ZRjcq2miPcHgNzlfdm9JMEVgZ/uxl6wcBygLPmqYhFIllP
	 bCsTUCCdF7S6K51mNeMVl3rfT6IQFFNZHq2CJujJuPIkfpeKou3RLvyYv/sHwfAi0p
	 hwuwAmTbsp/cNj2CWt8k0wrFZIJ8ddaEga+KGoKjo98ML/5eFGk5HYt502Y0tL/McC
	 ykxuN2E3dJCrA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B60C8C43458
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 22:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178260051370.6508.11919861074816810315.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cab6d2d206b63751896a829718a22f8eaef6f4edfbd867bcb6031b3c4c7135d8
Date: Sat, 27 Jun 2026 22:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782600513
