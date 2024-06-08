Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 681A21384A9
	for <ddprobe@lists.linux.dev>; Sat,  8 Jun 2024 13:27:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717853243; cv=none; b=ht96pciLEKdBbSp5pa31NlbiQf1Vsv9yErTPEJduNmvOtxmAEHpKIl1Ipxtiam2K7jKMbph17amkT+WPC5C5ckdn7tdQLt5Q/63huf8Kxj2+nhkNQmqQA0O3MXy4by4qqWeEmSHgpQ/ZpcKOggfKJJwe/xy3Z50z74dlpz6QScY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717853243; c=relaxed/simple;
	bh=E00KiGelCLItUoAbyq1U453wd9/JzjxpbDxazylQIZw=;
	h=To:Subject:From:Message-Id:Date; b=XGCUl1GuZy9BNSqZDfbQH7t82SJhlOrDTJV6OZYTXMmVjCjWJA+pGtNt9+Jp6ScJysep+XzjCKCNSkTmUHbGsFCgst7BVdeKa+bG7E4+M9Zm50tXhQzhgSclVsof9Z+63TRLgBMduWQCcPj33jP0M4CYQDIgAr4iDfJ71uKC/7s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JM51MowA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JM51MowA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E20A3C2BD11
	for <ddprobe@lists.linux.dev>; Sat,  8 Jun 2024 13:27:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717853242;
	bh=E00KiGelCLItUoAbyq1U453wd9/JzjxpbDxazylQIZw=;
	h=To:Subject:From:Date:From;
	b=JM51MowAd3IAGrNH/uPjQkez9StNrX5jKwiJ5gWQoaCx0c2sQ132kDJf6FV9SI0M7
	 B8rbt018Byc2ffTm5wwqwhYmCi5FPCQ3IjzG2R2n3fm8A8IOHTVSnXZSXdnxk6TzXK
	 eCX72amJ4OPBatr0QBSrGZcWJnmid1kKJXTBACbW3FBGpYyue7/YE0gczP+HcaM1tp
	 HnBPXjxN2TiQ5x8BEwAKbAxxgfQEuzlYQIDWMxLGt+U/tskRekvsPoM9VbrNgJRd8b
	 1bmYcsZb86nbKFR7gBls1mg8ScWzMXcrG+bF7Be9O2rt9oHu1C4efrFApthaSFOzNY
	 jdcA8eEl68Iow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CB567C25B76
	for <ddprobe@lists.linux.dev>; Sat,  8 Jun 2024 13:27:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171785324281.30350.14048190268984942441.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b8af4985a5d0dec7554eb0e93c01d53baa4d83f4e44543780b5f18d7892efb7e
Date: Sat, 08 Jun 2024 13:27:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717853242
