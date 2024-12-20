Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A1CE41C6A
	for <ddprobe@lists.linux.dev>; Fri, 20 Dec 2024 13:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734701754; cv=none; b=JB5Ds4TTXj0lXTqYvvpCRtJpIu1/kFPkgU8vjH3qI4ssyOGU3aThdoWwB0W8kEgCGQhZLxU64L/pcXXpMmWvc2+pSbu0imbb+KG5Fse7o5fGhVx5smd+SUPZrB0znO4sjK3cL/iVlywBb2UcZw2iPhzqsopagpGJFn+THKBA+GY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734701754; c=relaxed/simple;
	bh=mW8PFbuDEEOxOinBN9oQa1UHljvcTFpDQMhSfFOBulg=;
	h=To:Subject:From:Message-Id:Date; b=oiyuhc940aQebSssIpkz6eAgHuVU6FT2CbRA7aWXfY0wf7hEcspHWhG+bkdxIicJ5ZwxiAV3dBsr3yjmioAxyjQth+LLm6ANQbg7dPjf8lzfHUF121jkP1R/QNmJgXuwA+EMsqpB7SxDRxCkTrdAEwbyBCDnRCvvDHkG0eIVkn0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HP49JfLc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HP49JfLc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A52EDC4CECD
	for <ddprobe@lists.linux.dev>; Fri, 20 Dec 2024 13:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734701753;
	bh=mW8PFbuDEEOxOinBN9oQa1UHljvcTFpDQMhSfFOBulg=;
	h=To:Subject:From:Date:From;
	b=HP49JfLcRgMutssbqhbAe9nlJ8cWeD5Z1EwuEOTjKqTkgdNKWIvmw1gr9Abq9iD0z
	 zCvQyXqAG0yJm2nILJJzFXfrHXROKAl+KOZVwCbvga7udYkdyDYW9Lz8Z7loSb5H7r
	 8MrpXFhnp/ILG18SwnDbtPrSu7L8wiCSXHhOTNbkEXQUyiuqS68Mdylu8yn9/gC6S0
	 FsMg0KHvkdDEa+yGocuEroaKZhOI+PoEWwzbEdipV1sE3vH6uXEqFN7FulKobWLCap
	 mLBZFTzA1acD4ENS8OoBZ0gaiPMnJ831ldeG3ejHRMXgirMLWaQ3sFSe7f3JkHjX5j
	 9YesQr7fGtrZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91C90E77188
	for <ddprobe@lists.linux.dev>; Fri, 20 Dec 2024 13:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173470175358.31480.533614184383672990.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ae311c5eab61c6059787b6e25f6bc50e34519335e5b9b3ee3b33c94f67e431de
Date: Fri, 20 Dec 2024 13:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734701753
