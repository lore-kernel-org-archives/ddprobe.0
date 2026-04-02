Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F8A4230BDB
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 14:45:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775141134; cv=none; b=OWfuflrCPT6pqoRMUmy6I7CfxldXo8dxt4/7qC+am4+bsXG6pA9vUSpmUXKFQLhZQeHrzhaA38vLco2VkELkZfvRAEneG86oMi3jjLMSVM3nwDPUsxDwLxRxd68F41EpdpMcWWs4YMSoU/iGx76sKucO0YXDRObzOsJjMtNoN1s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775141134; c=relaxed/simple;
	bh=Y0Jb16HDDEJVfcgz5wS9yqb+FAfVdGWN60edsdi3x/4=;
	h=To:Subject:From:Message-Id:Date; b=KALMAfkFj3rP/kF+kafBb0ChZcnk4JJG6G2yQxeC+OHseDFXEhGNM88nJsh7x4uZORq/T/9IwfyuSnAhpJ1VGMY45mx+OwUmHzQVxMZLDH+COsY4k1bDSXaa2EoPeNuP370hehOib4a13LirOv1ZDna3PIKeUlNwHAQ5cvhhm2E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RTXbsgiH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RTXbsgiH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9C4BC19423
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 14:45:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775141133;
	bh=Y0Jb16HDDEJVfcgz5wS9yqb+FAfVdGWN60edsdi3x/4=;
	h=To:Subject:From:Date:From;
	b=RTXbsgiHTTH0mWfqpin5KYkRtQbl2jzF52UbrGNoVB7SsKCOTL0LcZyCREfJa0q8v
	 44d4k9O/oeIZ3fHEnsXpFl3y1TUh77nfTUxrJlPenuasqe9pHnp867pnreEfbr/W9N
	 somcuRaFj1WHGoapU1oawGitSi/eCDGzCx4vySj3nQ7AHFhLbhQZc16/Pbsm/BkulB
	 6iE1LCRfBaTfi3vUKVL/PsXs32Cqml2743s1VlwNOPf3h2jJYlVwhKSF9a0T7ZAjKJ
	 u6TH/YoKU1EiUXZ8OWvT0N98Fk64cW/DBK2ZL+BzEIBvwxRyozSMiOrFcyEBuC1M5b
	 S1ajZuGBhhl7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B691BD3943B
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 14:45:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177514113370.4686.15690799330755149129.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a3fd4ee81c93538502801938b1e0acb2459adbd6bd6d263da416404d53c25858
Date: Thu, 02 Apr 2026 14:45:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775141133
