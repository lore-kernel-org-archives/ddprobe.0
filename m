Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3201D3A3810
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 15:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773157494; cv=none; b=F6MxHXV+fYSdhgeNtvvS4ncL4PUV4DOnrAlZD3/2IKBP9P0vFxnwmh5rbYJQl7C478436nfRpvIc6bdNg8WfzDX58iaG4zqSyRvzHuDJx0cm06wObuzgSiEasddPKkx2rXDcGmqp1SMUMHJLlqlYnFpbV0QqOioyMXmE4irmYus=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773157494; c=relaxed/simple;
	bh=AOIigTez+lNuGjYffKKu0PDY89D8gfAKCGDh9l6EQQI=;
	h=To:Subject:From:Message-Id:Date; b=dZ8Xe3FL0ac5qEKGZwzIHVII76+nokKlcauY8XDRPgvsLWW+9Uxx2jsTARo+6v1WhTw0JT7Ib2LuDOjAviPjtoV/7JVAHdiojgnjYTuc3wxCX125RGrk8EjNiDSQJEizNQJ0Y6IKbrAQtn0PbfiiPF0wDD1rMGr8tnJkJe6lkxM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JA5UFLQR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JA5UFLQR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B140CC2BCF4
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 15:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773157493;
	bh=AOIigTez+lNuGjYffKKu0PDY89D8gfAKCGDh9l6EQQI=;
	h=To:Subject:From:Date:From;
	b=JA5UFLQRHa7SRgJF3POe0BjIW/8c2z7RoZOplwAgYK/yzPDAhZu9WJUdbBFt7N3OY
	 o2lpHtaVFpMp2mO/CDF8xe95LmipKksqinV2Tq+80XkRXxOqm3Eu5mQ366hxEb6ZQ1
	 EWD5A2XMYZT7SzfZcPpssVSK+vscpDVZ3MApruVyEblkeVdH7tcBmihYCcv286Tvm+
	 hIRCOodKFjPiWBTkLgxLOoECIvAQ6dWPzIZL95Ue8ckn5fjcYGx6iGj62BWOEJy1FK
	 0SLix0+3Vr7wKYptdvDmeJIkra0uiVoftHKkLsfLq7gri9FgiBB172uPkFDRQ7vJgz
	 6l9YYpwlQI1qA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92A40EB1060
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 15:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177315749358.15675.9870144777510308489.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 37daa277a705c301d94f399727752be6ef961665d2e0be7bce380aa063e71686
Date: Tue, 10 Mar 2026 15:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773157493
