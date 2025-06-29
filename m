Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25B4E36D
	for <ddprobe@lists.linux.dev>; Sun, 29 Jun 2025 23:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751241594; cv=none; b=SA3ak5UnD8marbpKsXHDMrsYa2Jb0+z0vzfikFZHXPrZHubM1W4Xqs370r1RwYNUCrAUqn1NcB3veuO+PN9goQgspPCmNzqXKLX2NnHuEsLFvhBIF8SVO63nafqquuzbazbPJNJcVjaRQf2dp4iERZ3nPHpLrA6YUrQeehcFTMc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751241594; c=relaxed/simple;
	bh=uTwbzaEknEyyoMMPYxRuO1zxD+RVIrmQyPzJ+Yq9m/U=;
	h=To:Subject:From:Message-Id:Date; b=eDMEjlzu8Syk3KlvLkJsbUzP2C0bjgA3xWBiulDDPQOafAT+CSb/Z61dO/DZmSFcgltc8JD2GvML159o9BlDKijGHGmvFwOA408+egmzB7njmNhOMNJ4HfpSYyKU94fjl4WngX0Yk4QETvfASj1XTihvm5dbV6Sx9sC5aoE276g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sbsUeRes; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sbsUeRes"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7B81C4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 29 Jun 2025 23:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751241593;
	bh=uTwbzaEknEyyoMMPYxRuO1zxD+RVIrmQyPzJ+Yq9m/U=;
	h=To:Subject:From:Date:From;
	b=sbsUeRes/accmxy3EG2eVTnEByY+eH1NTEk6AYkfFS/wJERzD03Q7HOtfKKKCt251
	 1xQqgviqJOGHL8W9fCTk+yUFfk3fqE1LDEAIVTZ/xNuL1Jmr+5O4xNVv7FiF4YWdQ4
	 f2S23Yrs+NgiQyVDuHs1FfEV9ogFfiPACGjd5X9ETU3HrN1L2Ti58it664SeVqEh9l
	 z2BTwLDxg4M2a6YGIDRaYMOuFE/suDu/G3jPHnKmvnDwE2A/0gGDSOmY/D+yOuyyAf
	 A9UQba80ndCnNMAXO0XPj5M0h3Azn1lqKw2qofmqkBJlI6PPGerRSUjmmO2Y1DQgtd
	 vjMH7nlYtXPEw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94794C7EE39
	for <ddprobe@lists.linux.dev>; Sun, 29 Jun 2025 23:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175124159357.10118.6645764704336178243.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1ab7e120c75bb13b4ed5565c2280e05cb9f94c0c791cbfcae27d31cedb164a3a
Date: Sun, 29 Jun 2025 23:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751241593
