Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D80BC2DCBF8
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 21:45:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775684733; cv=none; b=H66BILMxgvlHLm2cnHN1/vaJFiobaNXSEGNf5/ljb4p0qiNr7fFHxAWZUk7njvcR7rEMjtEb663DrBtJ0wNqZWXZcp9hvuCZhkNqnFTQf4ORE7bzvnNWHyHcUEu1tP/qnEPiEnvx0uMqdyltr9Xk69DEVDbqb25wXsW/OIAkKJE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775684733; c=relaxed/simple;
	bh=W8jOQ3Y5/RWcHF7JIYKNU/1ABpPC/uBwfPTdWt8rFTM=;
	h=To:Subject:From:Message-Id:Date; b=AYoxsO/DBRsf3mnt+46DQsRhwnKzMYhSWWsVUHA0fePo3wKVyV/RBWOedWNPRZPGYqroo9Uqp0kalaZ2uRIDxXoeUdqi4laA0eBTFKltNu7r7Q5wxTfkkiLxD670PxMGfAY3g6utIfG2GX9EsMUE6wjYsSiOtCyEmiclpsEQ9oY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G/W5WfXE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G/W5WfXE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA041C19421
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 21:45:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775684733;
	bh=W8jOQ3Y5/RWcHF7JIYKNU/1ABpPC/uBwfPTdWt8rFTM=;
	h=To:Subject:From:Date:From;
	b=G/W5WfXECfmvwjUstuWlUk5zn8gutgGVz3ap4ggDMeWaeyPmXrbjGhT55bk9Nr2Vd
	 9vTQq6hqysamgNlk6okd7kOiVvDw5W61YYLDtGRwEAH5FJxnxveUxvz6lBPalDWRzp
	 ciPeRk1e2+om5GNLe2WlWDx79VvuSseBJrorMkkgSxKlf1s/UAcpQEOb03S62Xypau
	 6bXSrKBrhz9czz1pxtpT88gNHvxQF9iuLsro+dUt+315kPA7F10JrcregLey/nrpV+
	 ZfXBYwZ2w+MIJ0BwMCUUlT5mtnNGHkrfvy/c/AwIxmBvm5lkyKWaGaCLc8NibAKD4j
	 wQIgu8Gv/jQsg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA08210FC443
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 21:45:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177568473368.29588.748016277419044290.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1c02af6830b759bfecb792afe4d39060d47cdb503c603f4890883893ba794cdc
Date: Wed, 08 Apr 2026 21:45:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775684733
