Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2883019F137
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 15:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769701434; cv=none; b=cGHG/h+s4Tq21Y3sVXJnPS2P6pNW25YGUMVqdJxGu3yDSHY02DQRFK/+pqv1a0ntY6LZEWxlyzpTwmL7hiJVskjY+TYlYCUZwMUlT50Od7iei6TKurktmoitN8BNYuapGwDY30gX3ZHSJzuJRnypr1tqCXUu2WssszjL/FMP+JE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769701434; c=relaxed/simple;
	bh=/wBahsQuQTR6Jj4gR6FFjbDuxWVJGI92Fc/4oj0QP54=;
	h=To:Subject:From:Message-Id:Date; b=md6DaREtCiVR5YGKd2A/uyFWb3Jp/LzIRPfWCOgWPI3gQLsu7z4HdN4gZgYwaFGE7kTD3epGFipiyVAsEjMEL4yfXae4p6KgPn6ESj+BGLmSsuvSP3Hh3OOu1YQdZoETUiWsHNLBsPYRIKm3a/R1uIcTJ4gjxOnXrBVFFeX7TJk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KXvOG7Df; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KXvOG7Df"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3B7EC4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 15:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769701433;
	bh=/wBahsQuQTR6Jj4gR6FFjbDuxWVJGI92Fc/4oj0QP54=;
	h=To:Subject:From:Date:From;
	b=KXvOG7Dfe/cMGa3TqVlRTegN64EKl4yuwe3f5c0wmBAiduSQ2lCqOhZ4T5/af/B4c
	 5p0WLrPVvS/cI/UzmIv4eK08KjIlocymNKgaYXfhHyFf0QZtLyFG+hdeefuFJsG8Qz
	 dxk0xq3pBN0yG8osysBqepnfXJIqCEvDLVMlxRzKb0ibjydlWTobb+IuYbO9OGIT5x
	 c6w5Dvfr9ZtnAZ9ZcnqoGuEYeLVVA8utE07lZlIOnn/7vGRs+NiLErQbvocacVVUT6
	 zYAOZs2GN/rowGL7lhpF/gSzsyelXDCTSZ2yXjO47h0FpnASKZD6WJWTXR8RY01Gjr
	 AW9j//6p0YX/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92322D6B076
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 15:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176970143358.10250.447518928801513491.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2a82cce1d7d7dc4a3fe44c8fa21de148926951718f398a0f3b42e6aa4f88dfee
Date: Thu, 29 Jan 2026 15:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769701433
