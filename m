Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C3BD347DD
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 15:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750606194; cv=none; b=LJp0peSRU4dkLp2SUAZ7gKyCKUWJO9Rklb3HVotpUItzG3d0D6adEp1GXyfO602RcYi1cVzECYcPcdTq4KZPIDw5L6EREVWpgjVGxIABEp5dS3mAxeOvqqqCvmXhKJ251kG2p/89iDHuZg9GmQ3UnoLhibTu6ib7HRqeeEEufnI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750606194; c=relaxed/simple;
	bh=yubP227YVAaE4B9YWhJyMWApyqZPnmUOk18dB3UC0Xk=;
	h=To:Subject:From:Message-Id:Date; b=Ttqn/0d0pInvdD56I9FBB73L2/9LoCVmmeKf8BotmFbxJXHFNFYjqKjXTwnAD1cHneGQ7ijoyEXf13IrDOmR8tGxbOdYPHo1WM2g+a70f5pbW33JtobsR5Y5uufUIA1NZ68StDwpKD9WDzs/mhQto+79Pot3fplAGwJFnwuowT4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vDRQWXqu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vDRQWXqu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE9A5C4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 15:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750606193;
	bh=yubP227YVAaE4B9YWhJyMWApyqZPnmUOk18dB3UC0Xk=;
	h=To:Subject:From:Date:From;
	b=vDRQWXqu63IAVInP0aH6dbSvPqJziOaHPRHHI05zTmgtbI/ZIOTPRmbOEK0Y/U6/x
	 GuxBb+Oc2Rgv7y1Lz0dBXnR0MwbzIkZegh0avDWpq591kTZk/gX6mBsAHZB1f09kz7
	 wjmemuFpSa42n2xWi4J1DQcPBExChZhhFIT3Ec5j76OuEk6hGWDUvqF7raxZV0Izoh
	 H/U8e1UN/xcPdMmjer0xtz3vobC14h9QliQYbeeqkq4Jn3W6cUXxYbkrAHX1I3a1hQ
	 mU6K25I7PkgTz6q2mPYlhIOs7Kp5HLxhtmmRlbR7sTgrQDYqL6WrJCCWyMQVLdqH3E
	 jmLvpGky1CqfA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 944C8C7115A
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 15:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175060619358.1536.13990656779966355337.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 19f8f1affd632379ff946d575bbef2d82c7fe46772cb98c2bf2d99f234b9f242
Date: Sun, 22 Jun 2025 15:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750606193
