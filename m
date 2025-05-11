Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E7512563
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 12:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746965394; cv=none; b=MWt+xGcCZTqqivN6b31BRRkZHCAaQYQ2zAshGhFosGLyMnrXWRGy93rAxrHpaz+M0enAvP2AGQ9OZem+6KZGaZYdbGeQPXfKqfFyLqaR99dqp4gOoINSEMw9kYO5k7Vx0qRYvflKgmBiuoO2WltLaVhd58rVelVr+yGe819QurA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746965394; c=relaxed/simple;
	bh=04Gk4D2h/X+dGAtNh2fNvSwDpfDikttJIvL/JeA/uuc=;
	h=To:Subject:From:Message-Id:Date; b=C9qq/7Z3eCMAWYLkGY9uYu4I8Zwwg7bFum2rOhre/bsd1kvjcnaZzmGER2d65YdJUJgPerg7NOdjZFXctQHPI9w0ATWh4quy/+iIcXPQH+vQXu5OQMhC7ZSTUPe6244Hc5EVHnj/1iZIcDevkKUuio5z/QkMYu7ZZPnsGJCiHsw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F4iYKNbx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F4iYKNbx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A45E6C4CEE9
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 12:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746965393;
	bh=04Gk4D2h/X+dGAtNh2fNvSwDpfDikttJIvL/JeA/uuc=;
	h=To:Subject:From:Date:From;
	b=F4iYKNbxQpByS6Xtwwy1JIaGUsqBoC1OgyZE8b24m+P838NQCy0QoxDFwi1f0UPAq
	 ReCCjUTeRNUNCV9mVsjleUhNGj7O3WLzUZ4BtaQ/Fhv07GPGekJcYQAWdACON/1763
	 7bylwbBhgNLo7eEzRmb3y7E4FRmrIy9R7SNMAJj/c8VLB8xWKERUQF4d7vH5mpSnTq
	 z8PhP6WiL6k4ADBEDgQtpax0/ompG/j74/jQhgC3Rk7uct7iDSGNiVuP/n5tjRic/h
	 vN4zYgDStEcZ4Xi+UepuX4ltZ9v6pxH8JncFiXQu7fSkb7XI8maiIHLMuIMcFohQZs
	 98m+E9brMOF3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90D3AC3ABC5
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 12:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174696539358.15878.11075974914440383716.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cc985a450202b1f8e2f782f31d0f7bcee4667e6c7c7bf9a3ed54a47fd6e8921b
Date: Sun, 11 May 2025 12:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746965393
