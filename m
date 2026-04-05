Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 405D4C14A
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 10:05:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775383534; cv=none; b=hEHV4zmi7vi7HR2JQD3WaUF60+vyU9ZovHXF4O6euRBdW/sTLDS6Oew0LR3FByGXqCivF77Puu9YobNj+6wpBJsKPqsvS67pXTv1a2J5kUnSkoYv2of2ZvgxZD62GRQkbZSbsTlGUFAI8yE7hEnklgZBtXsF9bDagerquuUVtsA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775383534; c=relaxed/simple;
	bh=zAm5JhaDhFfuPSi8L0htPGujzV0yHhokc871cuW/0w4=;
	h=To:Subject:From:Message-Id:Date; b=MEwzYrlVdTyMo/qswlnKDZ9lp8b+Nwrvy6nzR3YMsMKXREtrKI2n3F1vE6chwCFSSZOg3pHx3T3yp9AzNh9VOVDBVEkI/bSU9Rw+kvIeL41Gs0NLHjvvAGLd/jgbJ3ZLAUycjeU6Vku+BBxNaIZxmu1amAPN9+jZEn1nZFgTlfU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VnDopGGv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VnDopGGv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBA7EC2BC9E
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 10:05:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775383533;
	bh=zAm5JhaDhFfuPSi8L0htPGujzV0yHhokc871cuW/0w4=;
	h=To:Subject:From:Date:From;
	b=VnDopGGvowsx0zRioJ7uSUCdwhZLb8nlQdLSwONQ7IJH+7zdlRaDh2MTQBfrdGq/e
	 ZdLac7kW3qmGfLnQvTWOnVUzfTURovdI5yXlXh6oR3wMso2CDnqU55/F316h9yfx/3
	 UOh5j0w8HB904uHgIVgqnLhFuAl3zidwOtG5mD4/A366UD2eu14OvALdhtlnS+PzRn
	 1wzElsTGKhQjBKJlJ/xQ9btp7qdyJFW+5Px21In9hC8QyoFaaD44EamhVDag7p6erT
	 iq4f6gYKsMCr+WxQESC+L5f8ydSYgnF7HY0YRHlfNdS3eBIMPq3RA+lIQ31iCyChsx
	 VECxZA5fjgsVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8D9EE64002
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 10:05:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177538353369.11032.17640915159949615373.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 362b78df2010eeb296ee400c91b8b7d6da53b41ae1dcc846eae21b9fb953c44c
Date: Sun, 05 Apr 2026 10:05:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775383533
