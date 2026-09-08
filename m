Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BE0D37FF75
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 10:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788863434; cv=none; b=Cm0Cd1TzWvIn/2PIq4F91s8OdG6k091/ytGbrUdP8RgnwrffiUv2DY6AJKcQp1RT0QerCfb4+XqbW7B3R/fxqrVPNJ1lYAPjx8/y1nGeoS6VwebrjZRCbYQ2446VZJTo+BpwmFTCFjg/kvkougBfDX3sN6sDbGxklbdNglKnOBE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788863434; c=relaxed/simple;
	bh=Yoz4/wg5pXBlLDB8ru1tqF90cS4Nm4pLNAoGbkbfSzo=;
	h=To:Subject:From:Message-Id:Date; b=QvMTUr6U5EkchBWIVUqgBmfBdpBAPlIq/HB1dDNeWJN9lueBK1lTCoGvHh5nXvY0MntOawGNuiaJcVCgAyeJZtC9GoWCiRcGuvu9kmVrZMGSvQMecPoYfHLDT+Xm8cHRHMtBtplqT7qNMpLDhyrL877SVUsviRFX6s4nFtgJQ64=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FE693UGK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FE693UGK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5775C2BCB8
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 10:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788863433;
	bh=Yoz4/wg5pXBlLDB8ru1tqF90cS4Nm4pLNAoGbkbfSzo=;
	h=To:Subject:From:Date:From;
	b=FE693UGKq6xjMoTw5xPV/lWud99Cw+qVPxUPKKYj91PSRd7vkTOd+lxKSZVdtTLju
	 dZh+Q/IJpNXzqscMOGvJ6wRrZUo2uARkIQz1kEdcXXPGMm3Lbbb7SxFrTbH8pYerEY
	 zTqe9m3DsIT+QZHw8mfwPan8dBPJutWq61okC3tCNP9+TWoMTXuV0uvLxHVRQKTBBt
	 SD0pZAm1ql6h1MSeQ6YQ8gfRPLZqPqBg7unYEglgcfP6bdp4MATvoMwyz9ju+q/m0Y
	 klK6qjndxRvXXVIyAIac4GqJh7MbvVyVLzzSjFuFmDgZH+qHP2qkIqhYLPdpAAhCR2
	 UM33v2cRzPU9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B18DDC79FA1
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 10:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178886343371.17433.405752980588346344.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9bcd1555a2a10bb7f8043052fae2bf8256f775d792b42e8cfd5d681a137daf50
Date: Tue, 08 Sep 2026 10:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788863433
