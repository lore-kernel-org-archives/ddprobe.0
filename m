Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C244526296
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 04:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786941634; cv=none; b=SSpnUtha9tO+7PtsKCTbxoTVqicuC9bf76Vtt8SnLvi42fmWL7TLhD71vpgvExNW2yXgS/k+I1tVkc1IgQGmcL/G1gPBSCr1R4uqZE5KOQQWJXi74QbpRTj3T+2BysoukmomqVnVtA6OS92sEbdX3r2yWg1gfZAdGmXees6BLPU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786941634; c=relaxed/simple;
	bh=IedNveRh52jkD4DEETy0iTBxpHGlACsfKoJfY6zVoEw=;
	h=To:Subject:From:Message-Id:Date; b=QKBfXR/rozCGJyQg34OflezGAAMIDrypdOl4rsERTLA1kTQVTqri9Sv+9lNbxIy2WbGQ0VxPaYxm+fkbIGKQRxUDs2bKY6Z0AvW//g5XG3NUQAh25J8zBFvMpvfX6duUDhhknzyVwx22xBUTGcFM5YE4XHfWYDvhl927F6JHOtw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sj32B7lu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sj32B7lu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D89AEC2BCB3
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 04:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786941633;
	bh=IedNveRh52jkD4DEETy0iTBxpHGlACsfKoJfY6zVoEw=;
	h=To:Subject:From:Date:From;
	b=sj32B7lukfIwHeBl0CIVAbgrGcBDS7YMVmWWWXz67biwTmjvUs5GI31KUmOqhy5Dz
	 PhQ8q+AagAxqOOoRGbELn1zMMc/RZl8Hm1NFEN8SK/TE460kdfVm4UZytwNGJEtQGL
	 z72UdUQQKJwMseXfV0LVjg2xmPzSvB12e+ugHH0MbkVZzxyuwPqdqAGh9Kp2SH4tJI
	 3uxiq/B91n4B/U/jSs2EDeZZSPMkkWqTiLlPUpHfA/DjublD02Mb9KlLY4MGn+RESk
	 L/n6SXmSUCTaukQnRN11tkUD1NknhXN4NUAbpzO2L7Mt3IAETjEG6xIde7gFBIEZhK
	 kdNdfSx0gJNUw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B486BC5CFC1
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 04:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178694163369.20989.5289026660408405374.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5e0f7d62c68ae5331c07cd57c2ba72872424ca2a97dbaed511ad2356dcb4c935
Date: Mon, 17 Aug 2026 04:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786941633
