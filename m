Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2451728851F
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 06:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760595594; cv=none; b=KXXUy2ImtxWiNboq9Q/0ts8RSWVJ+49ncGi9zqQzz00gmZ3/NANeQ9yS0c9let9KfIZUClYwMIBWsHemKycodgBosavT9peX7Qk0/vbv5Ca5dHCUpOHWWbSJZHMF2tv1OPBk75wwL1EGN+9UzjR3abqrC+tOmA5rf43MeF8n7Zc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760595594; c=relaxed/simple;
	bh=9BVTeI2THcFYPGZx1HdCI4HYMyYAMF6e6jaVqQ4KExs=;
	h=To:Subject:From:Message-Id:Date; b=eQs/0KZlscNMEYkJJDuHG4wuE7/L5ceYY+Ha9nKFzkRL8EKLaqVbtOkhxGVBsn+LPvdUQNrsuENCb6dli2qfk6tuc3i8B31BjIAdPeaBoeygWmwZ9qITDPNN7HrjWvrAxs4wdYIiATWYOlAHMun7VRcXcE6NaFN6RNf7dNDEox4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Mw38DquS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Mw38DquS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9ABFC4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 06:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760595593;
	bh=9BVTeI2THcFYPGZx1HdCI4HYMyYAMF6e6jaVqQ4KExs=;
	h=To:Subject:From:Date:From;
	b=Mw38DquSTaRnArm5bZD91WtmBUmhrs8FSFfTZwlPalEUu9ZcvWuLonanaGKUmvoS2
	 gdtyGL2+L03+xTMp4p4i1fHsSGT+XoM/w5AXzloDxLwKrkzCX6Z3RC52XWn98J66z9
	 Ay0hv0mjZ03p4LJF4nzNXXhEKoKNsqgzXtTSUtr8N+f/dOjRCm2lv2pkmE09S7iIrG
	 mruulZvJ+xPQ/hktER0OjSV6UvWNH4QltphMW+Oj0crWQQ/8YMNmskSft6/VVxu4ys
	 Z+MUPdl92q6f4rT2DJJ6FIq9JoTWGzgq3tzeH2nm4Mebo1+zTLnqgVpYaWB/8Rqyyb
	 gy0r8cqTz2W2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90756CCD183
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 06:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176059559358.23655.8091509442297332969.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9b47643f839706835e51a0bb2420cf9538a2c3a96a9c7985163edf955dc53dce
Date: Thu, 16 Oct 2025 06:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760595593
