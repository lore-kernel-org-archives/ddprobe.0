Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F1CE37F303
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 18:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785952834; cv=none; b=EZRk8cCEwrSyNKVVxYZsXM5EPL39kMkt4LocZ0Hpfb9SzvTTG6/TvIUjaFghBqCQLQMQBzYLwck+C7bxTlUjjeLkLtJ5kg4/DDAD7G9a6oShXLKPMnH8gg9/XnGF7ZpOb0q2w1nwhJnYiR3nXaTQ9Wd3hLveBwMzP1J/awOvd+s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785952834; c=relaxed/simple;
	bh=7YheE+8h66rLrTD+R0fmbW4ESN1tzzLp++k7OC9Gr3Y=;
	h=To:Subject:From:Message-Id:Date; b=U0nP6gpxaiwTef8YK+bH0mTANTfKk8smlpXE/W1Q+KsICzqTmAPL2bxdJCU5K6tijyvHXmM/A0Q5o1hoyNslj0oYfIAMUESlTiAQpPSigD6chGJhj7BQOfN/tvXnZES8K28jCwGIgrIhVD97GTCKCTGauoS3UzIBb8sGOq4eC6A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iPxCPyfo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iPxCPyfo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE30CC2BCB8
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 18:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785952833;
	bh=7YheE+8h66rLrTD+R0fmbW4ESN1tzzLp++k7OC9Gr3Y=;
	h=To:Subject:From:Date:From;
	b=iPxCPyfor5PL4qdmxB2VnC5Vqtdt/sOZAdcbxIuwxSWuCJN0axXEqvSBEcY5fcKCY
	 lXcyrPQjc8MNHi6EVLust8FULB0Hp6hPIl0AJjpkPUk31Xdx/PTK1YrPsNR1wg2FnT
	 7odj05rxqYnH/s9T60pq2pfeEtbOhriGgBkcSx6oiQGUNU38i+blNLHCej9mRAYOnO
	 buMMtWmDAn2yvwzNmhAQ39Vi9M1cWVj+CE1CUv41uT8gaJX9j5UizR8Lu61iXtRmDP
	 hSciGbrCAhoa1B1Qio1kLeLIgHaFSdfkJdokUSPYs4u1pNEouxURgO7+5FxQ1+oia+
	 OzZ7WzKc8hqsw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA003C55ABA
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 18:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178595283368.21124.7324410518949895338.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9860ebedc68fd02b030a1e8af3b9efd505284defbcfa9f9052808553ba7374e1
Date: Wed, 05 Aug 2026 18:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785952833
