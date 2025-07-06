Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AD0A13E02D
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 19:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751830795; cv=none; b=U8uup1E/SzKDrOITEGpxtbEGLPpSueGkERuVmCtEKamsN6l3pKuXsBb/a98oDJto9f3vS2eCjgOib0tuH8F7l/gLwH1PLcSmsqwYtji4XRYA6+7Fy+Y2E7EZhy+dq3PjZU4qRNeu6pfiyGNZJJcytqRe7e6v8EZIvgFL+VkFoMM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751830795; c=relaxed/simple;
	bh=XQ4VbHfUuxuAU2cJ53mMA59wCJnE4hvtxgMhbqoO8F8=;
	h=To:Subject:From:Message-Id:Date; b=HcLgeoNankGBuLNlWP73ijgMnsjOqfxL4HF6qDdUN5Nnuq475212WymjdVJiU3mZnJmgcO70ga5d0xUlZqWBYSzDLgSj9ornGpGp8bAHOt+ss3VIKojc97yHNqcB1OJJIwjCiiLonqPTn9Hr3qh7wPNYxqA3J5o3Azj04PtEHMc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ou5KsKaE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ou5KsKaE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1DA8C4CEED
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 19:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751830793;
	bh=XQ4VbHfUuxuAU2cJ53mMA59wCJnE4hvtxgMhbqoO8F8=;
	h=To:Subject:From:Date:From;
	b=ou5KsKaEWiCf7oi9NJ0NZbNDbokWSf19smUy89ucdae/8aWmub9WyeBYODioK22Kb
	 ZEqyhrnvpnHD8X1WT1kX4MAteaYiH2yzYcL1UcARN9RtauEOqrlPy8aF5xndzX02Ye
	 xcGMOz/wfDhvuYbej+R3MwddTs77mTn+d9q4uuEQBCeG2CT6GEgBqiWqVfWPJqT2Zt
	 0I06HjJp/0+aavx70IMPFtsqRJEZMOQbAw5QGgk7BaGuZiVsNnA5c4Et3Y6bXhompJ
	 PgzhIiQLtbae07qXRQl6EyGN+yoFND4Z4moxyo790xGaZxcwXBfGTtzv+vAvg9fiZF
	 Qchs0J4zychAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F3BCC83F09
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 19:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175183079357.8697.12335339623986799051.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8af801fa68846c8723ae8d15c6c2bd74dc35a4fff4fa9471921bd9bcc6040286
Date: Sun, 06 Jul 2025 19:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751830793
