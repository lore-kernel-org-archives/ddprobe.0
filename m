Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 378FC20D4FC
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 14:08:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783865314; cv=none; b=bINwXy9NorBdeM0XedrqLYfmchOZu6HKuo86irfmyf/YC9nETIu4+uYiSWZuLKNScxcRfVyBvSoWVz/wh2Z1wseO4BkPWDjx9FWRr7cgleera4fzm3uuFhyh0uDf5MFU9IyuefgEvyzg5S+q4gwb0acZT/QljSTATueklMFBbXY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783865314; c=relaxed/simple;
	bh=WP9Ag8AH5aOem5ReHX/alkM5fi90AkLbfg91Fj4QlrM=;
	h=To:Subject:From:Message-Id:Date; b=R0XvlicNH8yUzcoGZkguJAvciDHQLXJbclac1PFyAYCMmuJ2cuXLKmNH1PYIeThtIkULibcM3Z32l02Lb9hW/AroIw+PEAVKTqI+7vYRGQsbbnc1wrAkCeGVuw7fhwPkTnN+48tbP6yPXSgK3k9S4isBHF9+VzaXKcaZBsN6lBg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jWaotEBW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jWaotEBW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CADB9C2BCB7
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 14:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783865313;
	bh=WP9Ag8AH5aOem5ReHX/alkM5fi90AkLbfg91Fj4QlrM=;
	h=To:Subject:From:Date:From;
	b=jWaotEBW1Eo9m56tmXjvNIpH03XKRNIVH8qbl8CdD2zf2u28XJxxL3/kl3lC5/LcY
	 qlpGy6ewuzDEmg9AKwmYn4f8K+z9gmCfA/wcEgr4WoMxW1o3RaW1mxW2LnEEzEoq2d
	 ljnvBkaIh9tojUYMolJxYKy37pPXjOqfc87AUpA1oH/bOPh7O0j9t/6fcSEP+0Ytp0
	 tZMcPI3cO2xQB15Wpbc8S8DG+kEbeGsBZSfx05VEKuBeS7tZVzEe6vpO+trNlAwicT
	 aUPD4rRLUclruUmQQeHBN77KNH/9xttJZX6gPooM2KBNYyWMnVs1ru7g80YRQDK8rE
	 bSRFzKNcbviJw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7FF7C43458
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 14:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178386531368.30589.15688648231950538661.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 09cf66ab27458f8ecba873c7d56df91680bad2c2eb7c3445f000fe856e23ce5f
Date: Sun, 12 Jul 2026 14:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783865313
