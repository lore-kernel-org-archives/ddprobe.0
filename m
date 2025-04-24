Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FAEE1EEA43
	for <ddprobe@lists.linux.dev>; Thu, 24 Apr 2025 07:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745478594; cv=none; b=eHQNRN69szIV6XY9arMlAdftIL20oppIEGJlUv1owhCMq04CspVWajq/C0uRExme9YMJeqMU8sI9h2urKFdWMV5Isa2b3huGlDNOoaTE2vxz57q61LPf9BuMGEJCPg+Z6gVW1Xw2zaO4ZXOOSU5Vuz2RBfmMxGS6E1Lhd7LL7Qg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745478594; c=relaxed/simple;
	bh=xfVDdApVuODHTOIvxb3h6TiLoU+pU7McV1aGoMeK+OQ=;
	h=To:Subject:From:Message-Id:Date; b=RcPQQOxUMRPlvH7aYlC3warVQ889MCGSU8WKZjyNvkbpNKvkNgCdyPuGgR+GMk6ltXj66ri/AdJYxDLs76VNRbBtHxX/KRaMeHMuQDiqXCOImg7tVQ0LiLQ8nHroCrPIgFLfnt3TjI0kR568q0HU/RP/aWex+omIIvgdrBK4eDU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g1K++QP5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g1K++QP5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A24F7C4CEE3
	for <ddprobe@lists.linux.dev>; Thu, 24 Apr 2025 07:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745478593;
	bh=xfVDdApVuODHTOIvxb3h6TiLoU+pU7McV1aGoMeK+OQ=;
	h=To:Subject:From:Date:From;
	b=g1K++QP5zPLn7Ukwd88HnUWM7haSwcsW+8nihH0zIEr9V+U1Nok8hxdJTw3dbIlTu
	 XRuMIYyZoVGXfWsoNDwiIfyfg0U/kIHYLekssbU9g8rQ1c/akF7ksNkgWzrYi8KZNP
	 PHSeEct2epUDNEoGrbhROC0rucSm7awX34doDxWk7N2wNxa5HLb5kYbNP3UBLu8/kA
	 vGbPKpBdgDcalqh6KKa+T81JUs3MSDXTsPPPzz4cF/MrYsDWdjCo1X+V/plNZHAnvL
	 nw1drT1T/7Rh/FqDyKFuQDtkzzxVnIMCnAqUH37F8GGQ3hGOo0xoV7NTvES4hrvHQv
	 c1koEOIFJII0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 919BAC369AB
	for <ddprobe@lists.linux.dev>; Thu, 24 Apr 2025 07:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174547859358.4944.13937597488039298917.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c209ea43d9ffcb4293968bfb9b5b8fd8ae8294796ecf1f13bd72a5e3be31055c
Date: Thu, 24 Apr 2025 07:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745478593
