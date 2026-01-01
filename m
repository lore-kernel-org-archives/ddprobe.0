Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34B753A1E67
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 20:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767300234; cv=none; b=a9NXMKCEYjULRkcShJ6koZbUmxN7c6k79Mtn9u2aDnQH98q301fDMN58zbbN8RcSUkvfAF/NjJ1Jh4Urr+cr/oaha9PCslg8QsnyW98brVqhusmY5U5pgCyXENG2O691KXoTWE5R7h7hnwbzPwC+xafTZD1z8gtQtdW/4ad9/f0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767300234; c=relaxed/simple;
	bh=B+OLZOrtLEUYkPO6lpqdPt5epUq6qnw70IpgKgcZs1s=;
	h=To:Subject:From:Message-Id:Date; b=IrSfFS6Mlo7YY1zVuFllt0rWFCs7iJdBUMZMgPV0c7WzsBjRozC2Ab5pHtxHauDSAquQttp+o3C+N7AjrCnz8bKEQjWoBCTAYuYvHuSq8sClENQP4FVlDqBH/ecSsDZe/hTv6ib2+kTBpZprfkVeykH98lQIQsIUQmKMLix6o8o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LQTGvymP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LQTGvymP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A59B6C4CEF7
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 20:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767300233;
	bh=B+OLZOrtLEUYkPO6lpqdPt5epUq6qnw70IpgKgcZs1s=;
	h=To:Subject:From:Date:From;
	b=LQTGvymPmHksemeLS4JxzBL3c/r5w/nmoOn9vtbkQHJPOLHxbhN6F9bEH8wWYI1cw
	 vG6du6cUssqN5CL6ie44Jfp6QAREVqYtAUOtY3qFgek/G7Xr4nDMb2Og2bKSUT5Xco
	 xOHQbrQlFHLkRl7GV1GYkvOwpnn07Gs4TZ6B37mRxjdhgtwtI8e0Vst5OnBJnLqwlt
	 j55Jl69eaWc/RZZdrepAAt5cpiic3xaknkU3fib6LblqQ6jc6mchvAOrH16JAEkh0w
	 vSldL33i/IfaaNSbXXxWHivpA3LNbgJpQwzG0qm9l4VS7g+fYufBgkuN3WF3cIxJe+
	 EvQWff4+VjROg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 931B1EEE25C
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 20:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176730023358.24731.14470401352561648435.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f5f8bb2bc23c3330266fdffd69d2e40ed99e055d52e693e7b9aba624b107f811
Date: Thu, 01 Jan 2026 20:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767300233
