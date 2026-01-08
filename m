Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F08A835966
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 22:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767911634; cv=none; b=j/iVC2wh69bQ+LU+WLsjU2/RnV/XrggIKwA/0LHQco0EEBS6wJjvMT+14mQYREw6cNQPZ6PSDairfXDlfC12ocqSWtFzV6z5TyOU7dS4918IWI8jdG26F9tup/OaF9MxbfKexcAcCoc4wkdXbLTQnsWF+YGISX/uQx3sbj7YJ6o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767911634; c=relaxed/simple;
	bh=RelcmGnuX9ZvNl/Gzp/KQun5Btnck7eeO+jNfB5kO/Q=;
	h=To:Subject:From:Message-Id:Date; b=i4C7Pdbo+NMyzThFqsmVSCz7HzbDnomnc7FefrsgN8gqcGjYmSS4SPpv0zLCtizRIIkJ3fPu/ofGR0RXKfMJFzCMlVQ4QcGOHLvp331zTRB/JZM9tqfGP1lTzyUK7WePnxV70PRJqfNqDIMrZehtCD3pUZ6ZCUUZfb0S3IGhzjg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oGA5Cf6e; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oGA5Cf6e"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1158C19421
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 22:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767911633;
	bh=RelcmGnuX9ZvNl/Gzp/KQun5Btnck7eeO+jNfB5kO/Q=;
	h=To:Subject:From:Date:From;
	b=oGA5Cf6ePMn9FmVPlZojzz5x5beDfNnppWZEHNuKS3yAusJXZBYedHYUoE0xoezGW
	 7I37hf9StgLR5y5mh+hktcN1I1obQdFBaMHpR9keYWOcYKNUrHvHqOph5gRnhQBGre
	 JVrHt7g9+VYbBzAeOR4qHfvjvj6F4XeJNRFqP/1x8jrPOs69ONV9jHzoHFXpoERusN
	 6FnzGh7HynbclxRRJWG5SyRR9EhluTmbFcIwiCob6Hq7pIl7ClSiybQ4xjsSDAPe0M
	 03TrB2uaRH6n3G8T9tSYQruYPU0l5Qq8b7LEalHuoq4QBh8Ky9BTlkMayXWUDNdsjW
	 cwoYST5981ipQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94197D232C1
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 22:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176791163357.21356.8261643458011600885.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dcba201186148f497c3a44b120da1e20e8f868f1e567a2ceaa55bd44e690126b
Date: Thu, 08 Jan 2026 22:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767911633
