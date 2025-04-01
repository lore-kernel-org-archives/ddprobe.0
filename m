Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 354951EA7CC
	for <ddprobe@lists.linux.dev>; Tue,  1 Apr 2025 09:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743499794; cv=none; b=E0XJD9tYibm1ku4r8Q5KC/HJcnSxpv4jkJrpoRtAI4RC0HU1By0cd0eRmuyL8UMug8U32mt6aNUNQJSmFgSycvJ4PS9vmuBEB6cg4cIS/vKaJDny8H446vWXkcbfAW0TIsbVvOQZ5h6cSveYpijCRnR1FaWRnC2ops+/Vi1GjP0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743499794; c=relaxed/simple;
	bh=cHB/P6mN0TVxwlpL65+qTfI47uBJ5Ux988e0OK4zzzk=;
	h=To:Subject:From:Message-Id:Date; b=Ex6j+Wx8bWqfyKo7OfqkO9sP+qYCBTmIcNOkeyvdYztm7JSVqjh5EkOpy098MOBIPsLXfkwpPx1xjgH3m+kroOsIchP+G/0XyzJEzhdSzyfZR8k0x4BZngNNQ3EVcclfv8L7rR3bnaQLTJcS0SbJtXZUwFAcWpRVLM72Ts2qrB8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rTbj82ks; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rTbj82ks"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2BF3C4CEE4
	for <ddprobe@lists.linux.dev>; Tue,  1 Apr 2025 09:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743499793;
	bh=cHB/P6mN0TVxwlpL65+qTfI47uBJ5Ux988e0OK4zzzk=;
	h=To:Subject:From:Date:From;
	b=rTbj82ksOS76h0ratzxQBtjYT+U+XTnC5f5nNer12SWY7uXwrYdsOwtSSM+fzTvsS
	 oM8j5RkHsHU1DSEhqKic30QuCBS+D/UE4ZyO26UxTGiibfY+LNL6JtO+M2YMfEMc3Z
	 lHnISluxSv5jr+Ao/YewRumYPrRi9MDBpCKB+W18pcMmUgNB1wqc4IGT1DGlpkmnvs
	 Q8oiIGuEuPY+BKYfBe5TgBfXK4b+Zmg+LVHrxUwY/V7VdYVQwAj5FCbei5C5vqgxyR
	 i+OKyd8WRswmW5Vj3fe9S4ioKrPxeQgrMo334Yogb+V1PZMaDAuv/f3d2rD/0HilvS
	 tc2KakqZpJJmQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E9E7C36014
	for <ddprobe@lists.linux.dev>; Tue,  1 Apr 2025 09:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174349979363.28748.2994032130633477676.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1fbd45b272630ecbccc62bd37d9f911b2c5bd26b1ea3cd1658ae74fcdbf86c6c
Date: Tue, 01 Apr 2025 09:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743499793
