Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 326871C860B
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 03:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755055794; cv=none; b=nkdbhvuwQqewZCVIz2oju/4LDn6jJVQuxWZq3IutXz0jajrxfDNhQ33S3DjZBXqviIqEEZmu/dF5O8jMQKzfTrQoAanogeWAkloqhGqRASbKgT+r2ebq5KlUhk5+l0AvqhJVQMB391zAZkKjGZr4bMAPhytk6daY4GOh9DwUBMw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755055794; c=relaxed/simple;
	bh=vrZog7WKQShfGf1ICcwSU/C9iu0ct62EyH/nuqRRb/U=;
	h=To:Subject:From:Message-Id:Date; b=A+CA/8I/jAR6+UFECfFphEGwDZae3tue7v57vWdLuRQLkQdO7iOgZbNjWKW+aJjDPRyXQhMVIt5CIfwe1wjpCFhXy2aDwinJrsl7GTJlGZojX66JwdfCD/tP3uXFLceUQSTBJPweGYqtin0YJwTizrgwhASkE0N6kS4rEwiNStA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QXByNy/T; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QXByNy/T"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A098FC4CEEB
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 03:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755055793;
	bh=vrZog7WKQShfGf1ICcwSU/C9iu0ct62EyH/nuqRRb/U=;
	h=To:Subject:From:Date:From;
	b=QXByNy/TOenOFHFwko+EHe4eXbSkc1G7N20R0VVt6LsQlRkfTq+PTgdemSCefT36O
	 clLhpHWR+gIK8QHe0aC9DK2b2DKGWLfc2cLnGNzpIvfj2Iopj/8ks/aVn/m4E96pix
	 gQfWwHOugPjjM4GqW/KVy4aBR5EWTPfCZDIdxDl0sthi3yoh5KYHt+2e6KUEp29yYM
	 bJbc3DzD9tx0Dfm3JLLEtZ4XTmobYDXDf8i/ObSuvDgOSsHA13G707rq7s6YtFz/Rq
	 nHhWJGVtUsf3SOPOtsu7mTl11RAkCnAw7i+1IVIzkGzEU/sK/l/IM8EtSIxQUkcuu9
	 pJq3JGqhgq5SA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F333CA0EC4
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 03:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175505579357.28052.14146497054016753720.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 227b1b0e42322caa8de7110f4181ece31f7eab0961abf4ce370d0d0e7745265d
Date: Wed, 13 Aug 2025 03:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755055793
