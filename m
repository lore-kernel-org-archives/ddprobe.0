Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D6B5C382
	for <ddprobe@lists.linux.dev>; Sun,  4 May 2025 07:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746344993; cv=none; b=n83yDJMhypPSML7zYardmoiNOGSvQeB6H1q/UezWcJMozaF3a0f1aJTiECqhWJMAwftFmSRGBMga/a31a+FvEERRH6s0Ol1IHRzkNq+YyPElH7SUprNtCgoKx+9S1IMdMpRFx0g59mNXsnjoD/XyM01fu3w+wBjdN1ecUaZwElo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746344993; c=relaxed/simple;
	bh=2rrEupdrLM7bu/lRHSbYOwel1V184Lq3UIPDeDUJtYc=;
	h=To:Subject:From:Message-Id:Date; b=pXSi8BLUGAPhqPqJdkupe0PR8XN0fScb+z4+/83ier4CZS1Ev4KNx85ehG4eZqu2UJyUU10+n+sGJVbWHS3tdnRI6AEYh5otLqB4VRdCQz9iClsSDBT+jVpU56ZB5gGu4nlX5D6i5qpr8blf6ADcgQee68kUzKv5xwGu8QSZrHw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jmSQMWEj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jmSQMWEj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A57CFC4CEE7
	for <ddprobe@lists.linux.dev>; Sun,  4 May 2025 07:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746344993;
	bh=2rrEupdrLM7bu/lRHSbYOwel1V184Lq3UIPDeDUJtYc=;
	h=To:Subject:From:Date:From;
	b=jmSQMWEjTWqpIQDB2n1cZ6m9US7jFb5pncCFGkwzCB04oD9iYgE9DftINWAYs/kQH
	 vs+UlRV6fvp4bJWh+CDoSqX7Zg6jUD5BgmRbomJmX6ZG0levOwlfuEjOV7GOwbBY6Q
	 eo4feisSNjPKca1apO6YudhkQFZZljjekZtaVGpyBrTIEhtJyFtVSGQ4YV5AW/kldD
	 LH9Dg8kRn/HxHHC6htBbcMekpRbJV7CN+ag+4vbj5MQImy3CmTOmHozNhDIeZRuSbA
	 mHyB1z4f0qX7C0GzbMMgY9W0nuSsN5IzrJtrha7BDFoxw+RH2O6fkXOqW4BZYK1Uir
	 84ujtiafE42Pg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9377EC369DC
	for <ddprobe@lists.linux.dev>; Sun,  4 May 2025 07:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174634499357.22984.6463607466589986909.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 98e14a19ac4765623a1615943d5af04c82409e4df53977a67fef439b10d9fee3
Date: Sun, 04 May 2025 07:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746344993
