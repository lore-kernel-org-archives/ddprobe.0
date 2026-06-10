Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 178AB3DB310
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 10:35:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781087734; cv=none; b=JAMUAcV2gjzcsBg5MAxVLp3+NvjIpVlEaW+W4CF7VzsC3ZJM7quWBRkalkTdjiL3ZUu2fIdlz9C42SD00Tjp85K3ujhBsRFyKyMU+BBVYCI09Swb4CH/UBScI6eN949kxji2kz4otN8tfjTRuR2LSNL6E3AI3DVlTBwn/AdQ3Gs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781087734; c=relaxed/simple;
	bh=RNRVJFFHrjVk7GYHVkG81IawSoIcxn8lV+9RU9Ee2mo=;
	h=To:Subject:From:Message-Id:Date; b=d1mP99B9+pCqol/9BetD9Zr5NA/Jc2adH3jYNq46wwb8rh1PN2x3iJJWcSww4cqpKcGl40v1jc2KSFKOcpdohICITTfb+rUlOl6kEJVapI2inBEjJmKqbOwsEjc0BwFsKa/80xu/Dd/gZ9mfgou1+Y+5/VFPPu7WseU4CgXyN5s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L5uuAyOU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L5uuAyOU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B45CDC2BCB9
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 10:35:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781087733;
	bh=RNRVJFFHrjVk7GYHVkG81IawSoIcxn8lV+9RU9Ee2mo=;
	h=To:Subject:From:Date:From;
	b=L5uuAyOUWw4ck8TkMlU1WhmZJvSWThuNFToBY3HGGq0EB+B8+2u4/FnXOrIIDR+Gu
	 6QUH5G0mlTfH3nxhZ4PD9bCnpUA8v2crjHGl/0tC5OYd62iNNmtn+LtR84+1UfyzKh
	 lgYljczGm/8H29hPJlWNDhaM9/vwey5VzPZCrLL9lxWZVRNWMg4E/lqcFz+lJXwmkb
	 7+hI8sIRUnld+3+8co+J4/8dFLLsOpkN8mM2ynAbjK41ezEoIK3DVRMnFZocavDvR+
	 7m8W8Y5yzAdU95TiYOfiy76PxbyR3N4AJfLajD/bUTVgnuh2y5vEUMqYMGEEDTiYQZ
	 2c9dyCGzgcwug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8338CD8CB9
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 10:35:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178108773368.17445.11939293207466927737.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a8a4f868bbf6a6cb66e67900a1a46673fb22d7a897c2688f1e5548fa513dcf9a
Date: Wed, 10 Jun 2026 10:35:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781087733
