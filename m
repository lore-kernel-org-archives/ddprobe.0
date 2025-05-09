Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2ABE1846F
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 02:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746757194; cv=none; b=LK1+DHFJZGB8SUQb7xd5B1CgWWnElfNIYlQ5zk1od01p5tovphXUoTM26md6i0g9cIHF7/6xEafjOm29mALkfL0zSH2qLDHtQay1Hk2AcwErYhaiPSaIxx6Buxjddy2DSLnBsNo4g0KU98FdDRsfxXVf23U5mXY5QhGr0lQkO/s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746757194; c=relaxed/simple;
	bh=ADFN8Mrr65SdjH2VVmjpkAeuMNsj0nEm623tqTS6k7w=;
	h=To:Subject:From:Message-Id:Date; b=Y3H/wTtKViKt26XI/CXrWmYn91WE4xfqrArr7ygduDNpB5UG0HpOncazE4JcUyCsvrB44pbdlWup8LAHrrrPd8ce52jwJRn3kjeAAtadoNZbW3ZO7A1CTeogmXBRLFlwU4sU9W3QoCki+V5cr5DA0iuA/Dl+GdHk1pQMnUr8N/Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DPJqF2VL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DPJqF2VL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A55A6C4CEE7
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 02:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746757193;
	bh=ADFN8Mrr65SdjH2VVmjpkAeuMNsj0nEm623tqTS6k7w=;
	h=To:Subject:From:Date:From;
	b=DPJqF2VLDzVKqk14v3HtxaG+ZWsssGSOLgSFUuRM+HVp9jjV2r+iwVTAgmHG0T/fR
	 mq00OTlLQ3V/clHPQfb39AS70vM3vF/HwD1bmGRKnYlYuifIl4FOonjDBwEV1KBUcc
	 LajqbMY+YhUiZAeyEsVAB1kYimO2mPfXv0t50v2YpMdhqB7YX8IOES4vrYH/V8r/k3
	 7jyldbTkrYkoxy318gQvb53i/qNo/1oWwjyVmBUTGBIK5KPGjNz3IK9rEAtC6lUUZI
	 jt7rRbKlyjJ76Cv/98Pc07P9JyFv01jkG4cu7M95lxgNLTF/PJm3I1DWeXrZ9yqIhC
	 ktpHvIBcS2/Ag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9192DC3ABBE
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 02:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174675719358.8404.13416690592808586671.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ffde81294cf6a274dadd700c4fe76a4854a2da571db0dc6b34e3bf413b801a69
Date: Fri, 09 May 2025 02:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746757193
