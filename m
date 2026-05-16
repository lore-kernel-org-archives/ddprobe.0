Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25FC95695
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 00:20:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778890834; cv=none; b=twN/fBSiVvgjj9HN1ToD04JTfdbHuRFrGPL+6nOV5sxhC7zcaMvRgxdk5d+X0fYdV0c+u8VqT/htffnmg5maZtQGsCsJim4DIGckjUeCem+9FkmaaaOusSh/9Py1ICg17ZiESwloSv090d4fGjnwkUtzoBECUSlvJ1ZLcPyrCP4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778890834; c=relaxed/simple;
	bh=G9artKJkZRwzCTBLr5GdlaLBbsYLc2BNP11ud38KsaU=;
	h=To:Subject:From:Message-Id:Date; b=ZQZDXcA6suEE4v1sBbc5uWn/YkS738AUPO5zojNum1daiOD2LPLbgyYMAZyGK5QwFVWSN4g6Q8887W8veAiJI+fznGFiY30Kv58pC9CW3B8aId1M904ul3Aq/kTmScRd92p3jhcuMU3ORBhLeCOdKqmz1MQGWgBj8TB4BvYYSLg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=j22go1y/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="j22go1y/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C601CC2BCB0
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 00:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778890833;
	bh=G9artKJkZRwzCTBLr5GdlaLBbsYLc2BNP11ud38KsaU=;
	h=To:Subject:From:Date:From;
	b=j22go1y/gur3B0mQA20BPCtqmnnAT3tTIaWOnVTO5kDHp5vLV9x3LZ3Mrq8NeT4w/
	 UPOkk0DJsocEYdwEr1aVi1piXAAZNsRjnspxmdUgzwjB62eujSrwfeiGj+7Z0xBiXs
	 rh8lVDtt+cQcQ6AHxGimSuvbCh1Y9Hq+3o3xxSPez34zHdzJWL4Ppvfj4wAir19qtC
	 nVKw9RrVrtnMaKvSBo5uu52apjK2g/MGSXqAdNSrakJoZIY2GNG4LbeYrsWJwS7Voe
	 lnd7n0Ed3xxWyfX5TwWVZGqsJlA92Mnsd5mFa2TUkcC3bYePcGW8bSsR9iCwRuS27T
	 A1uoy2zgrsBtw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B33C5CD4851
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 00:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177889083369.19221.9335965290064389239.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 59e98ce4267db1e0603220dd909f15b9ae045cfe0b68c010972b2b3fcccc6f98
Date: Sat, 16 May 2026 00:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778890833
