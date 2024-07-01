Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4848216D4F0
	for <ddprobe@lists.linux.dev>; Mon,  1 Jul 2024 17:55:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719856523; cv=none; b=TEC0+HSKHO++AyV0pKZNPAsvaN2WJwbky0Qpn5uxLuMCBDDMHyUZd7zBLNwN8b+xTjmBGfso1yTQ1AxYezxycIb9J4XPR90BC9FG8HDuEicqKEmFOO1mxK4A4k+2Nq5Ld7w/A8+dhiN6Mg8N5NZHULXw/Z5vOpsml+UAOH9VM9o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719856523; c=relaxed/simple;
	bh=MsZSKaL+OBjkHZAiUynT3EJKWoRU4NV+yN/fn7RwtQo=;
	h=To:Subject:From:Message-Id:Date; b=iLBmU9i4aletYqw4F3dJY+NGcf/XCuKcNEiK4mHjqHx8h9/+/yFfQjHZrXJ1h+BfPdkgovOzdtZnojDldWqPDMZ+JvQhXrqqDFLBv98G8KsgSaj2Hu1+assIxPAY+FWNquM9OBH1ORU2Afwuf3QCuQtxVRhV7VcP2hQMrBQR0KY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rk77jIGE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rk77jIGE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6121C116B1
	for <ddprobe@lists.linux.dev>; Mon,  1 Jul 2024 17:55:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719856522;
	bh=MsZSKaL+OBjkHZAiUynT3EJKWoRU4NV+yN/fn7RwtQo=;
	h=To:Subject:From:Date:From;
	b=rk77jIGErsoxoBI9bxlIO+K4x/va2CCZBXfWAHZESHIild8ILpoi7axapJJG7AbFW
	 /HPD32NytLg9IWeOMiYSd6Am4nBuj6Eya8Zr0ZcMV6T0egIAQbSswFP7XDVQ8gBmwb
	 GPdxKSVax0eA+8UIcbqnx5HmXywueOxyaLTEmN2m6MlskKS3HNZevhIgPLPlNWll8p
	 gRcSIUotC+TSdSPB6oUwWze77W+RPGPHgQ/21TE/PVIAoZJ7/og9D8SwbGdv/YN0pD
	 oAgMnB4z2AwgKmnaYbt1S52qGjJgRStrBFICBzmYjE1F6xS0e6gIGuiAn0cRXRRjqI
	 5dAIfaUKd1mLQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C63EAC2BD09
	for <ddprobe@lists.linux.dev>; Mon,  1 Jul 2024 17:55:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171985652277.14943.9711862439973301373.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 029f9235ba853398cd1b2dc9af1f6504e1de374139b07a4126a77c4cc52fee65
Date: Mon, 01 Jul 2024 17:55:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719856522
