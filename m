Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 416C14A23
	for <ddprobe@lists.linux.dev>; Thu, 24 Apr 2025 04:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745470195; cv=none; b=FKlsbSj14b2FQISdM7x7ERWGQ0gMVJnwwriW9rCoiu8yMusUCyg18PBWHyKT8ZdciwpCypzKg7Nh6+PSCbdSlnDg+ZQbdboAPcXwV71aqdCBTl5S6j1+QI9Qls1H6O6q5pmWEKA3/Z36E934RWAUAXjoE9lav9UKcx69x0kyUD8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745470195; c=relaxed/simple;
	bh=jvwxQFUr3zAlMJswQAEseJ5HUJvW2ErKR/lCQuSs03o=;
	h=To:Subject:From:Message-Id:Date; b=Wk4stzACAsZERgQlu4MHTDx5BMJReGpfdCu0Pk2yzYX/KE9tDnuLyUeI3OpRYDUyIOwDk04JMHzzUKgjWb/LPQeLkbm1ze/O56pDTux3X879oVIFR6tAplDMo1FQJMigGh3FOiUhV5fULukl2o3qZDRwgiNDEP0/hgDKBty379o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q/RcMhix; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q/RcMhix"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A108DC4CEE3
	for <ddprobe@lists.linux.dev>; Thu, 24 Apr 2025 04:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745470193;
	bh=jvwxQFUr3zAlMJswQAEseJ5HUJvW2ErKR/lCQuSs03o=;
	h=To:Subject:From:Date:From;
	b=Q/RcMhixim+ABBUP9m4h4d0iiYbScvqKWlovB01AcvYsaxa/MHFfB0E4vvzCjxLPz
	 Fsdc7qpytNTRM8+uEibHxFO/FShtOVe95bHaquwZXM4mdzurzxgosgqWK73NUElnQH
	 y3AUZgHS+O49hkS8/5ODmzWGareluhOWLvaOh73YdFLt9Ssr4+ArRavwksqso1Ygsz
	 JIbY4kCWxSAVt9xPOWWTO9KiWGXldhCyup4kjVmhbJE7CC/2VR7xk0wcWAQtefiunj
	 JfDOe3JX7AnmAfGGaeX7JJ1//smfCzAUFVgIIDxjVwC19mW+5xelhebwd9tAiR1Fb6
	 9yOg2AxYXlO0w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E017C369AB
	for <ddprobe@lists.linux.dev>; Thu, 24 Apr 2025 04:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174547019357.23289.11687582786656694614.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1c27867b3e29ad229968920b2497a27eb59f4aacc396d0fe04d7a56a42dec43a
Date: Thu, 24 Apr 2025 04:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745470193
