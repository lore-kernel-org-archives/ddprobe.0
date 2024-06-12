Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5997A33FE
	for <ddprobe@lists.linux.dev>; Wed, 12 Jun 2024 05:18:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718169503; cv=none; b=R4wvkzOICrlQ3Wy2DdbEKSkMFXEQ7I9uW59VJ+puoEHU68h28vrMMTUGKFMWHtG2681WCnVguAmgcS2kRkznJ3B0VUPnfirPnhNlnVwFRX2wECUGKUxetTfJhT2y7w7lpQ6MM+aHLlmwLsanZ9tF35HGgnvFCkw68TnR/nCNjls=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718169503; c=relaxed/simple;
	bh=6QmJIKnMHpLp7Dr1rw6NSVuEfpYr4PJNtKuKbsZ5Sms=;
	h=To:Subject:From:Message-Id:Date; b=ZcjlAMNM5aPaKeinKFxJXmHSUW4jvabC0erfznQimr/x0AKfEg7oF2LgZOZAc9fJk9qDMuzpVOxNiquGMukcYFYs0b5ohraY+BE7kUs3x6R6s9x1q0Gyf3loOXB/m18RHeFUJoyvg3F014MIKPDxiOqI5d7N8zo27g78lWuE9oE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q/0Z4rWJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q/0Z4rWJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D87A3C32786
	for <ddprobe@lists.linux.dev>; Wed, 12 Jun 2024 05:18:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718169502;
	bh=6QmJIKnMHpLp7Dr1rw6NSVuEfpYr4PJNtKuKbsZ5Sms=;
	h=To:Subject:From:Date:From;
	b=Q/0Z4rWJzd4VDhiyKZaUpY0+aInVLtoipebbOrh1bTRBTsZm5U4g34L1pEH0var7U
	 /JBHb98msnkbuw4hBMhv9niG6T9r5hMBaUAqjo0zsxAE3bmU944n5hDompLLyQbYRB
	 OjofXxUovUoH3BqwR+0xfEIowXIkJhJaunivCxeHvnY55O76g5wwAMpSBdZ6qHcIvy
	 wWcy26J9f6zs5Hc3eK1owdAmAhCOXKVCyENRP1SE7YgB+M6Y28DCQ//Kum5EYG5kP+
	 ZELreroi8bVYXLWz6M1nu7lCg70l9fCKysnEr/0KdSDjbD5Qim9bhmiVd65fBSgFjI
	 j9R9lJwNbNNWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5845C27C53
	for <ddprobe@lists.linux.dev>; Wed, 12 Jun 2024 05:18:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171816950279.12760.16084808841029345098.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9b3035a94638676566b3e297b0d24d058ef359cbdf091c854987bbca000fc567
Date: Wed, 12 Jun 2024 05:18:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718169502
