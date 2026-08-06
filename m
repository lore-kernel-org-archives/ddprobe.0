Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E52E3905E0
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 08:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786003834; cv=none; b=sOh01QA/5hkzDjmhY06FxuPqDCp3DQeji/fjJTTyzrxeZmmzBuncHEU/dW6MStzGP1/JYU0tNchqaldVlyBk4u2h3INXURkxDvOkrMii84SSaUWy2stGQ589ys+aGqcGT6ig2m1vufSaDe+1pwTtZvzUWtqGCHjJtMtKlQ+8eE8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786003834; c=relaxed/simple;
	bh=f5DDxriswpoDqoAifA/3TnLjNt/nHEWa3jjvAIS0Gq8=;
	h=To:Subject:From:Message-Id:Date; b=Or/q6fx+zEa0N25hQFJvAAki+YOOQIdzpFW5Y9HPk/rzBzilPn+LPaLLMbS8fg9O4zEa8PT6CrrqB6Fm8cuJV2ukwZOqltt6vWfGAHEYzxIX5R0j8bncZWz3+Wx1qXEGcPVlmmzLMfnDc/M45yn1y9SFiX0bq2lkQzu8ZM64/68=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bukGgDjv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bukGgDjv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DCB5FC2BCB9
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 08:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786003833;
	bh=f5DDxriswpoDqoAifA/3TnLjNt/nHEWa3jjvAIS0Gq8=;
	h=To:Subject:From:Date:From;
	b=bukGgDjvhdggit2O9g1rnJ+6T2x5kYkmZICMN9+oqp57slIF1NobXDnpK3E89nIkC
	 cQcyFEhDbQsZ7L+swVpP8cH4t/NSAU+7VkDGyyWJa4Q6O3AFM484ghMiIpr9JsrvQB
	 Pn9KWYVFvoqAXIA9uUCJlkhNhthdJLojM5J39/OoNrqAPBGAgQUA+g9lu95wxkJnLs
	 4So36R79uNv9mGgKUDDOUkfly+5H2E71ena8IJ/2IT37twRQZVJ+OfuEgnda3sz6V+
	 xN+Tz/D9Z/N5OlIq/At/Ms3fZw9jBBbkTBPSNdiV9IH1ZI8AZAkB2Hf6EJOuix9bqc
	 udW9mqNyxhHvg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2FC1C55ABF
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 08:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178600383372.23465.18388046801017386842.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4b913a75b1b26e67129063fe275710513783912d5e63894981f1e3b2900c11e8
Date: Thu, 06 Aug 2026 08:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786003833
