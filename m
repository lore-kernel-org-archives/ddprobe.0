Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0EDB335949
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 04:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773636294; cv=none; b=Vxtm5v4TesktnD6HmCsGEUbf95WRfsLHvxVoNE39YB2ARQLmioi5bIvHE19egDhPpjn2VAcvvNrs2CqD0KrKDsr0aV3MCvGQV0Af+CPDfr6jncKoecmKmJBqx6O/GbllQeNAjLdDsTMbqEDMo2VGVz0CApPKq0Bm0s1fX1D2rL0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773636294; c=relaxed/simple;
	bh=jtEKgQb6F9RlZDGfiPB9t7Q23DiMe8wUvW2s18s9tag=;
	h=To:Subject:From:Message-Id:Date; b=OjhIZ2npyOXBCH8wweyzU6WS0a9IOXUKTDbGyi583EA6GMbP9f25Bl5mhkoI62IOx4bzUo4jiceFHM92VCFcdXEoytJyLEYT0BwAz5hMhYt6aaVunT3zjl7R6kF0u4YgbvxWQiAmlIBPRW92gdeMflPP0uqs6L2+ZivMCuxYElA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aAzGqtgJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aAzGqtgJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0365C19425
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 04:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773636293;
	bh=jtEKgQb6F9RlZDGfiPB9t7Q23DiMe8wUvW2s18s9tag=;
	h=To:Subject:From:Date:From;
	b=aAzGqtgJJ6kDjTxpznx+V4X9wiXhoXSfB+NrxYBRn6kX4R+vEMXuBrEH1scUHGE0J
	 wekZz/mi4CEgplroiyf3ICU2JfU2if6r0HGF3XJaG4HOvlab3clI2k4eUUWyH44N0h
	 V15TRpWrQbXh4FhuXRokHt8YXkgqV0uj9Qxw9vF/BLOTSxtzI6yPmvNuuAIqak5EVM
	 Gi7XFCov06kyBHFlNBWUp/T7ffY6oTjMwT+iwRg1J7Tpzhtdtm9spcCv+HBfISOdSB
	 weOAYzpTtw+jqH6b24Q6PyNe+WXtpFtJb7bJogJDdJIN7sKMcqgb+IpgpeU6vlzwp9
	 U0eYCMdATi3sQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EC03D58B22
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 04:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177363629357.18956.9356573291672875023.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c99aa440fd6ebb1fbd5c1346c18174d55386acb7f09b207b4c3b910bc9c4ee28
Date: Mon, 16 Mar 2026 04:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773636293
