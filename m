Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E81C2E8DEB
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 16:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792253434; cv=none; b=SRpsPrD+OdJuTj8TemrzsIpXYMgNYOpAQD2V+baA/xel9tg3TFueO8lZB09YAxXbZw4xBD2one2Vctq1zz0IHMaua+FVrdxmAHy3aFCZxnnCUKPNZQ3FyB0Gr7dHgrih9bPULaBwShQEAIltyCNPQNrNBwPGYOX3fAIDVQy04zY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792253434; c=relaxed/simple;
	bh=weK87W8QdofP4XbhVAbK4XAJ5NRrLFknY8lOitLxlWs=;
	h=To:Subject:From:Message-Id:Date; b=TZP/YnsZvbRzAEukW51uGZAIsprcFSicgAAXS7fYyDZ1YXE9THVTvqkY7N9JyvObp2uWvlsaM0+SrZcBwdKyln2AqQXf88BR1ncrgVp9C7BIkdc6ZOKXKNycwzmwAtMjFFpMedqy8ZYA4bSdiY8IynMUzAFVR5Thsuh8U0BPDdI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i1eCjO/t; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i1eCjO/t"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D28CCC2BCFA
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 16:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792253433;
	bh=weK87W8QdofP4XbhVAbK4XAJ5NRrLFknY8lOitLxlWs=;
	h=To:Subject:From:Date:From;
	b=i1eCjO/tI0Z6Y1HGx7X8OLwuIkLO/WRRwfETAKfGu6puGVzmjrEr+Uq36/B07rfAt
	 Yxv/iFa8c/ZvGhtHViNOVhFguulLFKkB0C5FPdnnlFfy9IZZXb+iRYOWklF9DF0f2b
	 aaP+FMZbBqaiuwkwY1XZiKKFkoU5e9ZMpL3+4QqVpk7OiRZ5vQng/PkTsh6YADgmoI
	 iPFcsNPavmCkfm//MFPeYTsrShvlRBIMyN9mPb5WWP3EA//XVzEtYk/aQNmBQsdiIm
	 z3Yovs2bYh9PrVPu2YtNLmiaaFrAP2jSrgmpGIjncGvFKkYa71zWWFnOeTx4Uq8ZiS
	 wLCuTY5LcbwGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0067CCF2C4
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 16:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179225343371.1150.10384430964330845237.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1a48136069a99731d1f6caf1197271bbb2bfb2ff6f505d3925492145ceeaecc3
Date: Sat, 17 Oct 2026 16:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792253433
