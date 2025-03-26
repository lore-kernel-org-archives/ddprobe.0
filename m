Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E0F7823E226
	for <ddprobe@lists.linux.dev>; Wed, 26 Mar 2025 19:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743017994; cv=none; b=BfKh2k3N60SzHiYbcbOrbvspo1Ki53nDZ8UcaPOwSTZELrTRzk3SGZEnHK2UHmogit+OCtiBQu6yutNM3AoHTUOLKvIMOMKW56dh1Er/ZBMJ2Gl2hcxDXVZlRsxNorXBBE6DRnfE+ur2KgzEXH9U59JtLSZMqaLrBfKhBlEwUj8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743017994; c=relaxed/simple;
	bh=ZvcI4eVJ98ZHADsOdaujoxlAQAjPKHI2OpLH1b2S+v4=;
	h=To:Subject:From:Message-Id:Date; b=lpa2mMeIKRNjrK/tpY3Cq9Wajt2aCJTpa4sQakRODHzQZfycmnN95Tk4Tu+TaENvoUPWndLvt0X0x/vc4aZPqeLjBERwUlkRrb0bfFMl/V+0CHd9kzgFJfKiyv+OT9QvReWU2NCiNv8AGgvg2G/OCqkHUutLrG1Bjo153e4gac0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rlbBWXjL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rlbBWXjL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5C7FC4CEE9
	for <ddprobe@lists.linux.dev>; Wed, 26 Mar 2025 19:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743017993;
	bh=ZvcI4eVJ98ZHADsOdaujoxlAQAjPKHI2OpLH1b2S+v4=;
	h=To:Subject:From:Date:From;
	b=rlbBWXjLhSKO0PKrpEqZz3QVURZ10J/gPa9wlWY9izpsoE8V6cXJaCZy8tyjQEGQB
	 I/qswHbDtsgZNnrg3T0sbAXNNKyBXFTEF7nGMUtM8NKWrokPJMDVC7Sbxv4uLrq59C
	 PplhoTZwMeZAziuMZW98BYW2kk+L4oQ33MoriFe1rPbY1oFPrYWcpSVCESANOQzDQp
	 GC4XgwoHXS6A/54/tERm5WMRWscrrK8fTB/P9O69g8J00ShoMGbsMOlgZr4ngAi8Hf
	 aEP1BLNDZ54VGdcrgmkc45Jpj7QZmxtVJJElQnSqum3wiS//5dIaKk3OGoNaGnG9qa
	 qMJe5my83OXag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D8DFC36008
	for <ddprobe@lists.linux.dev>; Wed, 26 Mar 2025 19:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174301799363.15978.9536543872051981543.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b35a6506a149cd8a35923337e2dbdcaaf769e4b06ee99a2400a02459ddab5a19
Date: Wed, 26 Mar 2025 19:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743017993
