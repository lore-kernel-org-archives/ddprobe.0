Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F8E61400A
	for <ddprobe@lists.linux.dev>; Sat, 28 Sep 2024 03:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727493354; cv=none; b=lIbwS1wmGxFJ0d4wpxGa3k+MrAE+wgYTgf+1jtFDCUlAd371ZInPOSULo0dh8cZMS+bwH21JIFbH6ijYIWoDu0OQKcVi2CXD2LlcJUZxuZNE4aSzPjUtXPkXSh4A9zEbFbf6VYuStDLAfSc7/R1JAiNIpbYedY1o4SWhzbcjyCE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727493354; c=relaxed/simple;
	bh=aSfvhIY9qTualmDGIuxeO9/Y5bUdacA4HKi1LbnPUTg=;
	h=To:Subject:From:Message-Id:Date; b=Z87MKCVj/S/ls9DWgAXiz39b64rV6IVaAttEz+t5ymPkRsZ3aq9SoaIJdeq3w2izSKEUVvgVl7FdD1q4xyDyRmmX2VMUQPzFLpY39R9d5GCrAj7qsSyzq3NHGc6cyWf2upTtjnvF8+5Z/mWiG6w4k3r+3R4iBaotMwwT/U23Gko=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YBMDGVqq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YBMDGVqq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEDFAC4CEC4
	for <ddprobe@lists.linux.dev>; Sat, 28 Sep 2024 03:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727493353;
	bh=aSfvhIY9qTualmDGIuxeO9/Y5bUdacA4HKi1LbnPUTg=;
	h=To:Subject:From:Date:From;
	b=YBMDGVqqEk9AJ4fS77fq8GmEcsaMIxvZrtA2ZGE/E1tsvGt5SkcrvdCd6QV60E2u7
	 pXsEvRTtFJI5FlK/GJUIilm4APYTtzcReMuFzdi8EAnUuxleU/TKVDDMwdNt0zr/v5
	 lnqPuZ+rHZiciNeXWnRC3kLpAcR1jk8LB/OlUlgw6T63D7XWn0Ryrca7cZQ3p1BbHN
	 uTWkCp64B4N9NsI08ktrOiUIdEGdUqAWjFGikXDowjtvAYW1bPLcu8n+ReGcqbOspR
	 4OVEagYkF79UXVaqVVGpmiw0BVfc11krMZwJZXlSHAh+PzRc9OEZIq2ZCf3j9aEgcS
	 YvaeS4x8BtF7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B1CACF6494
	for <ddprobe@lists.linux.dev>; Sat, 28 Sep 2024 03:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172749335359.4800.11867032968740100326.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ea1188e586253bbeefd861ef5d942e281ffadc165e8d64c80ae1aff23133ae02
Date: Sat, 28 Sep 2024 03:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727493353
