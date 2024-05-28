Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A17A4176FB3
	for <ddprobe@lists.linux.dev>; Tue, 28 May 2024 19:44:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716925463; cv=none; b=fAlAk/xN2/3TXzrhsBOWOhCaMqhYu7K1zcpaubIeyIgPLgcuyqAwE7SkI96aK7GikFpYw/8y3cFFvh4bE3ckjuopYS3S8L1laY9Eth9ZVonD6VUHq88aHSr5QqF3JcvQGCSe+EmaRLutG4db4RnUNNCXgUsMkBwoTOVbTg3wSVM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716925463; c=relaxed/simple;
	bh=4WcUeYos6fA264lS81vUcvwwUn12WIiQmzkOw/JbvZk=;
	h=To:Subject:From:Message-Id:Date; b=GjuEZWqGIMvliUnMPVMuv69bSLMexrHF4UVQQeMPLGwvzNsNtWEHKxjxOTd+eAcuI5DpGBOILR3CX6JgBgG/So54VNHpQyl0BbXreUghafPEL2UaFwaVqY0ONwp3k5IAy5yEVgWEPe7eZVF/j/ri+VwEDls/IWwqSBF9hw9fTSQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GPRNe0mv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GPRNe0mv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 2AA75C3277B
	for <ddprobe@lists.linux.dev>; Tue, 28 May 2024 19:44:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716925463;
	bh=4WcUeYos6fA264lS81vUcvwwUn12WIiQmzkOw/JbvZk=;
	h=To:Subject:From:Date:From;
	b=GPRNe0mvJ0eAuShcOhlaC9iR2L9wY/efsUU6Gi19309xIAZHgRWRI06Fgxvjn57lI
	 eOLOPWSYAPFTPJMRUe+DLE1Q3MHNc8MbIkQ64deo1mHTg7gBUHf0SU/R+UlfH0F9WW
	 qupT0z+YxnUhq3C2pg82E/HV0xlFZ8CCZghgFgATrRN4TmdG+ENilyl6UBL05ZfNkD
	 lkbDnUbXuMJCwhYgEVLhfnBbYJC0yRVfsLxhwDi8Bf3hUuCjvnK0MRcSTEVTYpmUNP
	 qLVbRrqfYM0lcFJtDfFpEsDcLFw1b0Ny4FLv1KNYW0JQOxgyuJBqpRChYS3jINxsu5
	 V0HKIrXx494HQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D66B2C25B78
	for <ddprobe@lists.linux.dev>; Tue, 28 May 2024 19:44:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171692546285.29647.15688495098032612162.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6992ef260679b5ac1b0a1b18d6fc83a79cb04ecc5062947923f1f8f4fa86e812
Date: Tue, 28 May 2024 19:44:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716925462
