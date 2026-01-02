Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FA732D1F69
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 07:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767338034; cv=none; b=MmT3We6q+PVhWH2PrHg8vopJXdwQbhaRdJOS/d+JB+pgdfHPwic9/SmLlzwEMToNX4j9XlLoBSEajZirQnzG6P6pItPH5m+60G72/FHZbzqk28r9eaHOMHt3IOztHI/PnwUGCC9ubNR+H18+66QCbf6UCUNB+d2zgdkOgTd1SZ8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767338034; c=relaxed/simple;
	bh=2D5/NcDCrtrErfN6Kxxl43ztsmjr2h0WkXEU09XxGr4=;
	h=To:Subject:From:Message-Id:Date; b=Ny0j+a7BIrK2d3wu14dc7QHVoS+vVOh8Ug21UObojznFiYqcGuoCkVWzRbt3MlnrJXdsAPU4D5cTyRKrVI3us7R+awX6Owkn8xXmH6SfLeP/K3AGkoSgZA1TgcfW+vGkr45rgrjfi8FTUNuPN4JitfWEZb7Yiys8IjAyLBS7IrM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rn1kEh1B; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rn1kEh1B"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A08EBC116B1
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 07:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767338033;
	bh=2D5/NcDCrtrErfN6Kxxl43ztsmjr2h0WkXEU09XxGr4=;
	h=To:Subject:From:Date:From;
	b=rn1kEh1B6Pv2hpuAC3ivWA9v3/z46mj54C9jYrysW9lFH4iG3TPzcEC92zBgu0uCx
	 4fUe9sKDreBaUlA/qO97WYnF1rvXanzIbTSsxBTeRFw8/YNi0RzRywrYT1viqbRvNk
	 SilSNLE+TbLAssulPAIwRAA+TxbBLNP/tv99kHV/3HMnaaesmCWHm3/3KCDCVjCq8N
	 DK5TnVrah1SJSGA5R6P6K6QGthGmjKZYMowwKqIakgpODmpZ1RERjTCv2Vt2AOGyY9
	 6i8yyTsCWKHqRRa1h4mmv4z9ebsFqjBOWZWa0t7ZW7BDNhE5La20Zo03af3iJ/xAgs
	 AvQCf1kRDlGgg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F8EAEEB57A
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 07:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176733803358.32261.4444818790016185001.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fff7c03a3ec196d0f33a2529c55f27fae692a5b091082e0a4999e1cbbf5117ab
Date: Fri, 02 Jan 2026 07:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767338033
