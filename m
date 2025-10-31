Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0998D2F0C68
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 09:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761904794; cv=none; b=s9dQZjqX+pAFGdWC2pkR8w33egnC+qCZ2Ovq+tgbIbTNUqb6ETE+Kgr0Wh6/hqs+0wT3CuViWTmVb7HmJTsHuZJwcxugvaAGR25uzjfGlI2pQqknB4rtRHCNZzk5nus5FPEJ4om0VkpZ2iifk7nqxyCm6efFMPEEw3L3FnQkv8k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761904794; c=relaxed/simple;
	bh=ZzgJq7yxSqx/cxvNbvBYu2+wPbZlXsZmCyH53FT1t+Y=;
	h=To:Subject:From:Message-Id:Date; b=RaQsYOnFoQ8hH8uhXjFwBdW8zK5zdy8YmYzN8XYPd7IcU34oJSVzyIR3cqI8QXaGX/wEWzTWTZPqGGVMqm6Tfz3HC2it1hy+r3DdPkpEqcfk+5ULjG1N8O9RgqSp1NBy4yuJlllROBsT/rYxGXVWkriL2vJVgaCLly8KzhzD89Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dEFDjSeW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dEFDjSeW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A96FEC4CEF8
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 09:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761904793;
	bh=ZzgJq7yxSqx/cxvNbvBYu2+wPbZlXsZmCyH53FT1t+Y=;
	h=To:Subject:From:Date:From;
	b=dEFDjSeWCHiat7siSKeBvJtaS6Dyt0PCdppGM0bZ6CYBssKsWVR/Bu09M3PTDX3nP
	 yXcXxRoqRQtkqFz5iU8Bh3v1FHe4LeW7vznq5AHFedMKBQmRplENwkPlvlU8q+1Fzi
	 DJ5lL4cSluOpRxS6I5RLppGB3tJO5JiogkkaC5BtUoiuNGpsaI+gAfTXNb9+zdNz1c
	 xGgN/a7I5oBac7ajUAjgABTxxLJSJKmsVnhKtjRnUB2metka8dXLwStl3oTWVFHGws
	 N1G6VrzxrAFns1PwZ6kG1GO2lGA+m2d+DwP9T4iLyqHJp3Kn9I1xDkTAKp6x2kElKV
	 8H3Pn2BLmap5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99A03CCF9FA
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 09:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176190479362.15708.2312188138694082346.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 554f443ab1ca2631810829808bf2559bd4635a461e7a285574cfcecae3f251c6
Date: Fri, 31 Oct 2025 09:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761904793
