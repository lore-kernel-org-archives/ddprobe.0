Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21965224B14
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 20:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751315394; cv=none; b=Wt+BWRu1oEV4jZGRHavHoKF9Tfx/tdJ7hZV6l1jRRkEcdTWEBLRIMhdmNYpsFYYbC0icOcOIAyu3xP9qH5zdquemy2S4bxUtB5M6+lbZRmxzb9TT3x5j2RAZjp6WZ7bKLdWh8SJnPF+Nt1Y+vcr++uIHq7LWE/uHdGmsOUpL36w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751315394; c=relaxed/simple;
	bh=vJSF62pEjl+ShMR5HXlyp9AhEdMKYsQK07O7frDRJkI=;
	h=To:Subject:From:Message-Id:Date; b=TSX11egYApjlqV/2nkfUTVUwX6jYE3PU+iKg+3H4CL2sb07MowBiAkrWBXDK/ZdA4He8m0ri7oirIadeOc6dTjAIN5W+ZG4xXnaqMLU461H+sZsVVKCf25pYz5idKw8LRaZ+W5iklLgw/WBXHNlrbkhcizaGBESl2T6GhkhvOWk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p4jlN5V+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p4jlN5V+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3D65C4CEE3
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 20:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751315393;
	bh=vJSF62pEjl+ShMR5HXlyp9AhEdMKYsQK07O7frDRJkI=;
	h=To:Subject:From:Date:From;
	b=p4jlN5V+VzSLJKA40h9HHVZkujYj8gj4mm3AzLroGDCBOWPfG6TwsVk5OjQOQzec2
	 rMTh6d6cxxfjyVj/9bMJZUM2y+sVdSuuq3lil0Yh+AE11oEqgsMI8/HWvVKou+d7JK
	 XS3tVqxbZQudqvi3wWT0z/SisMx3Hwj+zc9du/RCo6e8EnkJDsUjSPvEtXnP8Kx9nU
	 tObYdCxYW72V79Be8FwrBz/E09rLdXmGD0NE54Xw8x4iJe3OaPUBndQc1gZgkE/ZuA
	 CX+dLcLFRzMiBj0nKTuSNop9tSEz/fUaAfEtCXfafA2848i/KXJ1UcIOXV7HtW9+l2
	 biMQlCkvhpvPg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90BD9C83033
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 20:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175131539358.29946.2529207662622998659.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 35794c22c1fcc4a4a9deba87123352454725008383a09b755c9c51d266b761b3
Date: Mon, 30 Jun 2025 20:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751315393
