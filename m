Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6CA9F44C86
	for <ddprobe@lists.linux.dev>; Sun, 23 Jun 2024 19:32:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719171143; cv=none; b=EVURYZYR0nSkQiqfvVI9wDjQaZHJp7kBl+L1lfQsMnzZMMzJov5Cbe/tqJEBSaykfpD8qCA/dzi2SAarwFeUMtsM8iNJGMQ2qjhBH7dohu3Tfhn1TGD7v9xzyOOh7V5Hp3I9NQO5rkFq8+8mUbrZl0b8uFFMmdIzymatnh5Wi6I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719171143; c=relaxed/simple;
	bh=oNAMFotpFld8YQSMm0iM+GGND4tbFtSm0ZebkCZMArk=;
	h=To:Subject:From:Message-Id:Date; b=kqhrpBR07sJn+GphbDdDY4JhmAoZqoysaWRtUIH36MEaFiSeblC3N0vpduxwDhsdo+/J6QuhU1gHYkEuzhJJ0yM7Ty5xbTfg9LPXm9nqikxBj5mUixSiWNAF56GarTCi8TQG032VhYwpIU6AerRmslucam4gwF1OIf2srKjb5y4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ase6lZ+y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ase6lZ+y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DCE2CC2BD10
	for <ddprobe@lists.linux.dev>; Sun, 23 Jun 2024 19:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719171142;
	bh=oNAMFotpFld8YQSMm0iM+GGND4tbFtSm0ZebkCZMArk=;
	h=To:Subject:From:Date:From;
	b=ase6lZ+yxcZzruvqqPub+gPZBt6G+IDamvmExroW2MfsFFUYrVGY5yZwNg+UWctbi
	 oSzR2JuG1p4cYUZMmsWGPqdYTZGEYU+vyW8wtjIW5mBKAU+ocydfKeNNuFHyV+xC1l
	 qTY4y7k65XXgfrqS9k+/HwQcIRE86Na662ZSmCO4gOCBdumO1bsCMNK0Yx0pv6wTL+
	 kxgir+XvlhMISeJFEYdRuXUYBX9f4twD+nQlbHmqhOcTv2m2HX6HuxKJWyYkZMGnVj
	 a6coG9A+EQiisutbemVllBMz7RxYlpe8GTGDE3XlhIo3bOhTcEOzJMABnAP3LWFpgA
	 Tcs9gTnE4TLgw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3DDEC27C4F
	for <ddprobe@lists.linux.dev>; Sun, 23 Jun 2024 19:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171917114277.22145.263626716067608823.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0db8db56ecc5ecf0a150ca88e8494b5e7a0da05cba2d85c02dc1e50ca9fb43b0
Date: Sun, 23 Jun 2024 19:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719171142
