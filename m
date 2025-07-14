Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F7FE2E36F0
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 03:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752464394; cv=none; b=X1uN7apvoYXCLpt/iBJWWaTjEfM72eg/tQP2SOa4CQYX1fEmZeIngyeq2XkhttYZH1WkHuyebWpAFZ38QhRVt9Zt3a8Lny15A/rItNdGFKvwnl6/xkOPgr0nNPgFDpu8MOkTL7WRK/Z510XNFXiufg5MeaqBE6TV+ec3eTBMP6o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752464394; c=relaxed/simple;
	bh=tGgYySy7t8qs1Ad8RU2MoKVhr5qLxef9SSazGslXW4I=;
	h=To:Subject:From:Message-Id:Date; b=S7cG0fFJjxzV5sHTMU9YrM5vs3jJUN7Hmf/4ToMWXP5HedCMM0q/vzrHW4MJTC1KjZIoc4stLwVYE+mZV6CV4F6/RhMlDeFlMhxJRRG3uFaH3TjXi0WiCEnvbQfw27x6Ert+ZqY6ObYrzFHI3+UMaTeFwG/4rpYqGtGHETLyk5U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ct+59JNT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ct+59JNT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2B22C4CEED
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 03:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752464393;
	bh=tGgYySy7t8qs1Ad8RU2MoKVhr5qLxef9SSazGslXW4I=;
	h=To:Subject:From:Date:From;
	b=Ct+59JNTG1GcoXBJe2RV7AE9tQMXNng30BeFFv+1UOWsPY4MUg//CTt/jEnjMkMT2
	 X2zR1vFiN11MBnsOssNa80dbpHce1Tx9DzmJoJtayj3/4BmLmLI2/WwZVxgVLnZsK5
	 2vBsb8xAmf/pr9eRW5MRoJGbjVcUnMV7VyBpvxuiR83N03h62yCdNed9DxO2o6oB4/
	 wrbI5ftjtt0qXRNYWM4PD5cCgGQPGngYI0XsttDN3xWQCXxFNmsxceXwLu3r/16Ren
	 X1uX91Fvt3LdRd0wSJkuHIkbwJd78Bq6iIC9jC/qYsQzV+L7GdQq6CKxYhTqvZgua+
	 aMjgl5nvXTOpA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90CE7C83F17
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 03:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175246439357.14962.18147448138018551086.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bbbadfe05a8c56d916b1e02b6c52b9a25ccf49d2393638a3ff601a631f9ba2f3
Date: Mon, 14 Jul 2025 03:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752464393
