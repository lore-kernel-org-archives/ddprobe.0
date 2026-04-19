Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38E0C2BD11
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 21:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776633454; cv=none; b=txhVwEIQlc8x6dRQsmyWFL2VbZX0XYkQ6lqQX2a6DzC+KXQeGyU+JAjiQUs2nzTEToZPrAdAcIFUCYhpyiEnoP0PQeASucHKu4ss1KH+2RRP/gfitmRO2Kke84mMunVaGyMsHwsXVcv9kqrToegyQyJRhDTz28zY2FmQEKe+oTc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776633454; c=relaxed/simple;
	bh=1k93QLQ5Z+vHIIaDg9cYLXxSNn95SVvu/C3tLiUKSdE=;
	h=To:Subject:From:Message-Id:Date; b=lLRnkUCuCXBFfHpDajCyj1RMk0+e+G35QyT6YVhI45t6IcrNotMdLtdGiXXJIAGL+JkCj6/Khd52ap3tn82FK8FfLqARwzQquTeFEH844GVY/6SWlfFz3l1/xMkDw36KY04kBhnxUllUzPiimqwPT/fLtRkECghgPqvau+eAzLA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u/AZ3AmD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u/AZ3AmD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1729C2BCAF
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 21:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776633453;
	bh=1k93QLQ5Z+vHIIaDg9cYLXxSNn95SVvu/C3tLiUKSdE=;
	h=To:Subject:From:Date:From;
	b=u/AZ3AmDq2drM+TrhsPffm2Jb1Lbse8PN+kPmFUxK3evDtZs41Ukwe8qHHJVug54p
	 5BQmkQ1Puyf0IgSFEHw5x7yglq2Q3ON+ETJJ9do6/7wnEVL6tbjeMj+9KLyHNI8Cpl
	 nP5+TFc9YgWUpbz04q7O0CH37mTLX9EsC5nkSc7XJUxHdhg0lgIJhjWttpOIU0GVHz
	 abfrSCavIpfPUq2/tUJXu8OQCd02F3BOiPaZ33yAbCHn7bYhc47HFUNty73fTsjcrU
	 vIF+xWBXeKfDM0+ignwa3VeggRqAlxRO602DQng5P+DOw5euMZxugDfrYpNi3/VCCd
	 6QXDdHn+5XXbw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF0C9EA71A1
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 21:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177663345368.1754.600807054087765480.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 59f3a0bb34a61098e58994cb0f9b1c5375f20f078300d668ba05b473da1aa1e3
Date: Sun, 19 Apr 2026 21:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776633453
