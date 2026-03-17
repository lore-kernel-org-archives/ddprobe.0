Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D0AB230AAB3
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 09:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773738893; cv=none; b=KVBlz58f+gpRk9MovLOAOI1vh0FBzJoV8iJv9fogkCojolgj29I7vRWDd8M5OvGybTYxSp50Q8u+NoIkQ7qIg4ylBEzMcbAvaAcBUackAdOqpMttocj2G4DSN0cAswuzBkyNkVcZg3xDrfceBCc1DhcoCCiHxep8uHBxIx4vz5A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773738893; c=relaxed/simple;
	bh=h7bWrsoeciR2jcHa75P/yXt8JFz7x0EYwUqziK8ml9Q=;
	h=To:Subject:From:Message-Id:Date; b=JDOuFi7IaL4WkcK1fVx4m9BeAgWea4Qc1nwlmD0qeLeJtj2Qzwbch/oo1KtSZIcLznv3xm43/QbZ0xyy8vC7DmctM0U5LfGTpUXwi43Z7ot5n/mJtQmitPMpGw2vK7anUFx1r1kJC1S7pF5MEKB/sOS16Jws/1Jlt6F2FR0HpqQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r7tt0aH4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r7tt0aH4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3FB9C4CEF7
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 09:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773738893;
	bh=h7bWrsoeciR2jcHa75P/yXt8JFz7x0EYwUqziK8ml9Q=;
	h=To:Subject:From:Date:From;
	b=r7tt0aH4gRMljfjZkZCR6CjIJITxyGD1FZzVySKnkmJWtsGNqfLHxETXPswNvSK2B
	 LLilqgMvC+XN4GAdej9HtTI67Wh+Qdp4j64lQhFNFVnam97fEAAuYbePIa+Soth6kc
	 n0y6j9X+SXmoJNL2iEONz9Y9f4v+gD8pW+6bpR16WDGmaOVErYKkwA80BpQPLbTiqr
	 UA74diG3KJyh6K/h7MMVdvefuBXS/wjbNWEo8Ny6w1W24qf/EJgvSMRkI5GjQGBEj5
	 Uc5cVEBrntZW+0MQtQBrC4L+wrd2w91OeoXzDkPInZKmbRdJoycddkowkCCphKPLow
	 hYXazDaPXRtlg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93102F3381E
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 09:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177373889359.18418.16154719735324349302.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 70906de86064867d9a91b305a58515b2abc264e964d8f95d8e6a205018c9bf42
Date: Tue, 17 Mar 2026 09:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773738893
