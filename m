Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D21D8F4A
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 03:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755143994; cv=none; b=oTJsGv9JcCuSuY23mEsISwTDJequ45pk3j7sntwZveMu/7yuLtNyASLEVoXOFdWVFR++oXdQB+wHBGUx2rJL4LWpbXjk+DIvCzNIuHJ25rQX49w8wt4y7HloV7lnNcWMXefuOLQbEWOz9JaCbIXYp+3LpVhRhLcmqXJ/wa0DXzU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755143994; c=relaxed/simple;
	bh=VbZOK85wRwsqmQlhM8vMvyO05fjUSW/ravPrLOUpCn0=;
	h=To:Subject:From:Message-Id:Date; b=T388mhoMr23eAMkh9vuuzDY+lDIWxmNBsP8xMRAVvGmmNCbs2xohoOoqx009OjR90X3FHVpZYAqY+Yb5BkuhXZjDtokQTjMOBJLH/+U8e5X3bz2D2RDwCzlZOrSv5ftG9ohSVsjwOF9Fob4UuXj8kU8pHWPULRrBUpFdZc9VWAo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l8Nk8wIb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l8Nk8wIb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DDD4C4CEEF
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 03:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755143993;
	bh=VbZOK85wRwsqmQlhM8vMvyO05fjUSW/ravPrLOUpCn0=;
	h=To:Subject:From:Date:From;
	b=l8Nk8wIbl6YBs7kmtN1PzxHifSKdloSYT+maIL4ZmAKMQiyviYCloLgNnszukjmt4
	 2vZq4VQwTmNi08qyR5hryUXbTZ/nRB//MM++V0y6GbEijZM+L4y4DgVxWoQ00REkkL
	 DD9Md6Nz8hCItGfxyHOvT3WAbDHKUpodruqPoklOgvLqhcIvVPLQ7LjnUzglgMOog+
	 akxEWm8HBLmbrJI5wuG7qtzHO0uAVOhoLueACq8hXesWGQJxuhz4BM2D9lx2Dlc1Ln
	 o95YQ94XH4SqdKNXjz0ycRvkCDoLrZ6++jpdlnA44Ek6UvUn2lD5QP3vHdDj61mf3K
	 1Jk1udZoCD/hQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F2BCCA0ED1
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 03:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175514399357.13874.13831171673560838197.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e700e0c4f28580c6459b8e78ce12f8c726fa9831a979b1bbd546f433d931f25c
Date: Thu, 14 Aug 2025 03:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755143993
