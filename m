Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 67956148316
	for <ddprobe@lists.linux.dev>; Sun,  5 Jan 2025 10:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736072154; cv=none; b=dmM1zRaOGpvRlNtcbQV7Mo4ysJoct5OoLvy7d1cIEOligi+xp2dvJlgSD0usflbSGUX4GiWgeoukMbGXCo6qkKte03uaVteH9WjZpNjqEXoqmz54P9Fw+jDrMkF2x2VaXgipFYS14yqKr88CX1nXVTBVY0/bquKvY4AsMhS0Hxk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736072154; c=relaxed/simple;
	bh=jIwbGZc6VCqQW10LHV1FUHJ4zQwY/TwqKp0W+Dqk/p0=;
	h=To:Subject:From:Message-Id:Date; b=Dn086K48uvy8JzwzOUskikSDcC1zLbZqXZFbM8B8DjC/nowFRwgsfyk++k4MumPPaeUFiPkLtuuQWmGF05RwFmiOvWCcDeIZBoNDelJXI7erjoQbGyMAo+BvbpWCCfBKVPBM4bdutC2kRXwdFtrTK++lmdLgxqJqamxHtHGiOXs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BF1uFH1u; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BF1uFH1u"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9FA4C4CED0
	for <ddprobe@lists.linux.dev>; Sun,  5 Jan 2025 10:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736072153;
	bh=jIwbGZc6VCqQW10LHV1FUHJ4zQwY/TwqKp0W+Dqk/p0=;
	h=To:Subject:From:Date:From;
	b=BF1uFH1urqsgm7rKiT+9S5k7ABHXqL0Ydd5p6L8VRcs5fAJnLk9eBcQ21TH7rFIG1
	 boadQzsffz84DVY8wHN+EUCxJmEMT/cdAqpu5bboLhRTYkRN2wFRuWQtSdrnwp55rV
	 hovF9Vcb1ptaGxI5Le31+uoyIIRgrgVyLoUgFU47Bgpd81VyHNuqFL6F47g+LA+/Zu
	 oo02CeRKzyyD8IAdi51PhjhlP7Ds/uzAzcnCSvjBpJ3a24Q82e+PAsjXVvLigfmotJ
	 tzM+jIriGVxfqdh+tMosMnUzd+kdAx8DDUf72QG22ma55CJIU34wKlXmBTco0cv+LB
	 COAVZVUCNzZ9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B336EE77197
	for <ddprobe@lists.linux.dev>; Sun,  5 Jan 2025 10:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173607215372.1976.13400234359586212829.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3fb6999aa4b0dcff2710461ad88876376a34c023d6ba2c34d867865b9c80aa0f
Date: Sun, 05 Jan 2025 10:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736072153
