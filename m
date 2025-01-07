Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C7841DFE10
	for <ddprobe@lists.linux.dev>; Tue,  7 Jan 2025 07:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736235954; cv=none; b=inV9qdunjBVVbIj8X1/pe7mty5WotkGumXqMEHuz6pJqw0BaBKGNkZSMmJAtTZCmmv8q0BYUY8RB6Ri2kzdGDckpos/IUql2bzgqSyDXZf7wii6N14C8+0XMTPFTxwiSncbB/wpvNo3XOKQOV0ONBRnkNhLm1jox270zI7V9jBs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736235954; c=relaxed/simple;
	bh=HJPfuVNicUFPy8+2Wn3ZwayRDNJXQbmOyJd9G1i2uvs=;
	h=To:Subject:From:Message-Id:Date; b=E3TZGzPP1UfUn8c3YvBFkOX5dCCMUSjB+7Kmtw8+zBKyKmAdbG+yH/NG7QFxexD5jgjB/JNRaeBDoVz5drZAWB7dr+OLTtf53KU/4dnBKjU0lLc7tMcVcdI38sk9ena8k6qLTUuzC95jW3AebnJgD7c5oqLuOEco8TH9piGSsu4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XcMZUmpG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XcMZUmpG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A457DC4CED6
	for <ddprobe@lists.linux.dev>; Tue,  7 Jan 2025 07:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736235953;
	bh=HJPfuVNicUFPy8+2Wn3ZwayRDNJXQbmOyJd9G1i2uvs=;
	h=To:Subject:From:Date:From;
	b=XcMZUmpGEr7/mjV9MfGha25xOMWiUk+1vv2CHCP6i4PUWTmvrsneV0XknWV05c4L9
	 oJakAgQkrwJY58xDnAeMIEyYdXTCd/xC/C0QwRMRKJtAK1SCfnYUPpeClGZ+hJ/sl9
	 hLJIQHbXP048b4JqmDkEOVwV8bujltMgse7EbDe8i3nT6DWP+zha5AWFCF6+XIr9p0
	 CMkmZW17qVMAkX33AiSeF/SIl3A70U4VTk1TW6Rf6mq9maeAkZ4Rf0a0idJeP8xYFe
	 hRZyM5MOcUju+c3aZpT7WmMkdC4Weos+RvVSTY4oQrmp4MyQaUYKZPq9/rjl1ISkZM
	 x/+ONYQmbgPZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90639E77197
	for <ddprobe@lists.linux.dev>; Tue,  7 Jan 2025 07:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173623595358.10151.3844512320230302017.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 634a09d9933353f572fea1397d37c791ca7d3e579103414ed3ec448aaf3f5736
Date: Tue, 07 Jan 2025 07:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736235953
