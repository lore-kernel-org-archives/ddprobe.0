Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3156010E5
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 02:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748916594; cv=none; b=MZag/MztT/dcXKdcPFryv+6FEq4lXea70LlwXstLMjKU7HzGJ4UVRxNwjQdJyQpRWZW+W8zUmHaHBLFKikhplVq23bt2XNZfkg4uILRyWzYDLsGUPfdVwAmkUrj8cKejo8RDXtiYjJGzMTDKGlETu00nUaI4GAubIh7ht4YiLKI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748916594; c=relaxed/simple;
	bh=OtUEd0a7Ccx5FZnTnk6pcvP+FXMWCMa0mqOU+B8+HyU=;
	h=To:Subject:From:Message-Id:Date; b=K/YAAcnWZsycEV1pyiy6ex04X4aWtOzWF42RehZDN2DR+7b1svxTos0u/QS0nNfUGF2T7TgfUQfrmf2mWtICdAsETYpDWHvl99D2Vy9gIJdiaAQkaR22jDjyiJWTON6enL/+GCzcij3aeuLI2B+ItsRkvOOW0SpOm1A2S/PNaYo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Qmko+lrp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Qmko+lrp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A02E8C4CEEB
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 02:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748916593;
	bh=OtUEd0a7Ccx5FZnTnk6pcvP+FXMWCMa0mqOU+B8+HyU=;
	h=To:Subject:From:Date:From;
	b=Qmko+lrpuyWrXFwKRLR22KSKqTR+AZ/G/TvQruyegM0wLfYY1R7CsOwka9j88Jtj8
	 JZSAnpYAdL4tprJdmLCZu6Qung78IZRryugW5G9ioK7t3pbAD6DFMXTK24tstdnmwE
	 p/lMFNarEX5Bbv3cJ6aVmDzKrq1VIqHkpP3YYne3SE05BlqeSUArj5zJ7d/RF/drEG
	 lijtFxEPMt7hpw9spyidZzrIZ/rL/ceFrzKuZrkbeYbNXhuNztjm8ZAG8HUxqu7srv
	 eG3dRA2ZksFE0VUq2x5WmJhJrF1dD8wGzIW05uXmnEMtaN1WlY0LS0XbcphgtYzgPR
	 4N0dey5Zy58hw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FCEFC5B549
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 02:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174891659358.23960.5877400242694821768.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dbada6060b4540f7f45fb2209d3552c053a6dbeb5e65942aef49faec7f50e7b5
Date: Tue, 03 Jun 2025 02:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748916593
