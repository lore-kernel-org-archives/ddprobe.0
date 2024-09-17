Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 281481803E
	for <ddprobe@lists.linux.dev>; Tue, 17 Sep 2024 12:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726575954; cv=none; b=orL9AxvsVTGZs+0CfjxqvaqXTuIp8kwpS6kKKzTt/I/3H7RwivRiVSf9O+j1Uf8e9Kvq5viYs0WaTuVEaEULOqnfJhZubBrdyaBVKonawzesMrEiJ7DUv+ix5ce4SPkym21YCt0yPC1r1lY0NvDUHlc30MuRVPvIH7p+blT3KrY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726575954; c=relaxed/simple;
	bh=oejnBkFETWiRuPmrZ26ji2wSLN3i2FZXbKrt6f7Mk2g=;
	h=To:Subject:From:Message-Id:Date; b=mxNA47NePSnRrqpVh0ddygc4q2K4IfRVWHWTrvykqLbXUVUU/Qv60cBFaVIxBZbPj/Cj1zsaywvJtZe5zxHEeR0UEGk4bDL9pmsP2shdh49ib/34nH4djIzJJp7N5yD5km5LqED1fUJfYwsgo52NeSQGlSmHKg69l7O+U2pZYkk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U/Yz13IH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U/Yz13IH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A594AC4CECE
	for <ddprobe@lists.linux.dev>; Tue, 17 Sep 2024 12:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726575953;
	bh=oejnBkFETWiRuPmrZ26ji2wSLN3i2FZXbKrt6f7Mk2g=;
	h=To:Subject:From:Date:From;
	b=U/Yz13IHb17BkxwCy0RNqKNTTjjtDt5wLBFKATiPeGeQKn7wwUd/Zgw416r4alo37
	 zNqBzQhWy8usPo4DkTW4SN+2thntDHf1iImmgni5WQ0OkttIPSGPT/eGWOJ8nf9MHj
	 Sa2ICDSKxSVBrxuhzNnu2gzMzTXjEngDUz9OZWJU1O2wW+2epZ4vf3F/mMLeuGR3hm
	 SXd6vA2CgODJWMjAfV3dyovyci+DllEokTqREXQ//mSJ4lGkv7MQ3j2xrWwnIB7Iy1
	 GPHOYRq6SKJTdihp5tpnNTgdVzqS5J1+z7u+oNgWMAJUTQv00IV2ZOKBUKK+FhAR63
	 +jBG+cEtPa8+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92613C35FFF
	for <ddprobe@lists.linux.dev>; Tue, 17 Sep 2024 12:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172657595358.19815.15301780509751678682.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 92d79846347fbaeaf5ca08a0050b36131941a1b4e308c67fa4231d3c8c69380a
Date: Tue, 17 Sep 2024 12:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726575953
