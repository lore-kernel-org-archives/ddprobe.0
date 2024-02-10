Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 08A995C5EC
	for <ddprobe@lists.linux.dev>; Sat, 10 Feb 2024 18:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707591497; cv=none; b=FoNkqOghFARxub6MrTxf6Sq8STE1U/V1oaDbu6NGu81JzOaCrHwsa1kOvhLf2Ki1iAxuJ0Jks5mNH4vzdV2E+OxYmRQ23HzIP+/JQdEMKutTaxcYHkptPKbIwpRD6n5fJmkpUwOxPeuMGILdqPFZbyu43nt2TPSlOFzVrX4A+Ek=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707591497; c=relaxed/simple;
	bh=wuYivoY2JKZkURoB92P1MlYhg7w6U1ECMhMg4kLBR0M=;
	h=To:Subject:From:Message-Id:Date; b=KoOHtSNVZpLoqpP1zra0o7pLRh7SjR5u1RszGJfyxx/iaN4yWdbDeroi5Wtfz3aQhHmYtkz7p82fvJyIte8WGFhX10kbzYPphi4+NgDcVR4k6ktUi29rOb6Nqle9DhgJfTiUbup9V5251AzR+ZBNarfTcDjQx2ZIaNkHrUVKsIM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N8bVjajT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N8bVjajT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7C9F7C433F1
	for <ddprobe@lists.linux.dev>; Sat, 10 Feb 2024 18:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707591496;
	bh=wuYivoY2JKZkURoB92P1MlYhg7w6U1ECMhMg4kLBR0M=;
	h=To:Subject:From:Date:From;
	b=N8bVjajTW0n7RsweYW7VdAmr+SHN5YF1Y0Kd9wyOq2WWKnX0EoKJ3py+v4E2tewJI
	 89dP3rHVUIoWYG2NqW/wdFjTWU9B9RsAfdR3uuthUlG+Owny1ZiWztFv6AhsR86dTO
	 vkhL/mvF+AmnN79nbo7eYoY1iRZVEofF47ipcVBYWa/Btoq1fn8BalreGBrGZtQLWb
	 ze/yqM/B4U5RR3iO4lZlxM+bBaY1gjjCN6+FRDpux+rDgacbWTcF9zIfZqkuvd+bkR
	 Vjn2bqUoycLwIISrxHBhH0+2eX0yquLtSimYrocjS46cQf3+sYLAll/HBJK/oE+IXH
	 stn1R+QS8QwPg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6173FC48260
	for <ddprobe@lists.linux.dev>; Sat, 10 Feb 2024 18:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170759149636.28896.10684905008044708619.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ce3b2c7f10d1250052ab0ab937f573ed934cf48e25707b2d5c2279af4bdc651c
Date: Sat, 10 Feb 2024 18:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707591496
