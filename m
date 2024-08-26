Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 365301CD31
	for <ddprobe@lists.linux.dev>; Mon, 26 Aug 2024 05:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724649354; cv=none; b=BxM4MxegoWMmapopi74umu1bzhwL8s7eoO0GIH3+29mcERE8Wcv3VCB9Ph8IK4XNM1TaQCkUaaF1l3/UlYWN0w9EHJEVEudr6osDjdf07T4f0JTFvtvoMqZbBSCKq4J1Gqyro7bM6NH3y3ju8Iy60Jb0BB2MBvjYfxW9whmxo8c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724649354; c=relaxed/simple;
	bh=kDYHL4ynKHjuy95Y8lPIiZLCbUttMT/2ua1zGwqk4FA=;
	h=To:Subject:From:Message-Id:Date; b=LUhpY6DEzy/97hjlGaRmsI33mxBFYFU90lPTjEzRiLA7hkCid0j4WCJCGZh5lvTvs/i7dgew5Goo6i0PMxer/FIFSXiy06OQgZAVEYTJ6AUf9qS7SMm1IeR2N/ksDmELKp2M+cCwqPf1bC7pRnveTc95T4cIhTUQzx99sUxA2Q8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WaqVD7ZY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WaqVD7ZY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7ED4C32786
	for <ddprobe@lists.linux.dev>; Mon, 26 Aug 2024 05:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724649353;
	bh=kDYHL4ynKHjuy95Y8lPIiZLCbUttMT/2ua1zGwqk4FA=;
	h=To:Subject:From:Date:From;
	b=WaqVD7ZYYVxE4FjOOSS4BFZNV2b5KigMKl0PdEDVXLhfBIunRjz0QsxbqKdeITyBb
	 SLbcgmvX0xEkb8EpUrbssjihZvGNy2OpGpxB6yxnxQbPxCW7mX33LppDYJiZ12xnRk
	 dZnyO0MyeluUvR+VxOzRao03/WxXxE2Yfu73AyliOfumbqlnbQYSAfs4dTsyJnlrce
	 hU1BqlJ5PymNJ5LXRGWNXhNecbkMVALPpx12qvswAXoYrQeA0ccKNJNCapfiiWX1r7
	 ctyw7vv/QW3mOtludRzpkZjJlH0d2IKKKLYN9mwMWTe+IQ1feFeci/omN1tRDHXPXM
	 OpNCNpC86vImA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A23CFC5321D
	for <ddprobe@lists.linux.dev>; Mon, 26 Aug 2024 05:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172464935365.20207.4548408828910920224.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f9de83551531a8bd94d68d9756b33f3ea346bf33cd4b0c47cef3323f13ca5342
Date: Mon, 26 Aug 2024 05:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724649353
