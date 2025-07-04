Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4378A184
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 10:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751624394; cv=none; b=IGXX86+E/sw4I/OddOJ+dcQxLu34TtnIb6eCVr5mmqQjs6Hk9z/fA/kHVbZn77MX37G9LWo+gRKVODBJb1ybamw3ccBpKULkUkYVOsY/4HLHK7LelKpahHfdzTbgCk6jEp1yQwgi3NuQbYPBcqAnTuAqIjhWTC5MZwIct44nqc0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751624394; c=relaxed/simple;
	bh=dQyqdSh0jhn4athxN0DfvBQWvtnTjOJxUpSmGBsnokI=;
	h=To:Subject:From:Message-Id:Date; b=klvC81KdTg++D+xh+yZAITXRosqYCqwzruGpJ73KDxJ5xENQsmgtuR1nZGBwP4t4h3rSvQstvbOoQBKR1IVcGN9RdpctqPofo6Vj9XNeKEUAav/XkyMdiHhO7uYFH2NAChEUtdebBQI7ADx8c2etw3/ZyvIU64W+wcZcfTU+E3I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LEUt1iKF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LEUt1iKF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A34EBC4CEEF
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 10:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751624393;
	bh=dQyqdSh0jhn4athxN0DfvBQWvtnTjOJxUpSmGBsnokI=;
	h=To:Subject:From:Date:From;
	b=LEUt1iKFc3zGItLENIdBG3VRPpDJ0PEXYX1EtrhJwFzw0gYkgb9r01onuYPdtN25u
	 WnXhkFChBtRt3CUvEF6dsP8ikAyzxZDHusqdKryEK/SPxW4H2i6C5GIf+p14pr9Amr
	 MyBDQSJZdNYY/03RsyQG9GcZMUmMDGeXwa7M/COH57C4Tdwt12fareT+DAGqUfcqCs
	 lelyFRmQ4LGA0YSjC38hWwZE1gYnT4cX+d+w+udMZEuOo66Kf8r4I22oK6PdkGMn3n
	 PzlsNGNiVAdw/lmke2cttaR7HCZjzjKRAM4/cfpnPE5Xxt/kJGL2OzSi7so/N7pBJD
	 UyWc1ktWKlVLQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 927F8C8303D
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 10:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175162439357.7696.14875531004809863882.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4426c8672ce330a3abc43da8cb462ecee1401b87f22e4c2a7636faf5f5c9fe2f
Date: Fri, 04 Jul 2025 10:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751624393
