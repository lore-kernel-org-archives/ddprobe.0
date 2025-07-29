Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C4964A01
	for <ddprobe@lists.linux.dev>; Tue, 29 Jul 2025 04:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753764594; cv=none; b=E0Qjqm69bcBP97oCWU2996dA+ssiavT0gjKutwv7+VaSgDaqBa7BgCAwb2P5xKf6hZhpGQavkbKGhRAV6u1Qpprt38sCV5U4wuwxV6LibTvLONAN7O74qlFDWWCjDuUlCGh/exord0/aLjg5w8qn/AI/iV6fUlgjqGVVcUYG5KA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753764594; c=relaxed/simple;
	bh=ICcwKvddq1QztgLDIoy0G2Yq3d/oNB0DgFlrjsf8zpA=;
	h=To:Subject:From:Message-Id:Date; b=uDMbpzn/cU1gAwYGe2MF1vXUzxG7gHaqvLr49VpyoWMrR9cr5PzP4Nv6voT8SsQwzFgWgSR8lEbrPXtlEv29bq2zZtmuMwwAgTRhyny8ZXme63YbB6yC9ixa0bhqq1EDLXYrKOcO2tMKbcfBkvd/bkWoew3nOjMRA1FoKI4JVlo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O5UaGUlJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O5UaGUlJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4980C4CEEF
	for <ddprobe@lists.linux.dev>; Tue, 29 Jul 2025 04:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753764593;
	bh=ICcwKvddq1QztgLDIoy0G2Yq3d/oNB0DgFlrjsf8zpA=;
	h=To:Subject:From:Date:From;
	b=O5UaGUlJNL61VLrMUrDK5RY9L2ZCcleb1VbeXZ5lYVNyhLuq5FlfAlhDo58NrPr+P
	 lv0EDi5WXpvyQSg8IDeuqvo3ZGhxWyc3beKfNa2QzK/gtQrTdkHITAg3G1xPCOlFV+
	 hHIU2KQE5Kl0mpBMCplCfa+UdSIx2zQS88ILDRkkuCHs37HxIX9U+DvL4snXpcPUCV
	 PKlFHQLyVb5Mau3+ebOwCvaKklvoqefNV1yftY4D8vUctnO3BNjx8ldNf27PdcC55F
	 KIOIG/IiXBtzxUBW9FP58kRF66OnF585QVwLuz1sbtR3RUkUnhhRHl3LcgArbiCa7M
	 Twy0yXA7f4Fyg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91810C83F26
	for <ddprobe@lists.linux.dev>; Tue, 29 Jul 2025 04:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175376459357.20165.3306614979449295533.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 84951456bfccecc4264d220210d34f55bb5ee3be3083f070672725a999c46482
Date: Tue, 29 Jul 2025 04:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753764593
