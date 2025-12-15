Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 08A893101DD
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 17:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765819974; cv=none; b=pgeoqWkiu35rRRT/GKq7BfkqAthYMtB36uzVrnXIH0VzS1WE/Kd7NDZbTtfysooQBKMHFZMa9MFnVmq78u6972ik1w9A2R87ywcXUgOStofbrAR5TVUo8inqUL2ytVZpw1Wy3XxZ0qVEuhZ+skVsPoZEQ6Ihk0PacEFA4LOcy9w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765819974; c=relaxed/simple;
	bh=a2wFJOA9lbEi5hUtvtEQHeXJIvBHFZuxmE0Nsis1FH8=;
	h=To:Subject:From:Message-Id:Date; b=d4WnLaeAA8s8yrhE2K1VBKYnOQ+wHpl6UYv87sJP/D1kJqNxSJPTIY9j7ZnYMKxTDSMKVMsd2/fXYWEwjZ+RBVVqOBfPJ8E7gsiNwqYEpp1+r8yl/JIn9ntFEh20NmbU4dBF5XwoqOmNqovokId9K+rPGnMv2y4KUrm3w2uCQDw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nW0aias1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nW0aias1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4432C4CEF5
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 17:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765819973;
	bh=a2wFJOA9lbEi5hUtvtEQHeXJIvBHFZuxmE0Nsis1FH8=;
	h=To:Subject:From:Date:From;
	b=nW0aias1pdrpZHjGiEq1Ic2UnMFDgb/Tv0mI7dcqDLMcshBav35ho0f7KNvtVgW30
	 7S5LdqQ9a8/AS2/MKFNBecCj6yKL6Erh4JlzaMjAWrjxwTH5cT2/vS/aLu7PIqWWHG
	 LWZZR9W28/50CQQcIs7eXkFVD85kpU0TuUBSwNG/wCyMay6kbzGtCof/P0w8fYmdSe
	 epva1H33cxhFVXVM4A0xg9njQW20TBe+TK7hOdBamuisJsKf6d8k3rB+xl1fZbJGOQ
	 8xOwQoYtuf43iGxzFzE8gRDePR0KMmJrdlfeC022GkdJsRVz/vCyshzC49r63guuy4
	 K8O9hA1mcQ8AQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91D25D5B170
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 17:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176581997358.29720.12478290217130970143.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: df30c7ff2cdff20bf9a3b32c854bfccd37c082fa0608fff69ded25e1d7dc134c
Date: Mon, 15 Dec 2025 17:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765819973
