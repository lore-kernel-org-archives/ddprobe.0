Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 227384CB5B
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 04:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777351054; cv=none; b=P3x627L5oG0LZ31luJxM80aMwwXlVc11SGz+U0Covu6URoEqmPdEuCsMwE2KZGfbPep7H12u5Q/9YWtj1bBBRGIaSn0gH2tu/D35LRqdb1SQS1W+TNKRu+/fFD2SfjigL+2kpbhCcg4tmHyEH+LRLKOFNnw3g6X/WrAav+BPn78=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777351054; c=relaxed/simple;
	bh=bD1logumoILk0vDGX44MW0VyH6mwEqYGihR6M+L7Cv8=;
	h=To:Subject:From:Message-Id:Date; b=fPQR7OY05EDzhm+2G0nTorBb1awBCnFOK4ego/JX++dy7GYswJCQPAZA5kNJMy0Xio4aoQjunfqR0f83E97gkuhlnPm+GTfAXeRHQAPGV29IUwN/pOzgi0ZBNa9hEvfMcqD7x94ZpBtbZnvq5n8wanAOj3ObIXQzsEMQRG+LXDU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZSdX3vWT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZSdX3vWT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2CC5C2BCAF
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 04:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777351053;
	bh=bD1logumoILk0vDGX44MW0VyH6mwEqYGihR6M+L7Cv8=;
	h=To:Subject:From:Date:From;
	b=ZSdX3vWT8wO2y+G8+NP1uWnYebQjIzepI2jQ81eJDcZ5gBlLpqwnyv4Zcz+lpGIG7
	 MotR51UKGbwiXrKgdvchkLRuZ8/ZjhFpkAwfY7P2fCvd9Gq95lyt6wsKKgndaEvP6y
	 1Ed3gtvLQ0sCQiETzBIIBwbqS2cBErWtV3tMXCA9Jcl5wCW6SHLtf9C3wERqRjyYla
	 AGDnYK3Smk1S3H02ewYJxGZh10CYBSFd60T06MuRjLJQVLsYxe1yMbHRzlhgrPSTxM
	 3Ec5s9DJ/Fx+7PNTtwJ3JV2Edry4nI8Ao/IyZXy+r0FZE9Rb205rPz4CYx4b2H/zs9
	 9p2qlpuvDT0/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACBAFFF886F
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 04:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177735105368.22706.6085311595318413282.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 581ac86fa0b22a158a2cf8e5746e6630fb56723ec9e32ca1356fb81f3cb8e022
Date: Tue, 28 Apr 2026 04:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777351053
