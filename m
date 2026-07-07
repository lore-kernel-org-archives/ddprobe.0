Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E485242D7B
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 20:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783457314; cv=none; b=NfFlYodeXOryxpT+K/guV+QhYxd6MXczxgmbUAqSb5fORcly5bz7z/CoNqmuoGFbC/lM8ehtFNF0jXM5ilUPgCKngk7/AGxqz+WFOsWHDx5ZyFeJSoTS6/hjFF6fvrgB5VgyMN8RN1JrHbNKUYJz+CehlEVcpNJlO5FzmkFvNFM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783457314; c=relaxed/simple;
	bh=uHhdz1kkTkvnjnbPA6kb5wH+Xl+ZqB8OjH24DrKqDOI=;
	h=To:Subject:From:Message-Id:Date; b=Jpo/T5QN2Rzd2Adw2FEMzNozsZEnwhks7TZeKlu6Zr2URjeKwrgJ7vFojtyj2CVRko3x9eQqAFogmYv/Fc02FGLSRdjTAnTG9QbXFrWsLlnouvY9f/Zag5vhCF5yZnGMMpp/vZl2GvrQgcBkhAzWbDYZI2KeXEdNK1IBSfn3LFg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EBA14JRz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EBA14JRz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF70DC2BCB8
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 20:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783457313;
	bh=uHhdz1kkTkvnjnbPA6kb5wH+Xl+ZqB8OjH24DrKqDOI=;
	h=To:Subject:From:Date:From;
	b=EBA14JRzoEYP9QdppKvD3eyNXh3bigrZEFS40G0FdcfIgCzbbhdHZJQyKby997Q0f
	 8FPjJg7k3nEahPvPunJ49r06pEHqbEy0FDo5LmSVZ/tYih7g2bw7d+UKJRq8NDH58o
	 nGlj45O70L6J+ifW8Y3DWp86k7xZm8aa5ibYFARDKHh7ByZ3TBD/WSWaDZ9vvywfLJ
	 nEaeOIObMKKu5MJdvHp3t6fnm+7yh1cs62sNwVDhnIu1owZ7KHOsv4owXVGh9Qeb4J
	 9crsfF7QYrKc33ICkeGoKzsPVyBBgw/te9J8cSkbHRLRGQgTKTw5K1ZgpMbSsju4/k
	 1FmBmDTSKqdbg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABFF0C43458
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 20:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178345731368.8816.7498446191488037079.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 55532b1af33ed69017efe18663701ef088b03ffb40b90ad19bd07ebb43ec3d50
Date: Tue, 07 Jul 2026 20:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783457313
