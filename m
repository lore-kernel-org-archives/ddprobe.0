Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F852EC4
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 13:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749391194; cv=none; b=jwxIXeR3CFNIpKg0eRZQyZ3U6SBkmqdN2IU2PkQXoDX+26TmClwiF2eQkUFmMr068nwoAkqJKHNCVD2kIsgYD1y57MkhsbBwIFiIzePhIbKKU+W1sxgp8OkvXcA4efNjP/sTVYZ8p3pLU7lNjASpqAEtJri2oCkojzpHSmxvURQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749391194; c=relaxed/simple;
	bh=RLit6IzL+y8Iijigb81BfZGXAECMmPAPJzbwSOI8DxE=;
	h=To:Subject:From:Message-Id:Date; b=CpEVLP5p7nETjhF0V4b/vRh6h3yjz5Q0lVLDqGDeNPCFIMxST173067xbyzntOXnXa8FWirak7CorMNi9FraXqmVgckuwwriD+cGVTOz+39+fBvZ1pQZA8KgHXB91VeZl6dx+oZQnNDutA12KKH6wROiRdOSOjcHEzueRtAXqf8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cRfG1Dwt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cRfG1Dwt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8017C4CEEE
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 13:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749391193;
	bh=RLit6IzL+y8Iijigb81BfZGXAECMmPAPJzbwSOI8DxE=;
	h=To:Subject:From:Date:From;
	b=cRfG1DwtgVzGhxo/bJzA/4u49Moov5ZkfNGgSPPU2E2sP60KAxaIvjfHeRE5Xos3g
	 B0wzPn5OWuAVl+WYJ3Se6sx6Ihn2GRUVJnKbtRQ3nRIkiezmUfQvQc/yYuLbm6e5Kf
	 q3l6ZvUGXsAk8RhwVpbT4TmRQnp3InrZdN3wsuV2na2//X3CgXa5PhmJXTDiytrRqI
	 Oc29zwLeyGn71iH/f3EBqdN1ZNnCQEgPExEDm/jX4/WwsefKrXgO/t0DTCGbg+EvdA
	 umdH1zPwdlTLvmGL4wkCCuS80WqDKbyiAg3FJvg9/0G7Z0SS0B02ZYul6y5S8eTm3G
	 GNBjkTV/uqBNg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 945EFC5B552
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 13:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174939119357.18836.15867388600896408041.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 053f1f998b0cb666c376d6830aa07fd147fdacb24b2b0672e50826d9bf6f936d
Date: Sun, 08 Jun 2025 13:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749391193
