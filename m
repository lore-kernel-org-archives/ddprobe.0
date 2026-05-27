Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 713573859EF
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 03:42:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779853354; cv=none; b=A944vowdSXNPDGn9a9srsWAypEfofOlB1Fak7JGEC7EslP1EcEevZZbK3YxWxBtwpe45dnZTX+nFfZj1Wk3Pulp2zXXvAqoBnrXRbnKW4cx5qn+Nf7VonG9CheWUiha53sdnCsJO4wbyzXM39nO5kdQpVtkkXAQwivI+i9oAHcM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779853354; c=relaxed/simple;
	bh=QeY9q/oO4/KzmyTIUDwbk1kNPuYA4guhkwHeoGLnoas=;
	h=To:Subject:From:Message-Id:Date; b=rhibeK8RacvjGB69gE9pb+xdO0PfwpFWR3C7+Laap9f8B6Zhl3ULiy0f/kaSwu6fOjxuhJAig7eKHFtIqypvYNn0YVZv3gEa8sfqB72aBhERjfq9sEyWGKWylXCG1i2hGMq4czWbCamR/3kg0/km2u2hhLSwFV+bi23GSWFWOAk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nvhuS+yz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nvhuS+yz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C197EC2BCB3
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 03:42:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779853353;
	bh=QeY9q/oO4/KzmyTIUDwbk1kNPuYA4guhkwHeoGLnoas=;
	h=To:Subject:From:Date:From;
	b=nvhuS+yz9Gj57WOKdtdIbUKSsENsOao1/8mgHEyvzIWpCqwyQgTSMQydmOP7ed6rt
	 bSXJpRvbG5thlHp+f//7V4M8mzvtoBxZZEwVwtyi8nAlzGbM7/pw2V4pTNEjnK6rTs
	 iT+ByThQSMB0C5qQr0LAKOMWH9hYaAjM1lnqzQck1avTyfhyeJ4ApRe10bkNTPyVrJ
	 5H1D5YhZHYt6W31gOZLRCLsbtikQ74Lhzlz1CrOZ0oaGwiaXDZjCGHVqSGb0nByBDo
	 +8Gwja4h727dhDstdLwGe19AsgYPLa8kWbwbzRVIVQ/MpEQT7vEfm2eypP/Ra1voJc
	 U/icwu+7kgl/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A86A0CD5BC9
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 03:42:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177985335368.29666.9603165666220244839.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 17978383bf12db71cb0fbc7cd56849cc8f122ea177388b0bfd037e93100faf8f
Date: Wed, 27 May 2026 03:42:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779853353
