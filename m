Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 309F61DAC9A
	for <ddprobe@lists.linux.dev>; Fri, 15 Nov 2024 13:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731678354; cv=none; b=E1vwbJWD9MWUHsXoDZgaUqFLJ92imR8B3TLRKsuYNtAFUygxxPH2N1VE8XX/+1b3GEAz7uJEgoMeUxemtBV79GUUDM7zlunmiwX75L+IbfDryRAvA1++J0KB4RHXAbTjrXyxVkULaXEUgrVuvD8t2A7pscpXKnJM9H728Mgq4WA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731678354; c=relaxed/simple;
	bh=W003IywGrmQ40kItLCofVJ1zTinF/RJkdBiIP+dem1Q=;
	h=To:Subject:From:Message-Id:Date; b=StL/sJMvRw9BSSqyfgbrZtocKiBl2Mbj6KseamYLLZg0JIqgbINqruxnQo33C1+S+F8es1TInHe0GAHggrNOL8FiZGqjnxgVLWTVGQFaWXj0WiPSmB1XNDMcF6FfrsInCjNzu9GT7tUZtQBhVnbhBGao/PvI2a/YyKXY+0Gwbuw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GCbuGeLc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GCbuGeLc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFB7BC4CECF
	for <ddprobe@lists.linux.dev>; Fri, 15 Nov 2024 13:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731678353;
	bh=W003IywGrmQ40kItLCofVJ1zTinF/RJkdBiIP+dem1Q=;
	h=To:Subject:From:Date:From;
	b=GCbuGeLcHDhptOBkSKooPZe3UhjWJ5JVcsRVDyfUglbr5iNDecnCWpeDPgtXIHeRn
	 EaZoBR22nY6SXbtpyfiCfDKYZRRUZfJf/fS9+pzqFdnuMhGpQwujcku2eGNRY907Pr
	 EMXP5u/2SRioxOL9VItJ7tKXB/mB8uF4WtxUDHh/cN95szT7mBmWgCCh/NDCzuuBdi
	 J0DcXOfoAr4kYB/Pjed4m7Q57V7SzDuWIUQDXamyYkLMIMj+lXRESwXp81TVN5qU5Q
	 34TpLZM3iVatn1icIbhpnqiK9/4F+0d17nt6TBnAD40z01l7f4W7BxOYGyXR2IYFba
	 uj2laSBbgtC7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C927D6DDFA
	for <ddprobe@lists.linux.dev>; Fri, 15 Nov 2024 13:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173167835363.32579.6140425288478666093.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a4abacb8560bd743b5993debe99439d2c8384b6eb3fcdf25bb9ec07faa4d9dea
Date: Fri, 15 Nov 2024 13:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1731678353
