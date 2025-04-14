Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 479261E3DFD
	for <ddprobe@lists.linux.dev>; Mon, 14 Apr 2025 23:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744674595; cv=none; b=QK0kt5C6pvuXbBRK1AstTK+L+NDE3Tay2uFA/OGUPX+UYehiKWbRVLjArkmaEbXN39g6E7TpHRJnFL65SNBFJuj2TUuXTto0Q9QtoEdSgJH43vClOfi8kswNwkLs6mvWxEYZG+t8UZk4R7k6WqSJrkrzIsLWws0rhxj6JIVNi94=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744674595; c=relaxed/simple;
	bh=nLjTPReCGOGCBkwkk4mHaKycR1165L7nPjUcQKeJQHA=;
	h=To:Subject:From:Message-Id:Date; b=B3FLCrka8diNK3RVH02S6qlCSeJZoqECL5AIG9rWk7IeSkeGHwLbRnwoQNaVBdvQF9f/UZnTGqYkEGunpCFnYHporF4na/fQ47bPE8asXikPSuuf7FgAn4jgpJBMCumgj7polkidSZLw5vpBKNARc0TUOEcZYfpGgEY7NSKAOlc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J4DnwLna; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J4DnwLna"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BCD00C4CEE2
	for <ddprobe@lists.linux.dev>; Mon, 14 Apr 2025 23:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744674593;
	bh=nLjTPReCGOGCBkwkk4mHaKycR1165L7nPjUcQKeJQHA=;
	h=To:Subject:From:Date:From;
	b=J4DnwLnaBZEIXQO8Ant/1nxWtjHXlCdTgN2uZx/Cscu6O3/d2mQRvFRa31pn/t0bw
	 9RSRpGXxGMzKki0TWyB7M2rSkwX1E9+2Ud7MIQDzXoNaX3AYFtl+1DqfTfAS0AuY78
	 wgKnBfvyvdUAeBVIdM5JYBOJrCPJJfbH2QnDFaVEVPZojEaCY+eGJZkrpC72qCcKHK
	 JHZKC+isEFGYvHrQoaDN24bxdWKOGnEAmShf1zYTGu5pqvRDtEnKE08G65h7rlMFcH
	 +XQuU6ORhTqolUvkbEl3B+m7d1xY9eVUuHNRM0SRmLX3Fv0ViSE9GoZGydoDx8FIEP
	 9pGkU6s5xXVGg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A527BC369B2
	for <ddprobe@lists.linux.dev>; Mon, 14 Apr 2025 23:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174467459365.11045.3912003359839594018.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 233f9532fbabbf9f7e58d2f6cd68a9df5224525e12364969365f1865c0d04a9d
Date: Mon, 14 Apr 2025 23:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744674593
