Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0DBB9288C9D
	for <ddprobe@lists.linux.dev>; Mon, 16 Jun 2025 17:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750096194; cv=none; b=la1BAvLDZIYMjhAel5qoGfdMTjgSjst6teD03nLkCVrkA3nOEX969hIjeUPf5Dp4OFy0iXkt/EKfaNt5v1/lZH3uU9X6s7G9H3KYbUNipSoY852gkZKdRp4C0QAE3I6PokXaNIKDUzvlABTeOJ9cZ4433mMGCajnxR2MhroaVp8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750096194; c=relaxed/simple;
	bh=n5peh6y5lPhotDax5sd58bje3EISyJOPPSjZrVxd0Og=;
	h=To:Subject:From:Message-Id:Date; b=fLx7RzuWCtVCuzFVBqxVuYL/ZQ/isewevd+eliXf2gBnPJP8LuQH6a9Ek8p4wtavx2rOSdhUuMCoHJk29YWxj80H7VxzNCpHJGpTOMnSKA/qg9xs8gagoW2LGWVYQr9sZFNJVsfOIVOK50ENrgxMLojLp9ZSjQmRPsu62vzZWtc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bIf0EkIM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bIf0EkIM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A038CC4CEEE
	for <ddprobe@lists.linux.dev>; Mon, 16 Jun 2025 17:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750096193;
	bh=n5peh6y5lPhotDax5sd58bje3EISyJOPPSjZrVxd0Og=;
	h=To:Subject:From:Date:From;
	b=bIf0EkIM2BuVCJli6z+KZaEbGkbL4TrLsV51/Xv9WYK/TgndokwsJ3aZW4iV1r4up
	 EYcu9ZSUVOEYtp9E/VXGV4/GxXeYfWq2anoFrZqsK2DLmgMX6yjGcvjDDlLlEVPkkv
	 X9gC3UlImEtufikJKZAk379Wyyx7kD+kJnm5Uh0U1l1DaqRKUmOUDkIrlCeOpGTUm1
	 cyJd1XgSWbJtU4ZRLqQ4IWhZy6+PO4VPFosst829Ivr5tz9xAurgWReCTpD6A/Q9WS
	 oTQ467PAi/Y1A9nd11NZDM/ml2GSuA5v6a0JrhquVeAP6obP7Gle+qMG4suwvLT2g3
	 z15GLgNZDQAEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90C39C71136
	for <ddprobe@lists.linux.dev>; Mon, 16 Jun 2025 17:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175009619358.15708.1329601226897396009.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cd2c401ea5173577c32feb22a84f980cc05a510b55241b4c973d9d78eafd2509
Date: Mon, 16 Jun 2025 17:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750096193
