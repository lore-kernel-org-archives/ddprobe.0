Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 75FBD139CE8
	for <ddprobe@lists.linux.dev>; Fri, 19 Apr 2024 17:30:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713547823; cv=none; b=JHYN7C9muEDS67ciCupj/m7cWYblj0qNij4U5GCTWgL/KKVVMiR1t5QBJzaBomcDL+0X6fqnRC1Th7AhQFaEQgYghPrCuovmGvzm2TzlViDTee8IkSxY9QtcRkwMWJ8DFhwOrzTNX1Yk8InJa3wVOe1hr808q0/HA7KX5z9atew=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713547823; c=relaxed/simple;
	bh=VwM9fJ7U5rGVtgRmjTSBAld7kAjnlCA02x0EdaXxHkE=;
	h=To:Subject:From:Message-Id:Date; b=ff8SXa9EVtxLCm+iMzIKzpG8s3Z9zTqB/ZGNyfEJx+os26PwUgrowQiwfoRI01xhPeATz9TG0+f8RjXtjepy1G7tVbdeC7m+XCdaMAr8DVSYGzJcTiq/0OS59oNmphLF7XcdyNegzidhZ3+mesrnWyNcgtGp7jYsr4K6dEbqLkg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HcnvraGj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HcnvraGj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EF361C072AA
	for <ddprobe@lists.linux.dev>; Fri, 19 Apr 2024 17:30:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713547823;
	bh=VwM9fJ7U5rGVtgRmjTSBAld7kAjnlCA02x0EdaXxHkE=;
	h=To:Subject:From:Date:From;
	b=HcnvraGj5xeYGLwIwwUuSpynK+/4HAH9hGG/X0MYJ1iN1QPHxZiQRlLMQXGQT2f+h
	 ocDGOD3VdD1tLN0RbdVI1y57voYDvtzkAdAgvZWw/rgSctBzDWmm+N0Z0uXXNKcYTe
	 Q1TT1b/CM4RoRVjX6dD5IeViPbFWsyau1f8SEYtATm52mho1xJOrLsaW8TyLaotriM
	 Jk6oyP54nDvqHIuNzU6buSZiCcWp/I9UzgOh2M9osT8EHdkoboQEbsw5Mm90HjbqYb
	 MOkToVl5AywE0lc6SlRpBmdEtUVGiXSIIrB6eayfwbdt/TtZZ63uSe/tAjJ8hjmYAg
	 zWjBhwteUw6FA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D5C3FC4345F
	for <ddprobe@lists.linux.dev>; Fri, 19 Apr 2024 17:30:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171354782286.32040.9558851678098828243.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6c539434fdd24395996aa9f5146955683ea5778ddee80886d1e7eb4857f19e9c
Date: Fri, 19 Apr 2024 17:30:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713547822
