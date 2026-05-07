Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E0A020FA81
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 01:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778116054; cv=none; b=rtO2yC+tyrJv9/8kdNoQ6NPw6E0BSM76w7r2+s0PSBkhv9QCQh61T+S9q54wUQ4NIQ8cW/p5T55ytwbmkW+9juEj3cphoOeEGzIGFW3W7FVJF/C0E10FowclRItFH2ldm+pjpzFfsduRniZwRXI5lsL5IgOCMfyjpqcX20e40h8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778116054; c=relaxed/simple;
	bh=NDDmxZTIMX66vpPvZcO4fJ6byWFhRg3WkyIW0mnoNb0=;
	h=To:Subject:From:Message-Id:Date; b=j1sO2qC0KdByVNRo/90UNlJwCahmzts+OMpY45ad2L49x/G3UGxh0O6OVVdyLpNqSqB57k8uVKLhs/eXtvbtbjdLXcKXS8l2yHzP/xr3+vrvFmMWJ+fqF8NfF/ukKLT5CNC0IwfBAkegpoiB0OZDByi1vy1KjMf9KhSuMNX/9F4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=q1yx6rl3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q1yx6rl3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C87F8C2BCB0
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 01:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778116053;
	bh=NDDmxZTIMX66vpPvZcO4fJ6byWFhRg3WkyIW0mnoNb0=;
	h=To:Subject:From:Date:From;
	b=q1yx6rl3ifRq2L3bKdRYqVgGc1zGJdM/VnXUk/qiBzbUNpG4FxZQeNT0/iLN/NRVx
	 1XhvbL7rn9MZ7xrg4wxdRCCexRyv8VudDcUtz7qL81fcqlekI/GDCpK3m1LsPgBKvC
	 CQd7cE3WEIGb60TxLEEGZB4aRZ/BE/dFeDQtzvgON/hjgPk8cjyaUffQI1XhQEg+WJ
	 Kmwge0WwtK9FIsSjzyn4wdnFbJ4ClT2XLBHzsdxqZfq0RbbHVbgfvWCPvLMoDpiK+p
	 IIyx0kBx4hKImZqCmGXYVxdRVcorJsOzWghW+lawBjDbfo1qSvK346GSV8Ydm9DBlf
	 S8VOb0aZB18Zg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B73AECD3436
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 01:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177811605374.18781.12041039964087687392.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3080bd4e1b3f890d011077b2dba03ff8ea5742f3d9f7a165b3d4551864cd5494
Date: Thu, 07 May 2026 01:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778116053
