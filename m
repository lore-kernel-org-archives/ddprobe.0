Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 08350149E12
	for <ddprobe@lists.linux.dev>; Sat, 10 Feb 2024 04:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707539297; cv=none; b=t7SvIQdUli40pAhd4Xv9cAr1hsqcpladXGuZmZ9phnYEHbzlXvTFZWW5elwrf12hn4vnXJPJqs6apaIyAH4pE8YTnw+maRatuRb83MehJD5hSZUkMgPQmTcR7Xlgb006wcZGY/uoOGGTbY8BprCFve91XhPVDIsiAUyzkIPF2/c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707539297; c=relaxed/simple;
	bh=LBft8MxNl//KRcvo2niy6HELdl4ge8pgTX9y5fkqtaE=;
	h=To:Subject:From:Message-Id:Date; b=c7hRIF8F61LypCK7DbwGXYnNewqUEYyFQbqcjy5hYBMhdUMpAGIRC8LlW9FivB/4NDs3uyJXhh1tWNUH0lD/Dt1Aa/gmDpQTb3LkVhDuhk7VfS7bVxl/L3Dg7Ove7O4P2407dG7qdjPRDPLciNWJq2NjsdXDF5Ewln2yrWLzRQw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LTWWz580; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LTWWz580"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 81A47C433F1
	for <ddprobe@lists.linux.dev>; Sat, 10 Feb 2024 04:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707539296;
	bh=LBft8MxNl//KRcvo2niy6HELdl4ge8pgTX9y5fkqtaE=;
	h=To:Subject:From:Date:From;
	b=LTWWz5800pfUiMMjHdPalPzR9Muz9jBgf794TnGZS6GXNC0xwdUu88z5+ngqj/XcW
	 hs56zZfCYiWS6HrH5qXO96b1rjqJxIhYpPLv++Qop/FLYuJHdjZ6kVrshm/xGC0OWc
	 63pGfdgH/d0WliKSsWN3vRhV4JOWdCj3GxR/ZdyzdOihKSKmYlfW8lRNcRDm152hX4
	 VcmoDZWhIGQdvbg4QvK96A+kSdyM3FQG4qnJuQXlvna1vZwu1OP6EhM8P+oRLOHOnY
	 0pzdqWCsrupJXxSu2/WHj07SA3FDF2i6B3bmDBcfF9fz7M73oFwaWjrQBG2JLtf9mt
	 nHjLRnK3Tj+rA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 629CFC4829A
	for <ddprobe@lists.linux.dev>; Sat, 10 Feb 2024 04:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170753929638.18245.10061036581150105111.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f13c8392e554992e3305ecf2d81574e085256e32734f30b00b7a1feb3988d210
Date: Sat, 10 Feb 2024 04:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707539296
