Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16340156F20
	for <ddprobe@lists.linux.dev>; Sat,  4 Oct 2025 16:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759596594; cv=none; b=IMUuP2WttwPeV7bvrGsJBByyAheP8octy5syOVrC4TRIlWLptvm181NADDkMQ3Wi5SruMaWDjTzDm69fvXYEWCA+ae8RBshQIZz1d4+A/MWeJmkrE9RnGPBUYE4d020XE9YU5GS6ks3BS4tb+IiIvUy4Bq68LP0Hxm2EIR4K5uk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759596594; c=relaxed/simple;
	bh=nrcgfu+KIaehCJ0Mj6RvBTxP2Phhb5tSH5V32SzPYFM=;
	h=To:Subject:From:Message-Id:Date; b=k7K29FbGlMBagkpheAkDE32I+sR716GFDlw/N9uBaGstXyCCoKpUxTY1MJu8/OGc4MwIl9j1/DE3MMsxL0JGElR8X1jyZ0SAAcouE9CZwBgHLppyYee+PdGKikMA3TW/w8/JZcQdIPE5n3qCo5r6QV5X98rsFMmGqgdqPWpJGyI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CkNhTX6m; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CkNhTX6m"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3FB6C4CEF1
	for <ddprobe@lists.linux.dev>; Sat,  4 Oct 2025 16:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759596593;
	bh=nrcgfu+KIaehCJ0Mj6RvBTxP2Phhb5tSH5V32SzPYFM=;
	h=To:Subject:From:Date:From;
	b=CkNhTX6mKMD1zPA65ua6TBFPT77/wJ0i28I8ljaw78nNs5ERfEdnOEXZuFyk6LoHe
	 pd3L3VxpGFEprwgvPLMFhP/qXcuyUKs0skw8MEi8gwYgsLpjx3uknLd//AIyOgXyaR
	 3AEN+2hqHCEcJO1aeAuevVG9Dap07s0s8YgyGL+DWGCmlxI0IxOS00ce0xy8gBPwIr
	 f9NHqPpJQPvsQUdSzifN3nk3T6DsNZC8buCpwyDaWmRF1xEZD93gCSgrrDq5ns1QlE
	 d8DQLyhWb7xnmaGBreVPkYRhexzZuXp2dPxYhPAv/VMUinhOei4bxtgOarD04RwYCX
	 Nybw7afqih7EA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9561ECAC5B0
	for <ddprobe@lists.linux.dev>; Sat,  4 Oct 2025 16:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175959659358.2495.8983803673425504031.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: afc50468128f004c1c1caf806176a5d267a3ca8dad35345ae34a2432ccb6015d
Date: Sat, 04 Oct 2025 16:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759596593
