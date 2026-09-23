Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16467568FBF
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 19:30:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790191836; cv=none; b=Lk0ebQhFetMp0lrfnb/puTdvZyuwe9H9zGDVS0X0wyZgBRkrIZLkw/c4mjrkuHD+EolfgcqXgL9em2P+EaBgN4lFL1VAN7h1Avm91K+bisBJip5iaFTenaY7CGzIJiW+5XQZ86NqBheOvpgl7G2iZ3NbGX0NbzCbnkwGdWWLzYk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790191836; c=relaxed/simple;
	bh=SI8EXU57lL5Kcjc2pufK3HJT8Rt9Zz0KgOIyHz45Ya4=;
	h=To:Subject:From:Message-Id:Date; b=i2zZwk+eJdEA8cdszmaTznRXl4Z/VhcLWsAQVp8FLHgmZneeNgOCBaHgzWMREBWfDDWCatmLOHftzFlCxizoQ0JHsu5xqzg2p2ABZXVtEWtyqs3otpwmW4udCdUEaN+e/9xKEvHZCXve868QpPKinYsHlJhR0vca57tFnXm7VuY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FNGfj8pB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FNGfj8pB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id F0987C2BCB8
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 19:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790191834;
	bh=SI8EXU57lL5Kcjc2pufK3HJT8Rt9Zz0KgOIyHz45Ya4=;
	h=To:Subject:From:Date:From;
	b=FNGfj8pB4Zpj9rFLXziU1qkM51iOvzYHokrF8K2q1dnLodPkfJWiLAeQaZ8GGePB2
	 Nurjge3tN+7ROH1MR5/1rU4FGartcHgJDiXTSSOz67jHeT0A68uyK7GzYmsv0icOOg
	 HIirIF558poQWuEJ9bAMbKwAWqle9y8DguWaeiQYrdBB6iJXhj/1sBDq5VG7c6irhW
	 8gR9st8pg9OWlQCOkA7SO8s4pc6p8/XrkKoE0+FzTM9IjR7Wh5JpmrXO1Lh/+DzJpv
	 YhJ65KEq0aTxyZAFmYb5+emWq2sSLBd9ZLuSlocC7StM005ilYVpx8IGCOJDDJOUAD
	 F/GK1CK7aNf9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2F17C9830B
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 19:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179019183377.22037.15947782050349955641.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 918b86879ffa791eb649cf1c14a8facc6803c813f03620a43abbbda034d17df8
Date: Wed, 23 Sep 2026 19:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790191833
