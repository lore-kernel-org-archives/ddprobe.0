Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A92F420468
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 19:00:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786647634; cv=none; b=tpgwK0anlcZ46tLJmwzszv07Zd+tsWPKAudZooib3lX2Onp7LSko1tZeMuSxfz9HiTNwNPSEDfrfpQQG/VBQyU9Cp101rpyDhrDFmk1tgoJUb8vtWsAEAwESBYUks7cHr5Gqz4G6DBtUDv3SYegydtPgwDmo/lbFbTqpKSdtMBc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786647634; c=relaxed/simple;
	bh=R2grTbxaYjQf5UBsDs1Btg1CAa3t2vr2/lEfgbpRoPY=;
	h=To:Subject:From:Message-Id:Date; b=VGZykKEvyPBKG+FhCbp3200POpa2K+Z1wGovP0zs1X4hGqdir7apo2gSNitUCk8qOS1hF1trc2NhdXTy+aWoT66ygK5Tdw1gO1QG20Y7rONqFS0bdxYkTx3H7D90C3vcbsmPyoh/edH+00lq7MxkRHj78ru0nQ2BXjuTpDXxjsQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=swrFw5+R; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="swrFw5+R"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CAEA8C2BCC7
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 19:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786647633;
	bh=R2grTbxaYjQf5UBsDs1Btg1CAa3t2vr2/lEfgbpRoPY=;
	h=To:Subject:From:Date:From;
	b=swrFw5+RxvqKJjMA7SNKRLzedJwLX7J8+YPOjn632PN70IIqmH+o71Cph/3Sd6VcQ
	 7cNxevu2clDGpCAgLDO7ZxrvhWfJQxkomfNcZZTBIKjh5rWnNORXrfS/bPHlk4GU5D
	 pEHWRAXO0YKd/P580De6NlwQd7lC/B/zWZC7UPj0Pd0hgGHEJ7LcwKc8gD/eJdN0uJ
	 +yO+uAiAiqsruphZbgLlouJQ8yVKUq1uIdCdxF9gFvlw/ThM1ZuXvq31EfjFu7eozX
	 i6pB1ln7m/qoAIswhBAtnjqKXCG/R289bbxbuFVZPuStYY6zhmIwLgJuJxc4OcSLIS
	 kMk8M29bjMWLw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A830AC5CFDB
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 19:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178664763368.24261.1770812073163024089.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0dd35ff1afd0f9d32f949f4f2e01f52f50a03bc83d1a2d3b35e045a0cf4c3061
Date: Thu, 13 Aug 2026 19:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786647633
