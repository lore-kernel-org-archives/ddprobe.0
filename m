Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B29C2DC331
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 01:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787881834; cv=none; b=noBRdP8V2h6JMFldd5XqQkJDW8vBK1AH7wDekctjz16xdKBANTjgUBLRKRqxjmO+Rq1qgDVX+MokmcrDL6N1j8xu+2y6YgEoorzkjwHdoYh9h1kifV+GKRkQXivDLgM/qWl8hyZ/F4eBzq1FWppBfRKVTeEYRi+qMquksbYPlZw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787881834; c=relaxed/simple;
	bh=Fyy5ef3m/UkK856Z2WNxW+cp7SaQQlqbwzt/QIJM1/E=;
	h=To:Subject:From:Message-Id:Date; b=Krc5419EIaoj+DrvsXu8dlf9uGnAXkY4dhyn//arm3fmPOKeHSD5rw7jnv6bVE8KgC5zOlq2SIhUNrRCwaThZgmW5Aa/kqTC+O353awvFAzrMYsVQI89AGhoBbheyES/3AIcTOOAFrRe4O5Ir+SV23192QboxY03NuH0DBF8m30=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sbiM/at9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sbiM/at9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF63DC19425
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 01:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787881833;
	bh=Fyy5ef3m/UkK856Z2WNxW+cp7SaQQlqbwzt/QIJM1/E=;
	h=To:Subject:From:Date:From;
	b=sbiM/at9OIHRXCOVUjH/P12qejZwwvFIMbdzkJwF3GFaLa7hA3+D0DY+N0Mv+I4g+
	 G5QXJME4oZWGH4+7e3gJcUt038/bP2Rbd9BMKTUc8oYbPuMjM89VZ3UWnSfSWDJSLR
	 ti7YpmJ0mWANfm82vgrykRhT2HoVqB8eHvGeC0svcE6V9aHLr2nmNwLy8/eAEMosiT
	 z2Iv5fjrk+djNywOiZ3SESvpyUxJmJXUTofBNEd1cV7joBqeRvGbMzSLenfh7x7XN1
	 zBZFOVrp7U/NysWOAPyKpdOyYZWhf8CE5SnDlx2g6kLu4092/buj17qP30Hh4PRKeb
	 mJ8VCD/9KaB8A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABBF8C61DC4
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 01:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178788183369.17843.163385291434033648.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d13807b40729abca0f082955bd45d3eb6b2d5b6c3c37bb2769674a6736bb6482
Date: Fri, 28 Aug 2026 01:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787881833
