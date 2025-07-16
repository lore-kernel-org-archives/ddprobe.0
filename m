Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C9462701DC
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 02:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752634194; cv=none; b=gNslReXVyRyZtNFxhTa3G53KhMr1PZ+9djCLZL0BX+5AuBiFEqV1ZVmSSZxzXX5Lc3483xPNE0E5NnbSJeO/TbTBFO80dQU6GXDFm6ZGrAVbys8M0LTgEoD4KOYnjgzfgh0NUQYr5eLeSjhAlN/rifWMtrXmQFY0wVUTIk6DU8Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752634194; c=relaxed/simple;
	bh=rE9j9kfUy/Nx4A7YFiE0fTHiSXNO5ELFZ7SQyL3ZGSs=;
	h=To:Subject:From:Message-Id:Date; b=fEdYWhNR11SI8CdIwWEU/eYzRj1ygDEO+YuTyAWcHn55ubKVE8BQ68sxm3f1dLOoy+AvLV2oS/fllz9UBld/3wKWOPAPJJTcsej5umJ44xLNJR9lJCRnI8CePi8qXdc/K/pf04cezO50yGykdCkpVLV9DwdchDiQ4E9SkzmAQCU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mKslNuRE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mKslNuRE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8447C4CEE3
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 02:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752634193;
	bh=rE9j9kfUy/Nx4A7YFiE0fTHiSXNO5ELFZ7SQyL3ZGSs=;
	h=To:Subject:From:Date:From;
	b=mKslNuREurmFp+/whcudE6iRRAAkozRPk3u/BHjgFRbAiCAX8pkzw+uDXpNef0oRA
	 vHYCEnDOIkvRJElPJ9RuReN4qUf6euxMVL3TiiF3mHozgTsTW+aeEza4bT7VNzbRw2
	 vhQE6BbbBUeYFoFw9oPsswXPxJ8O+bvPVAmxKTUZWmb++ZTqn/SW+aeUyGTmFlNaAE
	 3EXFYVoB29kdG5UUuuF+Vs1bwuJsFqUMboDFibuuCDFVUNByyCO0IBGG2pIIU8bRit
	 n5XLGpMvrP7oPDUgCoaDgNkmaxgsMyteb3edTJ6PiANpN8OrXbRZKbkv+WC3BEMf65
	 SPuF/j3avP8JQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9026FC83F17
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 02:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175263419358.26504.11278503156808730313.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a7f1b71ef7d5f0646a8fb702bb3438d96caf00645b801717ba019868cf7048e7
Date: Wed, 16 Jul 2025 02:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752634193
