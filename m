Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6313C36AEC
	for <ddprobe@lists.linux.dev>; Wed, 17 Apr 2024 20:09:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713384563; cv=none; b=sZUvZrDr4ZuHxnRto8yPFV6burxqNbUDMEkzI2HrDw4y9PDdLBIxf1s6XZsCIpm0glnAOHne3WZ6Z2yaQdjwoxfwefbbXfLz/8P5XBObpF+klZ2QW2Ud2dzlEJlYlZAOxYdxLARWKUAmx/CMOxbQh0gAf0Evq1Bu9NNXAJ7fYqU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713384563; c=relaxed/simple;
	bh=7JQLr8jPDg2alM3P6gnhrr7STh2qX2ZeEsSgj/hJ3wg=;
	h=To:Subject:From:Message-Id:Date; b=cv2qlDP9UtZ0w2g8mK+y5djLoqTWy64dwZaKUBYShNInRweClS/ZyzmiQ/0HqqcDV3yFatwIeMhLaTHbEZvQ++mdAxHYaK1s6J4JRE3ZYXYbcIj7uQuj7A7d6s86QmtSaL6s7tbX1ENEgnqTdS9/WusZHqbSXsd+L6xnvYmtXaw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W7nvCC7M; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W7nvCC7M"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6C08C072AA
	for <ddprobe@lists.linux.dev>; Wed, 17 Apr 2024 20:09:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713384562;
	bh=7JQLr8jPDg2alM3P6gnhrr7STh2qX2ZeEsSgj/hJ3wg=;
	h=To:Subject:From:Date:From;
	b=W7nvCC7MARAuB5IhhQPemMyVRbJ83OMFG+91avEud1xC9KoBKqKNsdJm4rtXm9oid
	 6hM1iT+SsNik80g5aZKVrthWrQuPSrdT9Ijt+mLjD26ep3BbwkGsVQBtF9a/RL6cR1
	 tjy+jUzlnZuMhyhrIKzebhhPcj8JRuMDmCTTOmrb+JfXcJ7xhg3KyI0F+PmPrilfFf
	 K7rCuL4r15KlcoTnch1p6E1J49e40BFDrojnjjnmTzHXXBHfnVgJJhHPtCM7RTNwun
	 SRJiEYDSqgDt3h8kKiuOL32PH0lUzjcWeVfD6Lw5XZ2LqSJ8bis9P2TQ/hfYXDN2rV
	 udfcEt/ooXgBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C25BDC4345F
	for <ddprobe@lists.linux.dev>; Wed, 17 Apr 2024 20:09:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171338456278.8436.9782742888885469727.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7981a7b6f7b6396cc7d1ec5b92cc81a264345c8bf785c2f4a81f126708a70974
Date: Wed, 17 Apr 2024 20:09:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713384562
