Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31A0E148830
	for <ddprobe@lists.linux.dev>; Mon, 28 Apr 2025 21:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745877594; cv=none; b=pAlowy33OoQroTg6BlP2BhZChLLdDzXPzVqy8lTnxHeeOhKeIa5GENUxCvFMtn6Y4rOwZS5N/tc4vc9pQuFDXmXGascihAxNjJbIP/0NDnQZXbjV4nz74cB4NcFQjt8YvqQLCOFrgCdUjk7+7azOygzAxX7NEW8kgqjjl8Ma9C8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745877594; c=relaxed/simple;
	bh=K/rWvWUQofvdqOB0imhL+dHlWNxyDGvlgffHJk0Bdfc=;
	h=To:Subject:From:Message-Id:Date; b=tKi1cAdJnBh5QSlg4bgTgr74EFM1pixdrvCVZFTcw6Ill0is3sOuxTfSuN7H71JafUMD5j+1PpE8xyMAuWK0Dumba6WqrK9iRUnZMcSMP62GDGj6cZru7ZHtVyfSPfh7XqhNUe4tbjpsx9za+fvok8//LjEAPgrsaRorc8L91t0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F0f2iyS4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F0f2iyS4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D8B7C4CEE4
	for <ddprobe@lists.linux.dev>; Mon, 28 Apr 2025 21:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745877593;
	bh=K/rWvWUQofvdqOB0imhL+dHlWNxyDGvlgffHJk0Bdfc=;
	h=To:Subject:From:Date:From;
	b=F0f2iyS4P0uFUyqARB69DbRXazNvE8+QJN+qtPzd7qcESHknLjmECuX+et8EYpInI
	 xstpJbIQ2AhSLcqFFeZ7XJTH8B44gOKVC9ylUovxZr+GzTb9gX6zaHEBlNC5jdvOng
	 ikcK2nuMX98OMHR1uGXJoMwHljTn0LRjr5NVinlJgimBRiK06W35yiTLQjq3p5nKSB
	 I5/953wVkCOpS7T9apYu3RQgxBJlJETnjleuA5PH5E+oFwvrYcCh5+X0UJWofwfGEz
	 2GU9Atk1rOZM+/wS5OtjZUqO5GVzgh2Vf32RnmS9CehLWJc9zMQrlhsYcz1rggL4eP
	 d8+PFgwZ01qhA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E5E2C369D5
	for <ddprobe@lists.linux.dev>; Mon, 28 Apr 2025 21:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174587759357.6450.16682559145427000214.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5a2803c1853dd5453d3186cda9e25cd56c2a7d2db02002999da8bfbaec76c695
Date: Mon, 28 Apr 2025 21:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745877593
