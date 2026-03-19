Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 209D73126B2
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 14:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773929694; cv=none; b=jpzg/xcEg+kzemuEm41EPYgome1cvQjKep09NxJeCG1fnPyHhm9iotBveTiCV8QoYL9bIztQcmKijj11nadc6MmLAfW+b/mJLrPEItMuJjWgiKYfCoEkEKOa8HO3c4ey/ufeVcEwi/dUx2NK1hab/RAL3a0wFUfMd/y9GmyB2e8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773929694; c=relaxed/simple;
	bh=sX1sFMiAq6rK3N9HRQm+OYCCr4vh3N8iqk4/eEpOJQw=;
	h=To:Subject:From:Message-Id:Date; b=jyH/4Bowq8jlht/XqkYvMgFcq3zr0C5oV1JxbeGxqdAv+riG450kXOB/QDvwkuwXh+j2pZ/TVM0bY/wF1VK2XhMQsUIdhmk2cmvvZHvM2o8dBthB1w6R8MkeBUa3aod7JPZpMZXksSZar6A8/aVz1TL576zKl00NYeMi8yHDGyI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MZNjfc51; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MZNjfc51"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9E08C19424
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 14:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773929693;
	bh=sX1sFMiAq6rK3N9HRQm+OYCCr4vh3N8iqk4/eEpOJQw=;
	h=To:Subject:From:Date:From;
	b=MZNjfc51eQQ05TUGkc3L8tjdnqBoW+iZdDLVv9DFtlIx6eLLTE3FymyY0yQ7wptB6
	 ZpKl55eiRNO1LFfC/5lBG+FoG564VWJjpYaBAl9koK+Ayq4bRBMAarYRvICwLrlWtU
	 6ya7SyR0pYyDMa1fzWpGu5uipeQ6JPWGH0fUlo++DEQuDVbbp/jQdXlSclFvPJt/F6
	 6wTIRK9ZWRK7/b1PQQL8eDubKgPZdH7KiVCEbEDvNAuw2k5BdPh//IAJd/M7IIJwjN
	 VrFx+zTgy22CuuIty0qd3IQhiRFVhG8W0VMgcrUmoOcCM5wLgzkgkMejKCzURx+DI7
	 uY1XR4pvwQIpw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97760109022E
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 14:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177392969360.17828.2035773911669417693.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1e62c6dbf3f1a59f7c52b02608c9d8a69da293793c7928c846c6b75be084a7b6
Date: Thu, 19 Mar 2026 14:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773929693
