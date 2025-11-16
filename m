Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5403D24676A
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 23:21:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763335314; cv=none; b=Zb1v4dEDWn4lcNKMU0+h25QMYzSt9OR4f4l3pHSrFNF4WvhGPGSLuz0Jy2sJrFYcUulvD+nyiOXHdbVMGu77nvXVS7e3+W+NErSFzc2gFXJw6fiBKw8YvouRR3Eccu8rJfciSn1j5cIBAUs81zHPn/dW6/G3V0UTHrd33Cyiq+U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763335314; c=relaxed/simple;
	bh=N2rKs+OSkrRHP6LNB8soKfndcCHyiOFmaTWw3jaYShA=;
	h=To:Subject:From:Message-Id:Date; b=NxAI9jkYaLuzLSgsVS8lpjU5mmMN8cYlkZGharXRWKLT1kPpp1tlyUQcm1I2MVQEQPwkIEzWUkbdNimYfRc93DcgxmuhBeK1oANInKYH0OHvitBUN+c8cKAOo48MTrF0s+3VhvzgzHhiCoCyvznL4p7X4pbNxPFgb+csnAS9HUQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bkY0pZ3K; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bkY0pZ3K"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC3E2C19423
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 23:21:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763335313;
	bh=N2rKs+OSkrRHP6LNB8soKfndcCHyiOFmaTWw3jaYShA=;
	h=To:Subject:From:Date:From;
	b=bkY0pZ3KSE1UvRFJR8sqkNVL25e48ixfmjik69FvvDibpimutZIIDQSjp/iDglvRo
	 xnFldNOKuyHOgT6E7tqzCWj6r6RCeUgJ9H7PX4K1m7z4KTaLxMQ3b5keXwdgEZIg6c
	 VFMXyGTWpc82sPa5XAFhtNRIxXR6WFdUstPiOTkNCh9ZsSk+pFV2nZUzdz2gUasVyf
	 1hjUG7TuMbX7A+CDgSPm+qnwIT494NET9JHE1nvT1yV0SVkeaTrrMrc8hmGaPCAvFW
	 AO06a9koFQ1n4SIYD8HTm7nKjOmTyoK3FbilET1/zwHb/5LvguabTzT3S/EaMXYWds
	 NwnZdMu5dJ0hA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BD3CCCD19A
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 23:21:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176333531361.18963.10890597039753241597.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3c270ca5610e7c1afb3a92fe9bee7cee80ceb07b9d271c48eadf7e7702bcdf1f
Date: Sun, 16 Nov 2025 23:21:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763335313
