Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4347E211C
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 01:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748740794; cv=none; b=AKBLX8n2KYTt+koFbUO8cFUn77sDKUmOHB4wl5izzHpdEyAax47o/3MNpejSlHbzWBfM3yV0Ewx4Qqpt2M5iNjlu1hwo4232RfuvULW/PYZVm/riVKe0uxA1dMsrBA+GT1yUOkFNspddt2eUFleHXKyeba98KpZ2B3DC4ObW+K4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748740794; c=relaxed/simple;
	bh=IYmcUrKSS2sFruhdmVeZAgcZDrU4vHMyH362ZMxO1nk=;
	h=To:Subject:From:Message-Id:Date; b=l1CRmAR3Kb3khfTT3znS12LQBmi5QRdRVfpRhp/J7JU4V9VINrguKWDprgxCmMGdDRVACbZW9iWS5ChQ4hna3sn4KA8fNpmj3aqylo7A2/ecTETMGvVRBUwcwd3QpxU29U4059Wk9ZhVTRR1/G4h8t3YAor1YrL8HjTyu7NqRR8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lDwKKhqQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lDwKKhqQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9758C4CEE3
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 01:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748740793;
	bh=IYmcUrKSS2sFruhdmVeZAgcZDrU4vHMyH362ZMxO1nk=;
	h=To:Subject:From:Date:From;
	b=lDwKKhqQTWZ2REY6BeAMXq16l69X8K+YAO6+mCjD2rkdrK67gfUmyicfcG44x5LF1
	 soEcAlZrLTloJ+0ylDc9Y/g9KJFMTcl5t8iGGpM8aINxZks1kq/xdpkrur2wQJQYJF
	 U1anH8kJ0geLlM6BDcHgVnISaBZCmQ1wPkxQ0rUBt7du597BL7EOnXfPpysPU5dXuL
	 +VLqsCkwPCtqhmHmzHK73aX76nKh+3vMSTneIlM8mgpwO3D/kpXzvUIXvSx37xhwR/
	 Th50miQYqYB1TcGmkVqUhCh0d2V7IcyH1iLQ4/4IT7HDP+uezOkU3MCuO3PxYksqQD
	 aLEXtsypzEl0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95738C5AE59
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 01:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174874079358.15124.1555129886841365968.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aab3f60026bd30403d32c36a19bc74917ab5759fad9f8bcdc5e3b96c6c5ce2ac
Date: Sun, 01 Jun 2025 01:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748740793
