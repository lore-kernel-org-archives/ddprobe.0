Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38B6C51CF54
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 13:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792070434; cv=none; b=S1EUBWwmwe0PClboOjPGytNOwD5KzBJqTQFEWWjBHY5yyMGJLT4BviO+ijY91dNuuZdpqJ47cec/8e7R4Ee87/tGMXGl/RqX1OffWPG5PUBg3gF9zX8zpNkzv6/qTGcF7BRDOeJ5VUmWhWQT7pR1Qn75L30Z0D3aa3dGEVtA300=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792070434; c=relaxed/simple;
	bh=oc/H0CGcnvM6eogMsLiF3/GUh7aSeXETIhgTg97tFrY=;
	h=To:Subject:From:Message-Id:Date; b=V7ShBY87E7F1Fvig9zYLbf3NWCDlers38sjsCwSXebmHE5c59jwKFCvxJ8k/E7m0IyyJC91th5d4Bhx55blj6sh2dlHLs46SSrcwQAmbzgPBBzfZDmLxA6bGhKwlDA9uOtddUdBYL8jx+DAj+wXsNj8JX0YZNIJRCSFyFLoiXIo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GMXeWUJj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GMXeWUJj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CACC9C2BCF5
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 13:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792070433;
	bh=oc/H0CGcnvM6eogMsLiF3/GUh7aSeXETIhgTg97tFrY=;
	h=To:Subject:From:Date:From;
	b=GMXeWUJjDHvC3JKXz68EpBFTAEDaA6E0RFK/6kohJ1pNDEcjwPFZ88xRiW11DBeQD
	 1db05qeG1x/5QudqlwdmVd5fi/GjwNkxUjX25lMyBZi6XEB64mgYWVcUG0z53QGBns
	 UrTYOQ9aDSLvH7zq6C/GRngXn3Tu6g0oWAaStUiI7o+ac80GMSwiDIXbljY70aQIIm
	 huJMCNaqDaZTHRRieionYksjo1BFYxoSZUARQZVnE8lNRD7kiCDmP8mM0fpvQGJnse
	 JNoF3FavTAEy4oxRey+ik2dU6kbf/mElfbPem+GjGFPWrwg6ZA6ME6yW23VC3bSXUk
	 5TkoeUmd4/Lqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9EEDCC6B33
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 13:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179207043368.21107.5826965317318025753.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2fdc4c2bfa4e33bff60276dbaa2ea14689b67f22cd04b58ebf89423cb89f16e8
Date: Thu, 15 Oct 2026 13:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792070433
