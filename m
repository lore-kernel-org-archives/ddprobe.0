Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C5E121804A
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 19:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759519193; cv=none; b=hjmC3Ixn9gZ1WALl6nwo6es6o7LUmDkCOH7KJOEPoAw7DNnJfDn6Ys7YhvhoAJjBpOmVXduFMx52ZK+QRpaHe4yPDZtPd0ZX7ApeglNXtmq1dfSzOnXZ2rvVDnARHSyf4q7+DD/pjCe4haDvUMsv59/Yu0Euy8nnI7jLjMEiNe8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759519193; c=relaxed/simple;
	bh=6kTNECsZgiBO1XIfToV3Cw1EweBAFxiquBHp7rw94+0=;
	h=To:Subject:From:Message-Id:Date; b=Np3wTrBOTMldGlJWakxT2VtSAK6Rrbh0n55Sy/8U4aJJmMKOG/s5Uf9GefCGAKeJAwuM74KwcxTyd8M0JW8NpncA5yGF09PDqI3IeoAeOpBxKELIl+5TWd+01mm8f4Uwm17ExebmQwO/ifVnWfEVp+1Zg+IsEIxEzbjbemjzK0o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ugAhvQQN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ugAhvQQN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3D4AC4CEF5
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 19:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759519193;
	bh=6kTNECsZgiBO1XIfToV3Cw1EweBAFxiquBHp7rw94+0=;
	h=To:Subject:From:Date:From;
	b=ugAhvQQNIqmRtQ3Z9Uc2bPm2ZcQDsdegwat/Wcheu2i+7z8iRuPYpvad4cHocR5oA
	 MFkgtDlQ+kIE1xaGmpfXaD1YsUmfAd1XNmC7p4cy4GbdUdd7HKprYj4DmMY65/Hz5c
	 Wd457QGUhyRxvqpIe/zUlfMyWD3dmOigwNhpwQNgnVmC0QhWEWvqj18kXn19lGBRXQ
	 sfiMWoDqX5WZ6LUkvWXngEVvNwQKKmNlEsESzYAiX6lkmRyvrBLGj5evi5+oxPnu3B
	 VUmGkTZ52b39+tzqObPjdc7mbdZ3AiRsQcTJVIKAZRwf48XgMvU0Q6d6GcS7Y0USl3
	 k/fzArPdIF/iA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96126CCA471
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 19:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175951919360.1696.5042071017036963342.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4b10a2c88b1887be2a50e2bf542d05390967dc9b151a6943bc9cfc31d972b40c
Date: Fri, 03 Oct 2025 19:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759519193
