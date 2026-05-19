Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53C6E48C41D
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 10:10:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779185434; cv=none; b=YZ7xo7JkJrJEA3D/jf5x54owSXFRQ9n+wW9VPaaBOSIx1ps6mq76TzJpJjuKNzHi12ZZNdWOBJJFk6UzdUuHY/IA3FVtC0c9xYDPdwRjQu9jpql6TFLfdeK6R4alj49i0WH4voRZbIMwDw9rBuqj/C82qNzAuncqulArZ5GmMDg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779185434; c=relaxed/simple;
	bh=6f5g0Vhmb3lrT3RyNY3f5STKeRLpUxwRt/a+KzmvxYY=;
	h=To:Subject:From:Message-Id:Date; b=kLEK5Dl/LldjnXJIyYq5uxuCHodEQjt1oyKYvADZl3nM4m28urLcUC8GaBZ8EZAp0Q4T2T1S0z7XstZtm1H8rmWOoFMeyqPCDuFz2gJZCMKMjzo7iLATIR1hYHWdAH/rA8PIFuzmJW4O8kqkEmnWLFHhxi+oS5kuY8pAddCCI5E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tjKYTTJj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tjKYTTJj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C810FC2BCB3
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 10:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779185433;
	bh=6f5g0Vhmb3lrT3RyNY3f5STKeRLpUxwRt/a+KzmvxYY=;
	h=To:Subject:From:Date:From;
	b=tjKYTTJjsbxD//ql9qaWedXxY82iEw0gNxnVjiPtSBLuOeWHg4nV9JaiuqqAb7S44
	 55LDR/dASvLOiGl6CpyntMuNGdEBmuJlKUzmYO5v9b3sq4R3N4g9AmsLJaDnqI1Cvf
	 cz6DHYgTk/HsheG1FXw0mnmlRlmI/xDmFPjnKE1Ig3WvEpybL8FrYqy2pSBnU+0IvL
	 ZuyYgHORdsnyc7G7gR909KES+1HLE6j3QlChGIRFWkKWjCCUgDUZnYEKbrB3aSRtaC
	 AwjhpbmjLjrpHm4pZKLwDcvWMVD5MfZA1WgMU9unNnzZgGhXh6YDgr+hm5vPVS3mr9
	 pfxfIZO59E8QQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE5EDCD4851
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 10:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177918543370.7581.12215287210326780959.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 11a49c107203e994fd9d4c61fbc7589b5c57aa883134c0e05029810d62467a09
Date: Tue, 19 May 2026 10:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779185433
