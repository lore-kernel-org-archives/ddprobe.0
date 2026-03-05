Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D15AA2877DA
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 19:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772740493; cv=none; b=cjH6X6RAFfXUiv4cdZ8GQpQL08BCVXAS9s/7V8WqT2IRa211jkhDJzVkXfuxgeuC4IwLZ6T3rtcUxQZOU2facTSfeYuWCMx97cauCi8BN9IijF6e/mTOtkte3H4vqFrFP1f76u8CzlyT3Trdtfw4nBYtak0cJi/Gd9G1qKMGpfY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772740493; c=relaxed/simple;
	bh=/J5w+Fw+XUIsnic+789dxzSPKqiQ3Npx3HKGWaAgEuA=;
	h=To:Subject:From:Message-Id:Date; b=OCz6xJoEVen5Ul+biMryd3BcDBDQEEHp+kubTfm/64V0VF7NpQ20PltUXnXl00TlWdAe3HzdzyOdcoIzwy0yuU3xiDpY2Z5EdXtAhH2Ac6BnF/w/R3vthQ90QycX8yyVbNPkSrhms56iZPti/T5gopWQBWNc9oPWogaTxGu8XmM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=H1UH+7CL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H1UH+7CL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1CFFC116C6
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 19:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772740493;
	bh=/J5w+Fw+XUIsnic+789dxzSPKqiQ3Npx3HKGWaAgEuA=;
	h=To:Subject:From:Date:From;
	b=H1UH+7CLIqD98ZRGxidPEeezFHSLK6UgSyscCvzaaX3UfGEBKcZYIdOx37Cnpp03l
	 VhHfYJSIGkwKrn86wHpndswNiQkufRgBtqHq0yjiA4zSVcBJFVAoFK4nSFtWRhCAxK
	 Ai2VVZXOZMOj2EjSbmV4xuozNV15yifuygF7pQD+E4S4ox9eulVOUJzqGZ65fa3i2T
	 j8YWSJk5DrSCY8r1feJfi/F8O8ulMT5GY634wuFzNW7ThREWzQ6m8KyEuRAVowb9qK
	 80wMyI2cBf2NNW0qCTkwPho5aBc/44/t87nzqzDRE12aNyh6CmX2swKufxvBZNqIfP
	 74G0RspbAvDXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F5A9F47CBA
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 19:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177274049358.8821.17237302100967092287.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1b3ee00ae5b7824c12b0b2177d3c60770dab28063de3ef09a97df5f3606991be
Date: Thu, 05 Mar 2026 19:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772740493
