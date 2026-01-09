Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B8952EC080
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 22:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767999234; cv=none; b=irXZLE39b088vNtPD1MYvB8mXo0IfBuNMvVePN+gCAtOnVqug1kv+tfs3U0PtNLReH/JXUoVPNd+GOfIeNaprsKJK+r/yxFcSeWAXIf/U7RWyRz84+5E4FNf4A3uiWaZgWaJYpIm+m6Y6RbS1BFk7EVvYCJFjrSWOrJ2oM9oR9I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767999234; c=relaxed/simple;
	bh=N0oreuLgWuit8hNTsDxNwiDLDbqw6Tnuy7J4WNUhbHg=;
	h=To:Subject:From:Message-Id:Date; b=IiuwSGqguigZ31HSga7S1EIiXD62HzwZGjp7iyIcvdTCW9YL67q3gskdELbP5vyoEx/d8en06j0UozoFR/FkYBjmkFga8JAT7ymwnVHYcmXH2w8qkQ9Devij4K/00yRgFO+b3pUOW0bXIxckQyevYW1COm8s2VICGrBJmobHQ2c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L+ypXQXm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L+ypXQXm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FDA5C4CEF1
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 22:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767999233;
	bh=N0oreuLgWuit8hNTsDxNwiDLDbqw6Tnuy7J4WNUhbHg=;
	h=To:Subject:From:Date:From;
	b=L+ypXQXmXrEzouBvrvP4Cx2dIIUUpFDnJtvYwqxSDvp2QLyopjWBjq9r/cBff6yNp
	 PoKJ7bM+60glowPWmrIiFIc2l3GDi65rs7NaSlfWoJsBmMGbS+KHLS8MBSz80U6qwc
	 IMFEGrRdP1umqBKFxiZoz1jqko+BNeuMLTKD0YAdNCd0kju3kt3AOsY45sr29trYWw
	 G/yUSXj5CXOATfIvIbhicljzgNgzdMKQ/IRZexIvZC8iMDW8nvukbKzwzlFVelXi1C
	 gNHGCWCUb6EVd3lWCWKUUbJ35L2Ek2ZnXBhE4/vKJP70pY8vh8z65Z4NPcJmY0O3xW
	 L6wVfX+YZM6pQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92002D277C4
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 22:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176799923357.13991.4676847365292511331.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bb66a657576f5375d44468cd77bf99c64329f3654d911d65461a5a65d8a94790
Date: Fri, 09 Jan 2026 22:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767999233
