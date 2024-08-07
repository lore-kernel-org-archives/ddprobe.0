Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15380198A32
	for <ddprobe@lists.linux.dev>; Wed,  7 Aug 2024 06:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723013754; cv=none; b=CJ+pKZpLjLshXIm12RjfQPQSTQGVNG76Uvblqg1oiak7p3QKtsg+f3c+s0dFb2I5+SajV1r62JW0V1SpXay8kM0xXBO04Ykove9Q7SVmVYxyK/il198ybLSloyXmWoKHEYfg38d1ZEG6pl5MPCuAh7q/0RvamjAF7rRmu0fvIYI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723013754; c=relaxed/simple;
	bh=KZqa9Ohq0YwLaYMMBv2Q/sCjG06MCc9ah4h1/WaDlus=;
	h=To:Subject:From:Message-Id:Date; b=QsF+uySsYse/uKd832RYFW9bJBcyx30iJBALWOOMIESWhWNH3aC0CXEheZsIQqRU3ToiPyfYw6xb6eQH7567tTHxU0pbkyHume6Xi+bTAvXX7CQjUnYKDDvPhwNnVoNl2yiQAPYwUjXGqdUPzha6F1zgUbriz8liYPnfblFQEiw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FEG4qbzv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FEG4qbzv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5129C32782
	for <ddprobe@lists.linux.dev>; Wed,  7 Aug 2024 06:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723013753;
	bh=KZqa9Ohq0YwLaYMMBv2Q/sCjG06MCc9ah4h1/WaDlus=;
	h=To:Subject:From:Date:From;
	b=FEG4qbzvDGst0ARqrZP4EvVoFWxn9baFPwpJo+udAXFSnpFqAFv8qP99v50L/wF1/
	 iyASGRWEtBkucblvL4XpeBYmNexfGCRXHTkKuK4jTN4mhMpUeZ80isq2KAfXJZ6UV0
	 uPVbkPNXk+X976E1W5l+Za7iqJKghAdmnES4pRjK2lGQQ7GEfHhPQ5tatuFSs9n05W
	 70+iz5cJ+B6H7SK+7HO77GBaAIKRKfmkogeuze+f54TymkcWktAtZeDL+Muxsm6rxJ
	 UNk/YMqx9iuD+Y0AXJtRQJSELXSgyo5kY0GudCOkWy7y+1U43sUOyjwCq4qp7x2+HR
	 P1OH6lachQYlw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94716C52D6F
	for <ddprobe@lists.linux.dev>; Wed,  7 Aug 2024 06:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172301375359.32249.5097906332735959004.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b5db9940358876cd7d4d71d2e5a0b071d3b187f52df9632142225b0b7f9b0c33
Date: Wed, 07 Aug 2024 06:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723013753
