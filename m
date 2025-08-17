Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 589D27082F
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 17:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755451794; cv=none; b=By+xzCtL/7uVuGAwjk2heuLCEeRAr9JTjzxArEY+Fh23b/92mSPkF5g9WlFuV1HCQZlqszHNFDSHen+oCPoZb1FEy7RSNSXvw4hKg4ND02VW4RQm/xcVCt3Ejxgi1+1xkpIw7d3F+uaZnAMgflJVabQZbL2vfUGZK+dBRa/9KOs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755451794; c=relaxed/simple;
	bh=N0A2fCZyFxMsfVYskwBLZhoJDHbE4FNTubDuSib7WGg=;
	h=To:Subject:From:Message-Id:Date; b=o4w5RGBwRLIyvPO5bR9h8A3w1fGnwoopDGoGfBlWupSUKpvjQpvHlR2/Jkll9zr3q/qNvws+ccs88HpFx9rD+DE1hIc3CxCEpNOQkXgWqMywiAvDnkoWRbcHF6UnLElpRueXL78NYwTPgQaXNkCeSZ+ZHTPxHgCSFHWQk+fN3LA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aaAH9Att; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aaAH9Att"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0A13C4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 17:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755451793;
	bh=N0A2fCZyFxMsfVYskwBLZhoJDHbE4FNTubDuSib7WGg=;
	h=To:Subject:From:Date:From;
	b=aaAH9Att0k2HfnpfqWHE/4MTCmb9sqyeve2N3MhiRymOfv4jJ7mZSy/+DXa3ug/DO
	 3nKkmiPq24vCYOxeRx5NhwFR6tcufVHT9HyMOQI2yiRoQ6CQ3kSLCnfd6wR/82HoEs
	 VcMr+QHMQlk3AQf9/GYSouemTAJRVph0UtzcUO5+hj/DL+hNXx6eoLnB+C5erkmLht
	 zwyQd1ae5sDcwn4FxmgAHfBkjiXN2bN3uB7efKhm/qo7RCcvlxeuWnda6JHMEhFwLF
	 P8fhVfMXk/vH1Hm948mE2wjteJhEu5fYHFQTYWnZlNE0/JLQ7gnWLf1ldemhg4OyCP
	 FUryT1ulxxxLA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F8D1CA0EF4
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 17:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175545179357.13066.12024347732976940578.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 56a853a9290b72b6e6537d583e2d6fff304e2e9aba1105dbc177dc838c23b09d
Date: Sun, 17 Aug 2025 17:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755451793
