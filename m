Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6745947DFA4
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 16:16:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781712994; cv=none; b=OA9cxmJ6MojDg2yUC7I474qIkLG1WxExxe3zJaoLKjl8f0p7Cc+SH6Bz68KO8WlsvB7qmYLDlxsleMbbNLJkV8ZhoJm8tSXhMeLx04/LYnr+/kimo1LnVHlONmAYpNQt9Jl3DiDF1gCCi3Iwma9SwM5m//pgW5dbkxpzAoVGSeU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781712994; c=relaxed/simple;
	bh=1h6MPfByBbwHj/SIyD7X5vsG8l5l7bsb4Ve3orEeAcc=;
	h=To:Subject:From:Message-Id:Date; b=ckED+88CZZquV4rRPUKZOxLZ//NnP/NT7Kg+k7OwMjX3yb9RIz6caRHFZVNHQ7D6JvY6c6Nax1q2U/+l17daocF6fdm+Eaq5VEBeO+i3v9iWT0SxyNdrl5gvQNv4g6iT1DpIczN7yuTNGkZk9gklMsZhCROU6apRNlGxDp783DQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OCQHLqA+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OCQHLqA+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBCDEC2BCB8
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 16:16:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781712993;
	bh=1h6MPfByBbwHj/SIyD7X5vsG8l5l7bsb4Ve3orEeAcc=;
	h=To:Subject:From:Date:From;
	b=OCQHLqA+CuS+0sr3/apaSaXpv8yW9MC2U1a99lunB0Wct7/y/xFBs3inS6kEenNbe
	 IfCfZqkRnpcWLtMj7Q4TkZl+AhvyELYfRhZdkUUtsXZ/vNmeAmmnRs0J2RNMcbG2lc
	 AbzCBphF26noKS0CMzDAJmtoxf8sdN0iPF9NkYCcojfj2coLH89dG5h3QtV8mXOTsV
	 +g1iiR3ZDxceExqupX6NLa8Slz9MsMBhRus7RfjAJoXf8BQkXjAw3HfIHtqHL6PWyJ
	 05XUVoK/rDZd2q0eZhDIP09UHFPUrLDuWBGWZf19dow/M5sDPr+qpNtaBjunt0SgYL
	 JMF06gOEXyi7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABE81CD98F2
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 16:16:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178171299369.3450.14213839671718545965.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5c553193f588c4491f4ce6d06b0de09297174d34a1c7111b951e0526455401a5
Date: Wed, 17 Jun 2026 16:16:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781712993
