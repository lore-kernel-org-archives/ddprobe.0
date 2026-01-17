Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16514242D67
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 18:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768676034; cv=none; b=c19/KjHSRED6N8aEDUQOKmDgylHy9UpEVNmDyOY41+Me5dBmrvrrdfsz498DnFk0QrnYoJljhKCY2rnVsX1tJ4SSNg0PPlPxLQIz9EYD2WVIpaeHslWAYx5hbsFGMD4R9m03cnD4/KF5yoyI5oKvvTgZZkyuqbwNLJF+EPsRffg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768676034; c=relaxed/simple;
	bh=XhrCDMfUPtEExJLH7NvH5Dhlar5YDBVGqb+wbIUPYQs=;
	h=To:Subject:From:Message-Id:Date; b=cluKyQQZU0grsyocjxtp4UmfG515h/dQgH+IY+80uFN5lxl64E+ozTzS9nCCRIakJTxwhUFgi+0Ayn0EI1fSZtceP3JUnKuyvr9LiRJ64Hy1Jl5crWKinZN0R8KTuG6lCliA/Y17rN3k5xtYSXfn4q+p7W2uZ827DUH/Xft/om4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IJrHdoz4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IJrHdoz4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A72ECC4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 18:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768676033;
	bh=XhrCDMfUPtEExJLH7NvH5Dhlar5YDBVGqb+wbIUPYQs=;
	h=To:Subject:From:Date:From;
	b=IJrHdoz4T+qCALKXPfsozCdyyRQVb67Eh1Z3rcri6kfyuLd9UI4+WO/6JA8FfAz2Y
	 W7ZW6lsdkwvKbZ0s9OpUBlxRTL/BrckAhj9TWqtKsHxW5FGdG/Jx3/afxS5ozj1Qm+
	 hMKzbHYYyoziQ5/Se4HLK/ENGtsT6d8DBbtPGAKQFQed5O9hKULA+SbKTiPXPG68Pt
	 wqOVyHoov2i2OdjSuF90Raeaavyc6TuXdHdHu22UaxHWTSBqVf92DoDXjj64W3Vvnb
	 zRl6jfEze+9AA9ON/nd3y75xogXSDJ2lSty/yeYuwC52zBCMs6yAhqR14b02tInYCl
	 R9nOcpyA4TIEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 927AEC98330
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 18:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176867603357.11863.4831331888742202243.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 86833ffee5c0f826df7b031d379e6819d0db2539735688e2e0a4d5fd30006d5b
Date: Sat, 17 Jan 2026 18:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768676033
