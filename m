Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A2CD2BE7AB
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 04:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759896594; cv=none; b=twLrK2LZ7GJBBgifNiUfok5yY2NnNQuKErgPfBJQBPSoz120IatuztqhgY+fGdej00qSsI5ldfiR2Dpa4JJvrHjwx817+dyM0r9Fg2UORfDBYUL+v/G3usrMhuVmWw82RigPiaP0poEFs6zzkNw6Apv+cbkHzIbByS5+0Y3Npps=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759896594; c=relaxed/simple;
	bh=mV89h3Zfvyql9QhZ2D6CuFOn3yAhunX/Dnq7QI8jNSw=;
	h=To:Subject:From:Message-Id:Date; b=UTQYUjCQqvjqibWkfXTfD0cO/hBf3jzPBO+Wdp59OTpij+Llm8Th9Ecl6fDpECY8m21NIkbdSiRkGEHoz/NPZCgEez3wqoD/7/8yqsPGgejBke0bGo0yOdnnN1k6r6WtQP34xdOsB7/i0Bag79ozz8OsJwDNP0NZNtSVqwtJXTM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=srldAgVN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="srldAgVN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A40D2C4CEF5
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 04:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759896593;
	bh=mV89h3Zfvyql9QhZ2D6CuFOn3yAhunX/Dnq7QI8jNSw=;
	h=To:Subject:From:Date:From;
	b=srldAgVNdXRH/2iTC1Jm9/Ax7F0zzBYyvNCOs/tFYk7xKB3lmRbnzUVpA+zu7mKoZ
	 8xydMcwpFwoKnka+WefT0Lm5RLfptQVqAgT1spNFo2772p1kEi3LHJZIhgXeXtQthO
	 2oBXsoxthjKYYXK/nj4l8l2blHOTr3ngNnIxg5I6M7B042RSN3fBBtOyv4SbPZYGZt
	 1gfebuLCnsLaAz9XJ6Eai3uFhv8bGAj9oPdOnRhrdf73aOykFosLnYfiQknhaymhNd
	 Kt6hnEXNX+S4kylh42n0QUYCeb4xbYgB94hP60i2NtlS4Gs3Kl34FsDLq7VNiveOOy
	 0f9QTNZ/WnrQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90F32CCA470
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 04:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175989659358.19818.13032653777750151746.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 502bac4687cc67033416dda3d6718d0ac34af5aeb26d194d91105f9a76da320d
Date: Wed, 08 Oct 2025 04:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759896593
