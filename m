Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E6D118173B
	for <ddprobe@lists.linux.dev>; Tue,  9 Apr 2024 09:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712653697; cv=none; b=reQDuNOctjn3vTUybiJgqFKCtc7iSeozlJUC8HycM/2e1/tBIhAlcqAdK3Y3ItRmwDDk/QWrQWFzrj17NVk16JImBV1wU7rsasTxwgroDMcbjZlDP4l9OYwjX6nh+ymyvDPhPQZNJH45MD9apVK9MHpBZwPBlaKuW12Cpor8vgE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712653697; c=relaxed/simple;
	bh=EqpffD9/F2uwVlLR+rGP7qSbbQwfMfE3aKObkc0k8i0=;
	h=To:Subject:From:Message-Id:Date; b=nCmvgX3dVSzhDdK9hEUfeTQecSpID4QpJfbsujXlm34n8r1Okfzi32YGQYrUX1ygvjKDWvzC+V26KpaOKrz94DpLMds+fpxP8/ZHapWEdgIClRYdhT1/BbFcA+0iaISNlRI6pva7m2zKsHk33n0+R32+WQE+m31fJIuJnzwjS40=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kjzf/oom; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kjzf/oom"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 80286C433F1
	for <ddprobe@lists.linux.dev>; Tue,  9 Apr 2024 09:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712653696;
	bh=EqpffD9/F2uwVlLR+rGP7qSbbQwfMfE3aKObkc0k8i0=;
	h=To:Subject:From:Date:From;
	b=kjzf/oom2UpsyAUQvbpk2/Oz2tC6ep4Wl86FFKaK/KxhJ92xRtVqLyOA7hLa2Lpbq
	 zZott+ztEdryt3ABuUAb/3sqWP3ImqMIZ1uTT9oyQlQoBDQpo8DH/llZo148ffiUN6
	 KBJ0/wkAujru9ZfcqwGgBRPWtB+c3KRQE8p4QSHCIbp/M8IVFEPb8dJxLD2QMgonWs
	 cQVFl4JHrBUCcGOTPz5zJzkFfs8wPdbsbQdE1zib3Ruu31/XxzUcuBBpBFa/dwl0sv
	 Fb3NPL3gMqrSUCeYbXT0hId0r0afJ1X3DwBCLr82ML+2pOMzGxx0k6ajoi3+HWzXve
	 lsGwVCrap/DPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6B44FC67861
	for <ddprobe@lists.linux.dev>; Tue,  9 Apr 2024 09:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171265369641.6299.12959538711713300742.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ff0d09964d16f865dfc0bd46d92e17f3535f65b5fb466f0584bfeb4b4f7bab21
Date: Tue, 09 Apr 2024 09:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712653696
