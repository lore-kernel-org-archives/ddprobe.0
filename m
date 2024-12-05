Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34DED5028C
	for <ddprobe@lists.linux.dev>; Thu,  5 Dec 2024 21:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733432754; cv=none; b=OTQxFsrHno/cHl1M/t52TciDAJn4SXRhCTGRw2wGxJkmpzMko8rX0jQ7pAzMVGpdwpEOyeHeJv2KdsmkgXBvVDcSyHxiGSqhUmGJjkjX5WH3kJ+AdcSR+40nEyxOI5pB5vqcFlK6hIuRVyCCORK0WKZS18uqDpNIDygAdhAEObA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733432754; c=relaxed/simple;
	bh=bKnEyh24L9lpmqbIQ4n6jYfCggTKxw6qU1i5txa8BfY=;
	h=To:Subject:From:Message-Id:Date; b=kIn+dxtdMnbGqzi+wgMTd0p3v3vBWveLdKrKWtKYWNoVphCU/PlAlbSA1huEOSk4VD1G5b6080eky2K68s/YgzbZO+I236DKB/68KOn+wr1wvYRCy+vDzJF2/o/VEEpZJtlgIwrs2r7e0xDUEBSychZrfAONHQV87s0M1q/cjbI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pK9+f2dh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pK9+f2dh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD57FC4CED1
	for <ddprobe@lists.linux.dev>; Thu,  5 Dec 2024 21:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733432753;
	bh=bKnEyh24L9lpmqbIQ4n6jYfCggTKxw6qU1i5txa8BfY=;
	h=To:Subject:From:Date:From;
	b=pK9+f2dhBfkBBqvYUvC/CtDi9WSb9bUSm4JkoWZJWdnao7LYpOUpokqVa4mXFPuor
	 IMITfd71WjLTalBs0N6c1nv38lM6ZI40I6H7NgJTmtVM6GWt/W5GsTeAJWrYoqxH8Q
	 bINyD49Q48mWpsbLuCrpSwmDcPjY+i8UgXDT8EDVze6VYZo0eRZo0bBdWstLoCsFPL
	 /l6pxE/C+96maV5W4b7HGsnvT+NZ9mLjlgAGgv79VORVYjhWqWxN7VZkpRWNhO6T87
	 uqsWeSY9PIE3/hudBWLW6qmUpkQo8ZSkB4YHE6XkNXK4ipjjl8NflK0/5Ta0kp8i38
	 svOs0Kxjo5dfQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98D26E7716E
	for <ddprobe@lists.linux.dev>; Thu,  5 Dec 2024 21:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173343275361.19270.5979037640311046247.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6337facdfc834ad60b5eb4f417a696ffd3ba868e743b4a64fced894542acf3aa
Date: Thu, 05 Dec 2024 21:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733432753
