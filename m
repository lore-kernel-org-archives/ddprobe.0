Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DEB3376
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 07:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750664994; cv=none; b=gYpmJOiFCkD1gpc4TB9Ubk/di6qHKAIsACAka39deCrBtPTvdM5hTwDfGMz6KFRCkvhqcUe1gEioSCvfgcm0KNejPgN54Rgw3/ZhtvvqtnVf4oVT0PvlGvkblUfLcVtnmG7Eu/Q5WAKT9oQrQpfIBgSsKLlNfE9/fkde7IkRfxM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750664994; c=relaxed/simple;
	bh=z/6mCQLI7NErxz2UjHaPQ4ALEpdkAavbCuy+LvB2pQo=;
	h=To:Subject:From:Message-Id:Date; b=gUtBmXn8iYyc1YMcwI+XcyHmYln+3p12djamSEU1ouRxq9eunMgbThfwMwP16TacqeActsj7bgAJyQNJwQ577D1++NJAk8/1KUeUViGQrhZw8l1fpNwEiY1gd/S1k4fN0jOEDQy7qkYX8RZ3KRgTjLeMwB6NU7CB5n7nCigsuI8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OfBu8/S1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OfBu8/S1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A01DBC4CEEF
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 07:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750664993;
	bh=z/6mCQLI7NErxz2UjHaPQ4ALEpdkAavbCuy+LvB2pQo=;
	h=To:Subject:From:Date:From;
	b=OfBu8/S19EVyJaA5+ym7XW0ohFaEFbKh3Iz4PVtrFCLOU8qxuy+aL5Eq6Tba222mF
	 h7SGt/MTQ4W9N1wycv9fc6u9w+GYbYl+lywq+2vKFp5DT0+KRH7eLqoTkL+BSSaI/C
	 A8yrhK/AHLPmvBOVYt9Cf6/8iCmnJTxIamLlq9pN3/Y9a6D01gH7fiktYB5iBYSqqp
	 ubhI1tkZrCxobNW3M+ILcGt6QpORSlKWBaIuGcuZxP8HJMMAHx0pI0pe2FB6Xr+w5I
	 ku0ILs4+n9BZ5AIfio6ZpIgoVPW8P38S6dI089APhsVBahsYiuhWvD5WSOdwvRhe3B
	 Wvp8cLqPjv/uQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F038C7115D
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 07:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175066499357.17936.13379381127131046634.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 76189dd0d6b335318195c07f4a3324ccebfc68e3cd498c2474d2280f4a71dcce
Date: Mon, 23 Jun 2025 07:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750664993
