Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 159D3635
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 03:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753502394; cv=none; b=r++9oBkKPPb3pFySQzptK66eJRBwPTXL/0/ifH2gIGNrhvDuvsK6+Zslo4TfZ+ciAHDHVzOpJ9cEBVnTJa2oACmIRuoMFwEJM8QL0+WHZDBVbl873yrkTbWcBwRxwTvVwLt4TbXhF+h+ni0O584mBcWq6hxzSGVoTrJZb9nnSP8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753502394; c=relaxed/simple;
	bh=qIe2j1y0+D1/wRiYiz2zNxArv/sMeNbX4AOrUD2hUHs=;
	h=To:Subject:From:Message-Id:Date; b=ghk61pyTvhNjmlDI4AnM+DHUaMGv7lh0vT3QlT6sz13M5Bux0k70FY0s1sHIVnW+KaNduPzfmRSPpspCR5lA0ZJ4xT57C4J1kx3LQlbs3SGt9W19ZCC2zCVKvXM1A+0BV9XL0mWwjlwP0C0eQy3wAWfLojouNG+tQg29Hapnoy4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ktaIfSlZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ktaIfSlZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E50BC4CEED
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 03:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753502393;
	bh=qIe2j1y0+D1/wRiYiz2zNxArv/sMeNbX4AOrUD2hUHs=;
	h=To:Subject:From:Date:From;
	b=ktaIfSlZjYwPeo8Q3kX0iLScBHQrrIpzyoQ2gIKfqr7GWJzGPFL99eQTp5zY960Oe
	 KC+/uMgsrD1WfQIt6x47RmeUeqmql8q6Z7L0VuhsDs6sJXzw9W47vx3+mOT7s2Orxy
	 nKBmDc+KwUHGVK2pyQudj7Q4bU8Fgj8qKZVVUZDHnDpl2I5PqjoArIiL0QTMfX0Uqq
	 R2SR8oHFN3ZomJAT4/8pLCUGl3GDgpGSUnbGWuY2Xu3mP53YQNMHYTy5h5CrXJY6JU
	 IowzpZuBFcfFYq34uOdBO1A+UM/zmCRJyHSHCeXsqBaK5fPYqu/MLTHdb4SLomqUlx
	 8ltqdPOdCKYtw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F395C83F17
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 03:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175350239357.31820.548935811318731182.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 76cef037c770e81da081b0aa618695393a6f4fcf55c78804d73674b0e4fafac5
Date: Sat, 26 Jul 2025 03:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753502393
