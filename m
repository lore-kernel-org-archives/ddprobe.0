Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2325B155A4E
	for <ddprobe@lists.linux.dev>; Sun, 14 Sep 2025 12:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757854794; cv=none; b=uYHharDum4VRjMfzmsf3JlXPcIjsKHxZcIX/C3Id57IDiDSYHX4jR/eYZFoO/l3+zzjmYX0fo4sK8UjyuUp6yW6t4HtzUf5Qrnz5Wosp+nXZ6EsrLK3I58H0rhl5rAA8kCDdv8tIQuCf9XkGdRgE7SIaHMA1EC4/UZfuWALFIvc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757854794; c=relaxed/simple;
	bh=5yI519eFk6OZHw9yEI3ZjLi7thYvd3DNj3Lbagt7RlU=;
	h=To:Subject:From:Message-Id:Date; b=L78hXcaEsweJA4TPiwd7tCySd1SGX9N+UaEg5y2vqTOZKa8Ns4KPsKM9p8qjwI6NKNnHz1KLKG2ET0L8IQp+yYY6kSF0mzZB94cZ5RDjUmDKm+Y7YmcKbG2EdsOPeKDsduGkW9iufP+FHQx60HUlGmfKfsSytJszoBn7krMPFl8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hAwFm8Gs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hAwFm8Gs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A00B6C4CEF0
	for <ddprobe@lists.linux.dev>; Sun, 14 Sep 2025 12:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757854793;
	bh=5yI519eFk6OZHw9yEI3ZjLi7thYvd3DNj3Lbagt7RlU=;
	h=To:Subject:From:Date:From;
	b=hAwFm8GsjcDHHioZPdmnAruq75ZDxwQGSutRIwy5yHg1l5G8R7sEt0z5mUeSwCKjC
	 XFqIEzNi+sbM9yzrqz+svBuQOWzkonnHGCAO7U6SkXMhTB+oDSJJv462pw7oc0QQJZ
	 qGsvVlIw2MWKpYcsuN1R5ce+KpoaFnsJUApR0MGzYF5/dRJwLrufTWrRMh+G+pQP6l
	 mXg63UXRIaAQ23MUVe5KP9V37xXzxTA/aPEq9t1IpRps+Qnj2OF3lKIF5bdlpK9jkn
	 HIBw3L0a+o8YDVTUpk+3fcI3DJScOl6DKEJAOojbTVcANMrwoZ1umXtH08Q650m8hV
	 71GpRkjknHb0w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F876CAC594
	for <ddprobe@lists.linux.dev>; Sun, 14 Sep 2025 12:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175785479357.31862.13514086686405348475.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a599b741b04b4aa47a01491dba76c59719e8622e4e1bce53b4af645bad60a630
Date: Sun, 14 Sep 2025 12:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757854793
