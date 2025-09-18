Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15B172F5A08
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 15:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758211194; cv=none; b=MUVRkxo41aV9GhigPaOS1WWDyAyeDljUHKTA6MLSQKYg4ZHWOMuhu0jhP75/E9cSwbADfa4c1uYJMF5l1J/DGVD6YzMFmIfxjccXeOZElptQQx0H7oa47jJwoxObfyt97dv1rPbuaXPfieOHGpZPqWwfywz69RpN+E9sSkbGFPQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758211194; c=relaxed/simple;
	bh=VxfEX82hg3GmxdTvNi3yunzIxV69BGRt4xaTlWCG+G8=;
	h=To:Subject:From:Message-Id:Date; b=k1+1FLDPdBjQy6M0tnZsx8xfgctccBGt46p2xnAZepuvOiMm/quurREY9dwdZUqDb69WWzFm/DiyL1ngechn67r1F6K9vEFg4dpbVlX/Z0PEd9c9pEK5GH6M9epwAB/RRp/vlX9H3irAO4bhVStXUvQodT4nh7nZ4AAThbUvrOk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OXkLdI4G; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OXkLdI4G"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EACCC4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 15:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758211193;
	bh=VxfEX82hg3GmxdTvNi3yunzIxV69BGRt4xaTlWCG+G8=;
	h=To:Subject:From:Date:From;
	b=OXkLdI4Gf156Gwz3O8xUg/hdRBUh7ab0Kw9bV6pzfD6I7U0lqgU1MPAwjyj6/A44W
	 8jjN4Z8qPpER9LLt6ZWFVhZ+FHrelvuDPZ/Cq9nNKwisPlUkBXQ26OGXBKjUr0a5gl
	 VK5ax8cpFrvY4P/yfVit4mf+3Ed9FagHvCFxt5LSUoqv7ta4KgbaOGP8WdxkN40De7
	 546xiFGQUs8jDOFRJxttupa5OMin7qZFFf5wCL2+R8+f26P8D4IOUlmp8NCBM9CcdC
	 jC77N/7sqK9U1Jwz/9EivHC9GT7jaEEMNv0yY9IOfV0lehOKB83ud1GnIKCNJa4Xc3
	 +6ZbTzzX0fLrw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F9BCCAC59A
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 15:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175821119358.26254.9127730974430664742.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7553505a5296c8004e6b57d08629597c6a0f9f398f13f41c624b4a9067227ac6
Date: Thu, 18 Sep 2025 15:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758211193
