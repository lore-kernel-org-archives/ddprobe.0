Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E1D136073E
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 18:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776106654; cv=none; b=cg/THf9GPKQhtLrzSjGmse4sbbazvQ5cDEgt1tlOjW9msxb6FQdAIRhJkDX4Go2VBF+OKRDe6UFLBWZBasF4cVfhPbKBNwyKjtyonSqvbyh2y5gyGLtLueluuaYRMqE9SWTD2yf2S267R+2yyfsB+r36sQFj4BqMpj+EH/KzKtQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776106654; c=relaxed/simple;
	bh=ITeFbBE4NfFQe06h/BgdyC5CkB6LoDMv8FCWz3FrDwc=;
	h=To:Subject:From:Message-Id:Date; b=sEueSscOUsslVOidbb/ETpQ2M+jp6O99f8j4VFDxZnz/UXtGatidExJkaRqywFL13xPcGvwXisueBaQafNzIX5RQFgxvwnmVovipMxpjCjwj9RPbRF9hp6maKpMx0U7sNvoGa6MSz5o3z6/XYJHT4LH6T9sVytgGjhl8ZgmwlCw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mJzUCb8A; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mJzUCb8A"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF050C2BCAF
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 18:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776106653;
	bh=ITeFbBE4NfFQe06h/BgdyC5CkB6LoDMv8FCWz3FrDwc=;
	h=To:Subject:From:Date:From;
	b=mJzUCb8AqbLA9vK2acnM9ApivoUohE2JWvwRIIyLB/ghD0QumxTvXc7ov9i3VGbCm
	 OZMeN3onu+3BOKFcIJZQcLGwD7gAeQjtzUWqgNbJQ3CYLKFR2qEmpkSmwO/xu4A5H2
	 skxnIKJQtPoeiS8FyL0/yd4mZFB0gHYhwFZQbuL4/tGkxAvIw9obpg5Ovg6XO4DDLy
	 wIKUFmlW/iur8wZkzUuqmoB2RyOEhOXELNc2X5uTOzHvNa8TysTASiR9FTYxcTHsV2
	 3RkEmEwLOCrg2hFwFAAIP90/dkEhEyifuDPAapid8PeccMvk+ZQfvWBo6C5nfbYDkW
	 UIRPAqZV/i1tA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B041EF531C3
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 18:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177610665368.30323.7364226995130753185.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8587a4b85f0c049beaed887fded97464221a1f8ed52e573b5118c6e977fcf102
Date: Mon, 13 Apr 2026 18:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776106653
