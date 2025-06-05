Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22E1B17548
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 20:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749154194; cv=none; b=bzEQ/5xXkjTqYE0myixzthi5RFG7nyekLCgQzySWwOTjUP3OYbYEX1wc/L76kZ5YBukOuBITa1eG5O391nuGVnne9+O0bLFxwWoZl4OjiX4aqGYNvz7m3koSP1Q5kr1mCq9kafn76M2OLvjjR0v66jfW2gRXNN6MjXyd9xt2Ew4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749154194; c=relaxed/simple;
	bh=wAlewlZM/LzEoZNLodGdxhtPQGjbwB0h1NUi9ZWXoWI=;
	h=To:Subject:From:Message-Id:Date; b=IfuXFDVtOIM4eCX+elyb7uMYia775YdwhnbW7XAhuj1ovbPFZ56Qd7ucdxg5zMzqvlrPw3dzdaHP8boMzoHonBFCNnWucxwYQue+k1K+e7q0EHCww7aSxRwVBh9RWbcoGRF0+SQnuW3crYDf2dDzOqB/xHqjdgyeGO8cNsdC160=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dQn55I7Q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dQn55I7Q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EEE7C4CEE7
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 20:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749154193;
	bh=wAlewlZM/LzEoZNLodGdxhtPQGjbwB0h1NUi9ZWXoWI=;
	h=To:Subject:From:Date:From;
	b=dQn55I7QkgCUM98jH+8oxWXTHmp8CCZT8aniXakNRRO94Rv0KIWmXxK4i2jyezOLK
	 uGVqDmDve5fxwwhkvpQPyEkeeFXTx6kgCwO/GFX6eD8/cc7QB3g2CpisQ2HVuNPo+K
	 F2ruBkYujQuB6yDX/DfrNifJMuAKT5HXYcl/q5QSveSj0qqgm53yNr+JZGfVkXTwUO
	 CokrH90AxZM1JSzvYy1DQoggOeL5ZEymTMEQBX7TUC+a81Aj+tLfLBRy4piSmRK4hn
	 7q4b6giY3rhEGnhc6ELUU6+1AoNCZTVLjcQT5hPKVc5F/dP1TaEeJw76V0HIdFSXBN
	 +P8pm/lNbLy8g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F04AC5B543
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 20:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174915419357.3384.1023769371710993305.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 92876c23df75ebc6fcafab7ba04fbb918e3d0fae5122e9039503e14d058cf2e8
Date: Thu, 05 Jun 2025 20:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749154193
