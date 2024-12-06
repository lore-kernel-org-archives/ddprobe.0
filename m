Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 211E0200139
	for <ddprobe@lists.linux.dev>; Fri,  6 Dec 2024 12:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733486754; cv=none; b=mRXWdhe30m93EhXA/Byx22sSFE2h4/z6ZvT524wrLLh05ZRlD6K2gFJ4ARrR4hUTHA6DqNxe5cD7K8cp/vntrxVxqblr5GFyHvp71EVdRYKroaiTTlc3HcRlENHWt2FdXF6akOq5aaN6URzC4l7sXK1Mia1AePPIX8ksVBogCoU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733486754; c=relaxed/simple;
	bh=iFahXPqHI5mKcoZepkwQUEbJ+VnlxrvwqLZxmj2wgvk=;
	h=To:Subject:From:Message-Id:Date; b=Tz9N/QcnYSka36nJxOLYtZGZ4YlGl3lGvslzx1+Kufs8OFtNIfYjYWaml/KaajPlQ7gmDaGheH41JA2Vn0/R2bEskqnRwkQPFE7rjdjKe3AZ1tA5Tgp3Fm8g/ppMhtsFbJ01bUxas/JJJSumIXTZxXIQRV3OhgnXmJbNP6L/N/8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LeJ648yH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LeJ648yH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A97FEC4CEDF
	for <ddprobe@lists.linux.dev>; Fri,  6 Dec 2024 12:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733486753;
	bh=iFahXPqHI5mKcoZepkwQUEbJ+VnlxrvwqLZxmj2wgvk=;
	h=To:Subject:From:Date:From;
	b=LeJ648yHUzq9AmFOTr7PI5b453tnEQX+xBvbYCsOZcFM1SSw9IW/EmYwpWIK5LPKT
	 vIlM1hy1UvMHj0Lu9KRTPWDVwclUfjizpMnG3MnOr7PCoUyDKlm0+BEtNnVvEZ4CNf
	 Kn41MIbybB6RCy7qtaaAEnqdGgKB2SYpDcGTTuPD9zyE6IKEJYrQ98rxI/uTnlmxzN
	 qJ+0hcK4jc2Q9dboCqJU4arAiOxkQJVH413liCypb3wYxGJ5AX5TRDIoQ4+QCDPM+0
	 taMacUcY+8QB0V7U5qumbqdpM826Vi3kJKkWYxEBYrKgrybcXhAfRtjocCnKW9LTYx
	 aDd6X5EpZ+neA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96468E77173
	for <ddprobe@lists.linux.dev>; Fri,  6 Dec 2024 12:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173348675360.8073.10633187298149454708.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c16b06bb59c33f6b59aee0096119149905aa12214ec0d3d644d2fa0a45952bd8
Date: Fri, 06 Dec 2024 12:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733486753
