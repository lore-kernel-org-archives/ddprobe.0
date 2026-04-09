Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C7DD39022F
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 23:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775777254; cv=none; b=DMPnWpVFNzeYImYN9qI089csrsZ1pWwzdU6Ti23wpncCeIU7KOfbUqGEK/FUZjvL+fcDqzK+9Khl2zyWjOtsd0JyEYoEI/25kNO/UvHLXpGDXhN+UfZd94NX3b3QgSGvKv+uLKgr3XyrG07IldL9W+eEjgMxOO/TsGmQ/H61/og=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775777254; c=relaxed/simple;
	bh=BRb6WQJhugp0AijEVh5pJnUIMJ7RPqpqs8ortwO8M2U=;
	h=To:Subject:From:Message-Id:Date; b=c2H+AOppahfvmbQfxMo78ujP4L+6OHtFQk5ncifOFjYsA5bUXFwXNATKABhC4/q8ZTWWfrhM03n6ldCzxpXSyY4imHevaok2+8IrAN2novKNTMS86p42cnzUdUtco+kHn8aCzg1V6PJdV8q7gK9nx0UHJikzUNolGduUo+01smQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kzTn8Lu3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kzTn8Lu3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BAFE4C4CEF7
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 23:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775777253;
	bh=BRb6WQJhugp0AijEVh5pJnUIMJ7RPqpqs8ortwO8M2U=;
	h=To:Subject:From:Date:From;
	b=kzTn8Lu3Syyjbo2542cSFQd1TtIzUSl2bwUMCubkM7cD7loU/czyhC1f9XyI8/7um
	 4s9jsFe2Mggs6BR92qlQxvGfdMHlbSQRyHLrtUx302gqBFMJRgMfMGijfVu9LsYuxu
	 k0m7jxESfi6/UzDV8Swxc8e9pIXEOdC8bbIMP7xDQe3cYY1jX5vF+5NgDGZyDPOoag
	 QXm1qRqdTJdJBe8mmRc7NK64mORJqZa5hEOfKOy4jX5MTH33E5cxnqSjoFiZ+kd1Wa
	 vUUK0q9Rz1Wae6SRGOFw8whPhXdldsFJZd9xSoOb2SkoCv9uJZF1Sau7f7JDmgwlLj
	 KtNJSRarTBQlQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9555F36B95
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 23:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177577725368.2823.13131503183437631925.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: daf52fd368dd4c5fbfac9a38e9677e710ac16a181fd1e35d6dde42c1054f2598
Date: Thu, 09 Apr 2026 23:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775777253
