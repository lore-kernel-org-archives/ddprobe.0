Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58326208A7
	for <ddprobe@lists.linux.dev>; Fri, 21 Mar 2025 05:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742536194; cv=none; b=TjQclVJNsKCG8y+abLuOfaWe7VU3gyLdTHhbHy3H9b5LbgTsWJSAeeTQjI9FCntYVsp+vojrAAS+3s8kJJNMPuoZdqVAEO7amyWabLpKXaasaeU2iMab0zsIHOPnD9EuILwueW9Cctrolyr87HNF3YvzBDH/wtkAAYM7PPhrf9k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742536194; c=relaxed/simple;
	bh=r6Sv7TMWD/gLEUyEOYyCNd+EAKwyKbvp7s2gFyZUNCM=;
	h=To:Subject:From:Message-Id:Date; b=O3OwWwSS0qC5ZJ5AsXosh+j+Bz6LD/hSUiRQHAmFC7kQbigi8WzFss7Das8TVgB9tiwakRvsnZSRJ371mUgYOWYUgWGywAqbqlMCwb7WeqaOMXB3eiMwE9P3+IaKK7Iz2zfMbAXzAOtX0yJaitPR/kcbLBS3pEj4KsT9B6w5AOE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fi5fKOnz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fi5fKOnz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C854BC4CEE8
	for <ddprobe@lists.linux.dev>; Fri, 21 Mar 2025 05:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742536193;
	bh=r6Sv7TMWD/gLEUyEOYyCNd+EAKwyKbvp7s2gFyZUNCM=;
	h=To:Subject:From:Date:From;
	b=fi5fKOnzhVanv+DrJm77BSFao7w17PLx56B8NDYCIBIaPtippgPxKh8PmTLiXfrne
	 DbCa5Eoi/BOvkTiyKjDki7syZzSWRXbJUhIO/2LC0Cforq0tFsOvIzbZAoTOdbX165
	 wFYcPLZX6c0VVJJyP/V9jAu2WpC3j0STSuPujzt7s1Qo2UiPKt9oCi70GVobVFtI0A
	 /NwKwPHlhHPuhtnMDFOqISfyh4bh9xnDLsuBQcHGYBjPpITmWGy+mncFTlx/y0tqSK
	 iQTiZhTHfjPhXibBzABq2cTfI+kecss8O90x9gYke6D6vJnGC9Lr3N7eYVEaW9Fdvk
	 v7BrZwnRmIUVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1ADAC35FF3
	for <ddprobe@lists.linux.dev>; Fri, 21 Mar 2025 05:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174253619369.27036.9592751895746593454.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6bb065cc30d25987fbdadf925c59e2afecb63b20af63e9713400fb9270f1eee5
Date: Fri, 21 Mar 2025 05:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742536193
