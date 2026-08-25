Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30E5D25CC79
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 07:00:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787641234; cv=none; b=Z1A+u0M7F3pQ+OZDuEBwtUnf5cmR789F92e3jxD/C123fumhVwtiKUmZokj3rFm4EgMYkopGmlcidchxWTmJoVHzPo2puP+BZqAQaRMrdqYZiN3iwaKjl1O68LV3Nn8mP8aOHiWSv2z1qgaWWWAFNF0IOus5t6/AoFWmlb0ODIQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787641234; c=relaxed/simple;
	bh=oDpD5WvRRBk9zpEbcEhNwhASeUcKherO7DVGvlkobSE=;
	h=To:Subject:From:Message-Id:Date; b=t/TCmHDHW9+qUZa61R0cjE8dZU2XE1lk7u5hxICkZtCWY+trZW76Z9dLe9veUyvV15HYcLu/I/lYaigvjQiZ3XOYdWF3B02z4tu7NfUDBBCf5P4yJNRAI/YRYq+7DCB8IFMuBRirNnua6rI9Igz8b3Pr1U9/ZZr88+lNwPpAbFk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IPdTrC8p; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IPdTrC8p"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BEA8DC2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 07:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787641233;
	bh=oDpD5WvRRBk9zpEbcEhNwhASeUcKherO7DVGvlkobSE=;
	h=To:Subject:From:Date:From;
	b=IPdTrC8psE+zQlbvBep2qSplIT2atxvKSjuNh8fcp91EunQ0rx2/ejneze1I2n6q3
	 QnS9E66LGcpE6iIngbf/6HbKKokoDgEAYgegO2Uf8SQbtr1crUAN/d44ec368m8GXI
	 T231cMKxeIKVncwF8ToB+bYGYaAbqCY+V8C1Mg2/45+P1+U0DO5pKORbeKg9cqy/dL
	 YEpb7v5tZP6sjvI23ksCoE6ZkEr4bCS8TwgDZbRwqLKqZ/uuqHTcAe1FBZME0fhErm
	 7UWdnVYgd35Rwub+rfuPpTaB9/jA6Cf8zKiRia/i+L1gqBflJ+KLLupd/fpdMZmh5z
	 HEtvTKbyQFu6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB745C5DF94
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 07:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178764123369.19664.11270674043700876412.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4ddc38427c1c1cce70b990ca9407fa34c83a35eb8fddcc3a8334cb050696e18f
Date: Tue, 25 Aug 2026 07:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787641233
