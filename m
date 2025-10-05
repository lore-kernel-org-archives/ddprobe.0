Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24C0B8462
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 03:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759634394; cv=none; b=QxOuY4qRS+nvA5Ta8Np6PMEyNAXHNWdX7RRqr+Gp+6VVewNooMyiPEM9yglX75O5w2K4y1rUYnTwvRtHUJLrSXRLtIqGC8EpTOrb0frDzGFk2x8OnnrLecjrVMHL0zbkPz1qkCS5yO6ZHO3ulRR1ceDGGzt9d9pGX1YE5bwm9Mg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759634394; c=relaxed/simple;
	bh=0REkaUhZmEwXCfXL/0VdTdhHL8zhm7x4K/5fZO5qQoM=;
	h=To:Subject:From:Message-Id:Date; b=JKmKy2lra250sq22FmpkwXx35ZRtSRkk00LgB6ofVxz8MY6MzAf2WwMc5Id6uW5sgQhR31MDkzievh2BnOyBeHagafo1MV9mq4cp8bxYQs+zKCDvCF7Tf6Wv/OrBYIqwybWmL3JWhcbZspF331Xj8JSqwxtAOr1jmb2eXgtuoAY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i/aM3mU1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i/aM3mU1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A76CFC4CEF1
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 03:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759634393;
	bh=0REkaUhZmEwXCfXL/0VdTdhHL8zhm7x4K/5fZO5qQoM=;
	h=To:Subject:From:Date:From;
	b=i/aM3mU14Y89+4YIoXTHul2zRmXkrXBnX+qHxcj4o2Y0qxkniu3tQBtjUKFWSls8W
	 RRatnr155dCkVqpqDpv8uvdEt+L24QfSJL4jJLkwOg62L38UU/S3SeOfJnzjpA8pkP
	 eXZWn5qd3nZqDDbxRkX5+PqEhGcNsth5mcst+3+7A9RfnW8QxDtLVJdful1cmC5zFW
	 SQMjEwEP1+Lw39ZPn5XS2jLvODPM4YG8Vr8kl2+3RL4y0DYiIrtqdC21YQte5+pBHJ
	 ENB1uqQW3Nfm1E+zqmocpeMfZLKioXXfU346cFdr0Fg0a6et6iqilfCoG1rE2345gQ
	 3dLhWPu2e0cmA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9544BCAC5B0
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 03:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175963439358.19800.5008275381340419061.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fc5cc1b29406f2200ccc9a8166975c9389924c36f9c09d49fd567577906698da
Date: Sun, 05 Oct 2025 03:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759634393
