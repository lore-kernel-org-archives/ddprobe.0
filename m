Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31520125DF
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 01:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749175194; cv=none; b=Xx8rpUi7BdcUhWlqxrSTs9X/tCJrbjIvJsB0Q3apnRpLOWZV5L7fluno73doDGYx1wvnvlHTZFuf3j6CW33h3xKe+hzVNu8CbdfWQXnu66tO96xwvc45ZHSq6MlHiUFqBLCho9D1Z3kX9FoCXx5J4czMi8uvs0PccLJ+xNuerf0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749175194; c=relaxed/simple;
	bh=4YKLjPz9g7uFHFL3uDy7DNoSCEHibedZ7hKBxgQ9ALE=;
	h=To:Subject:From:Message-Id:Date; b=ob71QkNdTqyHeGR/2wWiL9LT9trXjGO5V28S/8VD20W65jrj/aFgW6PSNE0iKwlfB56cij8kyzk+zc2REJsbIIjcaK6TnLPp7bSy/ROy32NzhZrpLIEXcDbcx+iRgFbUAjXDI6IcZ4RHXJnuzUxip1dIctXBUhC+PqfOJfeanlA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XMMedW/p; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XMMedW/p"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0B3CC4CEE7
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 01:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749175193;
	bh=4YKLjPz9g7uFHFL3uDy7DNoSCEHibedZ7hKBxgQ9ALE=;
	h=To:Subject:From:Date:From;
	b=XMMedW/pkmrpi4+4twnVI+cH1BOnP2h3MpOwYGaiUUEN535HU+ZVWgzCKh1wvN21m
	 Rcys1DuPLB0MLNxujIvO6pmmb+3bCbSd7nlrNOuxpjHAf0S6z/kK8E7c3nPBsm2fxN
	 NCvWKt+0ammyA18hWsrowLnpIOnY3Rny8FeKwIjUeeQA3q1wEtLuuociTkwMrYaQLK
	 /IeFhQfUFpopD+VUizf7GDE0OEA/QKKZNuavz1XI4LLKK/iheOErrOPwnnZzvYf58/
	 UkcwBZbvmAuJNQdpKjJoiWk3sVsdJyC93LI8IdkPtq+icwiKjtD0vMX+jryjeYR/b6
	 o5af/diGsSQ4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90D6AC5B543
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 01:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174917519358.5912.27252581444419786.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3284f29b85df8a6030c1a4abde7f84347f4644e4c5423144e8e7af8fea0dddf5
Date: Fri, 06 Jun 2025 01:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749175193
