Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25637228CB0
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 12:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748954394; cv=none; b=CPzfIFJebcu99GnfFOir8iDayvqi8qOF6C5thNudiKfbF56zUo+TcJWlzm0u5zqgDqXuSXzoC3gNq7jGeYLCgkNILbQiLbs9y3ncNucTmNo4UX2x12Isd5DORyaqB8uR1azcPYWu214Sizom6ptUpSZV9/iE+YvibP8qk3K+WjI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748954394; c=relaxed/simple;
	bh=ViVSP3c/TsRcezuml4zznYhAICwxeHykxcHKGAr6Leo=;
	h=To:Subject:From:Message-Id:Date; b=jVqSmfU8x0aBG4V6LK6ByMy/wIcrIRZhp1W0ewDswyipmYLFuVeXQ+dZ9zU6ntgWGNu8ZO43Oe17PiGpH8b/yWNZKnmJe9fBW5FmCVSkhjy+PjOIZ8SwT3phh2vTM2wrsit5qUWLMvxP5GujtlspXJpiXMVLPR5W3g5vYCMEuwU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DLvEQJ/f; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DLvEQJ/f"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E170C4CEED
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 12:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748954393;
	bh=ViVSP3c/TsRcezuml4zznYhAICwxeHykxcHKGAr6Leo=;
	h=To:Subject:From:Date:From;
	b=DLvEQJ/faAABth7xxm7+zOvHafRfnYieREiK0pyF8BIZ8eW+BVRM/IfddMWZQha0O
	 lCMF4mdi2YK9Mz12xguR1IndBHFXG8A4n2rwtXORpHbyCkCoRIThw5OzBfCvU2I81+
	 KQOUOJv+ER2tQMQAWAm3nwHJhrKKxVjyBg8xf14znouu3f+VdNb12RTIey3jWD0gr4
	 rwsaINylkkNO2Xy4R718lbASYKKfpZ/mBYaSi0IwUxEWQX1qW/gRW3tSfhQxLIaQ1N
	 LeNL9GPLlQY+v3CkmGhiJkXwVsoSFcmGvuOtHod0AvdidGB7evKjhK28JPTAveG4Gj
	 7uC8IlJLWK5pw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ECA9C5AD49
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 12:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174895439357.7523.14367773736225307053.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c2789adc2b52a094e6afb8502a320c69bf90113029c66c2b5172b4aa10d2b86c
Date: Tue, 03 Jun 2025 12:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748954393
