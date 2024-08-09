Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 190D713FFC
	for <ddprobe@lists.linux.dev>; Fri,  9 Aug 2024 14:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723214754; cv=none; b=KRI88xy8zOtf9g+F+0GdoH5uOGDF6sZUe6BzIjW2c/8s8lED9LBmIxHu5KoXx7ZlzHsUtrbtbB9Y49eNOgY0FFZPdCDMZczxDPUctazypxGPSUajgQKFHFo1A527BAEp5NVz79CdVnmtSmBipmEW180wMeNJrmxaOJWn+t0kXmw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723214754; c=relaxed/simple;
	bh=XIpC95c421X0nAFvAXpQVSuooya+4Ml7fqi3svAtUME=;
	h=To:Subject:From:Message-Id:Date; b=cE0+C90qEyJGxu3fHk2i/f5ZdErbUPjulgXnAGHqjz792L5hRI8UCzeRE6nCdaTDVlO8wssbOqvHsaSD8jaP2B0r3Xvb2zfIX+x4nQLNWIm9vSrY9QCvzic39AuAIzziWQbdLDBamgKSIOUnZ8ohQ6JxwDlxNkVSZZ5KRshm3JA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NyoXhrAJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NyoXhrAJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EB72C32782
	for <ddprobe@lists.linux.dev>; Fri,  9 Aug 2024 14:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723214753;
	bh=XIpC95c421X0nAFvAXpQVSuooya+4Ml7fqi3svAtUME=;
	h=To:Subject:From:Date:From;
	b=NyoXhrAJdeaVOSS6mBs9eH3MgAzO4gmYl2dSYYDg2BfMix+bDQlfNOKk9alNJkTWa
	 TR50l2uLwYWRvZ0veOPQP1fHQsrVy/+8Pq8LhuBR/pbpZNscVdpTZAFP705uBPOdb7
	 MXMVlsrmOx0GpBjrG8dSC9HlxE2FH8q1agAqGQmkqWfiLlRu0/7SDIS9QaIkZbit0r
	 +Tqx7jNYScJ6QoWyom3VEDQvb5S1Wc1TxuKewcuguwdWudSGCfGDeEqlVro0xNr8AX
	 HqXdx88aNKCSs1EhYxt8GoCeaNL4VeI3gcUvhQNgoF6zy6U20ZmlO3/liF6trktfeJ
	 VVogNhA3ItfBw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91BB9C52D7C
	for <ddprobe@lists.linux.dev>; Fri,  9 Aug 2024 14:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172321475358.22203.2196159497261716320.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d383e2cdf866447f08c05ee0179e18baade55e51f1e749a5926e35362682e8a4
Date: Fri, 09 Aug 2024 14:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723214753
