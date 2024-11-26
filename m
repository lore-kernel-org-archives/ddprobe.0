Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 237B7CA64
	for <ddprobe@lists.linux.dev>; Tue, 26 Nov 2024 02:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732588554; cv=none; b=jGkqUnp7Ubt9EaUfJYbY/LMz0A5B5C8oVuS1PGGh9gV6BmaV7P0fjS5J38/813WfcJ2DN9in3mOebcdwPQ1MUgMpkmMxd0ryfFX/cI3Ub3iNoMI+AKfUHjvO6WgcY0GhFzyTgF/BHoHhYsCrN3FJ4DSi23jqx2L6MDQys85XUdw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732588554; c=relaxed/simple;
	bh=MFOYC90Ep1B2Rszh4HWyPoV+ibF3DKcnZehGSG3sg3k=;
	h=To:Subject:From:Message-Id:Date; b=nTFFlhzB/8UPhR2AXpITSFlMdaPK/L+nH1YwehfcOFbjOEF/8lISBx92r4qDGmSRRQDcS4ewihfghgkVCXCWrNaPvajyl6aIo7NEYrArbXfi6Mx6xrgDEe72tqgEEVboTUP+NfJZ7Ix/ag+NG5txQ9oItfTO5v/y3cpYnH3YAew=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a/7sIid6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a/7sIid6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA2D6C4CECE
	for <ddprobe@lists.linux.dev>; Tue, 26 Nov 2024 02:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732588553;
	bh=MFOYC90Ep1B2Rszh4HWyPoV+ibF3DKcnZehGSG3sg3k=;
	h=To:Subject:From:Date:From;
	b=a/7sIid6Rl5qT+/enurfeBgHWnQeKRlNku3yQjlfZNCRhHLc5sgwHt5mE+Q47OdlK
	 de0MT65JH4Wth8kTzQM+8zTXoCBFRYKV4cXO3vS3QF7WyiaVMmYk2ojxH1R232iKdR
	 bESlv6fIVCSP0vija3jOeaQrV38dmnAX+IVAJsiUyZvRsraSihguaVtR0o3L0CSkR6
	 DA/w/+tvRT1b9HSZgAZiV4wnELqRj8BrQnVtw50vGXoknLdqHgsS0tedlVDjsruAzv
	 FgxkEjV4NfNcw2GYZUf+IVBxeFV7f0moKb2MlU+IP5jS46SH5z4muFv0haYSyoMsLf
	 QPQOqgcYeznUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96421D5A6C2
	for <ddprobe@lists.linux.dev>; Tue, 26 Nov 2024 02:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173258855360.29315.1536922043661671860.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ecc7a2bc47e30b16b3b919799bdcc9e06cb3a7f0c2d153a6c595686711cb1cdd
Date: Tue, 26 Nov 2024 02:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732588553
