Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6F88B3264C3
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 13:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790862034; cv=none; b=Dq81cN57mlVGZlnJaIp0LQ7cBkSfIfjwdD9PwomdbQJk3fvmwTn/ZAbzMXKrLqaxsYk8GQS89O+yU6u5yIscbvItXsVPfKAXGq9md48S81pejTE1bRDXnBpe0CPajsI+dkdcmDj2OyZxjXaGf0Ls6z9/+2YiPfCy1/jdYC9agww=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790862034; c=relaxed/simple;
	bh=PCLDYsj3pSNYHHrQJnC2tqV1qrQ9rKzB2Li8qhhD9Ec=;
	h=To:Subject:From:Message-Id:Date; b=qqFIi8Fd8kc8+LTx4bsN/YX190fEjvw5vKXdIMTiPZMNWffAknzkeDZIIinHASy6GfHTAokttLprIzdGI4PeWJ3jj7JI9DFQkKKn7cY108RYMUUozKdqydMrvxxJE8+aJWFHDL+OFGX5BuD6wIFZFzSO/0XWTWtrdbP4Qi2TJEk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ra7lUbNN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ra7lUbNN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EBA65C2BCC7
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 13:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790862034;
	bh=PCLDYsj3pSNYHHrQJnC2tqV1qrQ9rKzB2Li8qhhD9Ec=;
	h=To:Subject:From:Date:From;
	b=ra7lUbNNxfeHeOoufTCh2KwgZFiMzlh1PBlbzLdld50v5huVnZdp+f4NxayjISlnj
	 vkzgrdL6dRu4fmSZFasffeIkhMOgrQY0+9QtUUnNjqk2YmbwEp+T0WoqF2Ab1L1tIF
	 2ZOTTRprhn96N2kuCL++O+CW+NdhIM2rY7C1VTro8G6dSoC9uQ/LNKSa3c6Qzsrn7D
	 wLNWuh9O6Hljij4UCLv9Ai2iB7ow3QcWeFs9mqly8bBwEgCgCrBhtFcHmFsmDLbwvC
	 /3FlQwlFW4IeYNgMSK5XxCq4waD+SC9v/E0Uy4esZ4ARjo4465ooJwYcTmQDpzk8f7
	 3AWuumvySccVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD158CA5FCB
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 13:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179086203375.23307.274991580179551003.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 07e1b95c89a06bef132ed26cb571e6dd2f193c845e7be9d1a65aa2e2e9a0eabc
Date: Thu, 01 Oct 2026 13:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790862033
