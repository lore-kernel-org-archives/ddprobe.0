Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DD7BF197A68
	for <ddprobe@lists.linux.dev>; Mon, 24 Mar 2025 11:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742816393; cv=none; b=EdVXmP8mxvN+e1yAJG55eozlflirNL5hqEwo9u/VelgH0Nm/ZX3qBBpI1uOo4CkB4w4FC4CgT8virpwBjiXrZm7tkyrRfxHuVsFDKQxUduZiquyCzaDskWCm5Pgke+ENqTXQrSqyWeala/vpoFL5WOxMo/SJ43Av3FTZ5RWpOns=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742816393; c=relaxed/simple;
	bh=yYokT2dzickqsPjLFHRKcDI3djj33JBEOLPS6L0zFfU=;
	h=To:Subject:From:Message-Id:Date; b=G0VNpCjwEh9IzlisS+kplg5tSgHwGbK4+5Qz0RIwyobUOXgzlDhhnXpLKyhkPihpopwXp7COTez39grBtJrg3dUIrpiV3bx2fqYL9iZTRiCTKE7TS0sV0/AS7O2SKhcHVzZ8hvRdSWrUv+vqyQoT3W7PVuLDcQiwikh1bhuMi0k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ri5JVpV0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ri5JVpV0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2CC5C4CEDD
	for <ddprobe@lists.linux.dev>; Mon, 24 Mar 2025 11:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742816393;
	bh=yYokT2dzickqsPjLFHRKcDI3djj33JBEOLPS6L0zFfU=;
	h=To:Subject:From:Date:From;
	b=Ri5JVpV0BlFTMUQ8uGxsrgKC5bovh6qxN3zEcFsE9yQntSUsasnsYehLu7i6Nq8lq
	 2HDn/+6QATqzVS77eRrei7KvmgVxxps8Mz3Y9zPc5Wqku5iiYQFmw66tlWdBa+WFhB
	 a+wnVjwh1/KLbXAtYWqgn0rWK/AQqjZLM6lRVpesROqPARKFw4vaoitRBg0F5qgBZ+
	 evU2hvubvbOrHFN4ckVa/+TnkARMwfVBcFL/HxaFUzY5pW2uJ/fUBhk0ZhtTdZLFmT
	 55nYUFfHvCqQda1PoSzMJKWCHTwulTgS8+Z7SJwD/hmxLjimMNJMguokmPVEW49qph
	 3YkD6T3ZChAnQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D326C36002
	for <ddprobe@lists.linux.dev>; Mon, 24 Mar 2025 11:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174281639358.22063.2821097677575389174.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eb64ee192c4453ddbade5f14d426d9d9a68f856c8f3ddfaff3cbe051eda913d7
Date: Mon, 24 Mar 2025 11:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742816393
