Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CACE63CB
	for <ddprobe@lists.linux.dev>; Sun, 19 Jan 2025 14:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737297954; cv=none; b=F+0+J5iIbOgYViVbp35+jt5Kso/edPX7VUZbwXIpkWbBlQlO3yQoLmhEM5PWMrMgQZl1ez3NAc7tk0K90Fg5YwMTLKjsaP6NmlAhHKB87gzlb/6p+FOAL4+wYWTVw1R9hcIQJ/pK5GeUqI7mDFDDCeiujh0YvEtFMRQHmXewKoA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737297954; c=relaxed/simple;
	bh=WJXdWYntbNksHhQKfboWJqoxAUnyP55wb5rmaNYt2QA=;
	h=To:Subject:From:Message-Id:Date; b=gICV3BVv0ksr45tPFnjKqfR9heMPo3Pl6lNKlBM8dBM7Ju8gagagRjjvglijoYunHZm3FUDPuLjt7Wo09iNxthEjMLA7cfJhgkgFGvuj37NdMjVK0G/3nJw7qfZFAgbyOdCsUJy+m0+nPkgiqfuEIh0j8gYqHkCZefFEqHUPE3E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lBxZY6Bl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lBxZY6Bl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3103C4CED6
	for <ddprobe@lists.linux.dev>; Sun, 19 Jan 2025 14:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737297953;
	bh=WJXdWYntbNksHhQKfboWJqoxAUnyP55wb5rmaNYt2QA=;
	h=To:Subject:From:Date:From;
	b=lBxZY6BlsVZy1o9I7JDSx1qiis3s/K+l/PVgDTRK9K+vsVBBx1i+mHIdoPXHmJLkA
	 kYKkCY82egxONf/PWtXOgcjq9FQWhbkpP9ZB3M45Ikur9+LQQH+02ysmbn6vjMJVUE
	 aBCFNK2XrncNIXsNlT5ZgzCxlR4CFNmSTwpIz+Cz/qVoobuIONJSWbzRo+DDxxTMbg
	 9rJWMG0eGAfqzjYPOhiEZV8eGH6mk1BZmVUAO2NC2LP/sXnCiqCZ8T9Z8blLeMR5G7
	 gS7NQgRdzyBLsOIvt6BTMhFFzawIrwWdDvgaTSqiXsZO/mEl6BGmQS3CpIRIQkA+YM
	 spGUoBN0a1KRA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 940F7C02183
	for <ddprobe@lists.linux.dev>; Sun, 19 Jan 2025 14:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173729795357.13563.10144656125305483769.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d16f474d50afc939df4be42d61f0d09c7d071825715693b71434b5b1136d83d7
Date: Sun, 19 Jan 2025 14:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737297953
