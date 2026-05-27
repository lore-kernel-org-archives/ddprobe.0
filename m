Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 222CB211466
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 17:52:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779904354; cv=none; b=imvORqG5Lk6PH6FHtbG5BTnFrFBY5GEhHHW4dw4XP4WAAU7ijsEuQuH62ScNTUfeySHJj3Ep91hZpTWdZaYXEZJBl2vc8yWy1CSWscdjXn2/sz/lA9AyJ1Og5yO+ukik1q8XOTvTfXnmxDjowX6lGlU0zDFiqPcfp1JoC4s2LCY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779904354; c=relaxed/simple;
	bh=Xa8Xuy6SgkgQRDnA3meCTzqhGta0EVh1En4Yu6hF6yI=;
	h=To:Subject:From:Message-Id:Date; b=sp3K5mPJXEyzXRJDU/OC2Psy7wDwRX1AytiUz4R0IgG2j6/bJgmETzzM9Mud5db4DKZgsU4L799ifTjKPIxFsOoqQ2VPdNraEgfq1bhvF7hTZsSwENfMp6cEMWiqSen6CGfJzlpxj7SdPdWuOcnN7KoacbkMK248rOPkwW3m7Xo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oKCPGUnP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oKCPGUnP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2F45C19425
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 17:52:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779904353;
	bh=Xa8Xuy6SgkgQRDnA3meCTzqhGta0EVh1En4Yu6hF6yI=;
	h=To:Subject:From:Date:From;
	b=oKCPGUnPLQA4bi73j6JGtMlXl3xhyHQuNbrpeOwD81UjuiG+zT6171qjsE0hl/ncs
	 6o+0oxltUhuvdq4m4LMwgJ7NyRDAOPwmmfO7b118V5YeXPwM+59RGfV91/ahkCaDOU
	 2IyGrNul0dBRjOetcLPPX5SSxoU/ho5wagM4eGGE9yOs3nv4e7PZxh5VHQO4SBwfPV
	 fBzjBS9hEs6YAb+/eu+7X9qem/v4Mpk9ZLvyXPgL4Nd9hlWN5SVRx5GQyMakHmVNva
	 i8Y8KILqLV2z0CJNu2ddO9UhLZoqXu9vdoqKSjSQED4j8/UeoYBWvANJYw3cLMDt80
	 sWyQJUfc9QSUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A96A7CD4F54
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 17:52:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177990435368.31065.9983015797716395508.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7f666d1bb2f6e60db9e03311dd85540bda990908da906cbba54e609ee2672a6b
Date: Wed, 27 May 2026 17:52:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779904353
