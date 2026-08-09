Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 597592E401
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 21:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786311634; cv=none; b=t6dmflLFbNJwqu1Sm+apqrp3xACV61EPhwP7i+5VL99a2bF1r8iun6zto1iCcTDJNLaIEsTdnhkfrvC41vWP2CCkPYgcrvDGoGVc30ZOHFBZoSM/3iJ1znNqWff6y7SSbSklYWZJi65I9KLzMTcm/X8o2LedCRfnuGSEBa4q7Dw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786311634; c=relaxed/simple;
	bh=gei71nfp7SJc2JzGmKNq/NqDe56YrMvwWnpZUQgo/a8=;
	h=To:Subject:From:Message-Id:Date; b=PN0DzqotuVDF8JhorsBaMNEE6Dd+FB1W6+a/oiw8xD9mL2ehDudRafERGGb/nY00m3E18bquGrb1Dgij3UkIMTxsFs9kTHgzzYXNhHQ9P8GRTRFjFN50NLGeFPn2ixB5rkmjljyHU29ILRCATQpdl8gT5dlvMvJzi53rgYVpVKc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hmwxo4ea; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hmwxo4ea"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6972C2BCB9
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 21:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786311633;
	bh=gei71nfp7SJc2JzGmKNq/NqDe56YrMvwWnpZUQgo/a8=;
	h=To:Subject:From:Date:From;
	b=hmwxo4eauJRkdZ5WfPsyVAjq6ec/VVQ0O+kyjZTtu7ig6brNr7I+NLcimfYPfAPue
	 h5tRZT6Fcy6zZw2w77r5iz3LHtKNb93tnS4JEwO1NP3sIipvspJXVt2ep3wan2MDBI
	 c96EuQlztyM6NqJO+rmCF47zfij1sspjPT81BDL7pNahulSMoGeoSg4xNvtQNSYsUM
	 R4Cvj7QW1nLIOjmSnBCZxe8Qi2lwODedDgIcDkZLkShd0dV93NOIBvmmzzgLg4L7tu
	 COdil8PGivnml4oenHxe27Z31tjq21yjBoUj76WtBjrffFDhRdWEq9Oi5dTEjIVUid
	 z1EsUeUCXhTnw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEEE5C5AD55
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 21:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178631163369.16245.11943954158030909295.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 36ea73d08e77eb36eafc6fc73efa798ca3133b63bbde5530be2e246376944588
Date: Sun, 09 Aug 2026 21:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786311633
