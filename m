Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F4B830EF96
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 08:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761035994; cv=none; b=d/Ks51gKISVQ52T0bCLxSQF/CJYoLXfYee7DL41xMrH+cRLFIkKyu7vsOuxuxPOwSt0VKqmcXTrTE75G7IZRepq3JgknbQgHisWnQWZWWi3qOamC9+YqPiRbmf1S4eWgT1Lx4BuWBVdo+JcPAGjjiYPb96thueIUr9BxULNaP0I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761035994; c=relaxed/simple;
	bh=rApchpDsxSYox6fhvUeLHiTM6SV1BUUEPzzLj8j//l8=;
	h=To:Subject:From:Message-Id:Date; b=QPLcGOksIpRKGFp46N4MKDGwBDRlkI+IAl1/dVX/0IV0A5I4Cn28U3dqnpddiLyppx07dt3tJA4tFG4AM5mSW4UyJ10xdZgGkFhePJWQYL2GcerJKrTMm6Mf5whetDkruDditiV0wLOiYao8GXName6X5yOzNODXQNu1UOExNSk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WzB5R18V; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WzB5R18V"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E29CC4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 08:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761035993;
	bh=rApchpDsxSYox6fhvUeLHiTM6SV1BUUEPzzLj8j//l8=;
	h=To:Subject:From:Date:From;
	b=WzB5R18VCprdWeRGpjkYTim6UCGFmVs0n5/1cxm2/7R034NWCiAoLVV/afFWwYZrf
	 1KRBhEQWL/e2RiYUDL84tVqzpH7aNfpZtzuI87B5WfNUcWYGtEmYTRKQ19PzxGLB8j
	 07sBTgWQhsp/NkPsvFS4bC32CpFxOweVn8hZS0aO0RiNtdrK2vP6D87L32m3LqXG1C
	 n99iXzKrFy89/S91egYHg/ZCuf4vfJMLH0gkQFLBy6o7//H+bBsS6ZfW8QHeW+eGrO
	 PxkJ9m4spBtGZf6Q1dmG963J+KdD4N0zoodtn8SScr6p0LobmJSuI0Erxq2wD4+0BB
	 GK6ImVlAE8/eQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FCC7CCD1A5
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 08:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176103599357.6342.6633146137340729949.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b329462338e2d55634303f3c659314e41083c9028d9053ac4200d21c668a445c
Date: Tue, 21 Oct 2025 08:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761035993
