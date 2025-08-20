Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2220A2DC32D
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 21:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755725994; cv=none; b=M9XwL03zvaquQVs//KjLYK3bLNVRgRytlNPm3R0nuEwa9CoPRsvXQ1ibKgGEdVHx/CH47zzgqKt+YrDO52GKz6WJPW9gsTT7ZQJToKgvcda5pSR8Gbo2WfWSVtvsYzvRzFDtI55L6V7Hj/PUV6LMoZjmrkAOS5osqwb5OUmoGJI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755725994; c=relaxed/simple;
	bh=X8KoVsEEjqFrk5+yw5sq8iyHcN4H4ak9Tf7X1FR0+wE=;
	h=To:Subject:From:Message-Id:Date; b=PM1dbdilgRb7jy3Eu4gqsTeC7AW++HbqSStZqZM9V3ZwyGZkaSNVgAvxACljHSJmOsoWJNAP0RPU2qVm41TzJtknvO6gOD9S3f1RwCv2nVFcqwpRdl4JEhgkEssMG3DCezgT1O7GZuxIMIkpshmBuwzF3deMmzfNkItYpuu5MkM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PAQTx4Kb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PAQTx4Kb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A449AC4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 21:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755725993;
	bh=X8KoVsEEjqFrk5+yw5sq8iyHcN4H4ak9Tf7X1FR0+wE=;
	h=To:Subject:From:Date:From;
	b=PAQTx4Kbdtfrs5AJCyL+fbTKKDertva3gPGDg7R/OQnDDYg/6Nq9/zcDyKegQdTVc
	 z0UqLrJHRz5y/ivanaCPXbdsK2WErONz3aK6vE9qqTr4rpdLtF7KNtSrf5MLzDvnDe
	 s6I3s8Mlp9PlR/PvtwUAQeNvjrsv/N2XOxwhpE0oq/aPNX4ovCO2gUc3k605FFtgUg
	 lf1swU92bQDrQdL8pfjfO66foixtu+ttNLbCfYuyCPbNnx1v/sL1NrxP+Gx6xEac9g
	 zPrdrPIL+Qt/cJYmyV7bmfb6cdSK6VIL6uEp21/UsLIbQy73qaOgh+j55iXX5JpcKN
	 QAPtpIW+Zt6sg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91BECCA0EDC
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 21:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175572599357.14951.12415657412817301095.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ce4261792f7b264c8d9d34272332d8d649e68629a88a5dc57c45b4e005716393
Date: Wed, 20 Aug 2025 21:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755725993
