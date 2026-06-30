Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B63241B36E
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 13:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782825514; cv=none; b=vChWc5+PAp8lkuBeO4pKVXn2mbOt9qEZqMzIa3TePJHR2GRDV0mI/mzcOXILHHMBdsaTfeOJn2p8EK2x90w/m2fD632JBhmS3xNzZMZxGrSyMj3/CuI2ggPs/6/nlyVKKPuPt3OCWR0nJb0rJNcZlHH19VLX+vPiX9pU6IeYYBA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782825514; c=relaxed/simple;
	bh=JvxCuSDnPuRcyTM0A0iH73zmBNdNxEJODQycwS4+UkE=;
	h=To:Subject:From:Message-Id:Date; b=Kzi00C4nfXHYVo3ujP/0YPgLaUxWvGyjvJ8nXnlwlHWezds8hmmox71neBVCZGHfMgqEuMzampsaqb3MHASRsUKm15VkJl2tZ9b3CJ7+E7MJu9phCf2jf7MJMUQecCainXceR9CGTXGg1pPx7x61P3rVIu/vWnAiLm0SmPnEwqo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pFUhk6os; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pFUhk6os"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7F1BC2BCB9
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 13:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782825513;
	bh=JvxCuSDnPuRcyTM0A0iH73zmBNdNxEJODQycwS4+UkE=;
	h=To:Subject:From:Date:From;
	b=pFUhk6os60VPlyceG4pMZleqkM8I0bzXduk5YtKhTwZ7rBrAueKd847HXK1DQRlSn
	 lZfUldGVjr3xOyg9O/WCUkSgb1e8pjLH6uJP+dmRHceXU4mgpDaYer/UfpsTT2HVtO
	 E8B7pNO5z3FngxVS1weAk2Cd3o5fX/Cilz0AA/KcPLCVFkS7onKeNJRj+SGmR8pCc3
	 LJKmAP4srM9ViNNd5fE8x8TvJ7N+iNo0oKGEJkPwttjQUXQqwJZdxJP42EfJPLjpS/
	 t9/dGTsMjJETnwawn4zB3L873IVf3UKbUvhMqfgZN/eZwUYEgLFgo2S9o/baxod9kx
	 0fMb2eZsTnQGg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE532C43602
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 13:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178282551370.12251.5061528707453140755.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3f18c9eb2eebffe4639ee6ce8fd946e2e710eedff365914f510e68426ef1f61a
Date: Tue, 30 Jun 2026 13:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782825513
