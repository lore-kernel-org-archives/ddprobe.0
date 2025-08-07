Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3204A2153E1
	for <ddprobe@lists.linux.dev>; Thu,  7 Aug 2025 08:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754554194; cv=none; b=Rjz44AmKElRH/V5oWhcabsxdVFOATD61LmfmTAhsxaMl9i2SvVowfuFqEo3FcN+XNI3+d1ghiAY1RgnrFgndeeLAy88IsLpFPTTF7xSkRxplwiCmFnkIJYr8AJ/ZNw7RBqfdk9YE6WDXBkLRoIlfMDv6de1uH2DgAJxVZVH2qWg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754554194; c=relaxed/simple;
	bh=QQn09Vc7L1z6LXVEStTGzdgSWkxtRHYnDib63lA8pz8=;
	h=To:Subject:From:Message-Id:Date; b=iQAlOJtomtlz5srAT4Sr0JF6r0YRmrlodb0S3c+ipDk8juvpgJEK+qDi/HP/FXlgjukaQ+pkVj0nR3Ad1vAgcWmCgNWWCoVrHkppXfW1x3Lgq5uzucKKXMaJ4Zj5Gr4D62LHjPOJFcJEzIaVupC1/5y896HzekY0AJC0K1LZcQk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I3FZepQa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I3FZepQa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EADDC4CEEB
	for <ddprobe@lists.linux.dev>; Thu,  7 Aug 2025 08:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754554193;
	bh=QQn09Vc7L1z6LXVEStTGzdgSWkxtRHYnDib63lA8pz8=;
	h=To:Subject:From:Date:From;
	b=I3FZepQaQTjaZvywdaQS+G4xce9cTnmgg2PEkaS+wbVIiDJp39vI0fdpwDgC6Ns6X
	 5ZKHWe0nBeIkMTdM8vO6E8K2hSbrKVRnVBd3dohpycliE9NjvcrbUt59YgBKeKYUAb
	 N2eQ2UgdOL+0vg+WH9NCkCLBn5egUowIYfQImKqBnyzNdh2mKN0/EaPbPKjmZgzN1O
	 C+seaJ13ztWXH2RF7++YXwxtN7mob9XZUnPztngNKKbK6N0Dm9/nn3qLLsStzFCSA0
	 S/984QEI0CniZ/KS554ZZHM42jYu1eMESMjAPllJtCb5SUMddQJZW7jtPh69mVwHG5
	 Bxd2quFimEYJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EA7BC87FCA
	for <ddprobe@lists.linux.dev>; Thu,  7 Aug 2025 08:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175455419357.27539.17876966428273253269.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3570368b8289bdd8f7791029c1e38b805cd6fdacf9444b17e8104d9b423d0aa8
Date: Thu, 07 Aug 2025 08:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754554193
