Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 472D420CCCA
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 13:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765717974; cv=none; b=Xye48wuA7AApHH/HJ5yF4Doj5/M9aKym9VchBILN/PSckpzNrEOzZR9BIaWYTcsa5P61mxc1cYGodmvmJDANeHiw8Ea4KNhqScPPCwidhBEAKQUvJXkrYpGYxpv14GHtuojCc2ropHhCk8dCUENT4U5CZzPvL9ZcACskmTDaQJI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765717974; c=relaxed/simple;
	bh=4VU8FlPWR8+QEbQtrWWhIoy403GqKfi27BismW4UKCA=;
	h=To:Subject:From:Message-Id:Date; b=tUK/E20Xx9CdAdhvL2zZccxoy8f9TbH30O9rks5MXWtDSA4/J+mHxFMCPAuZxdS9KZYQDQYvvv5hZHgaMrGiCu9U2I2l/6oKyL51BvYzqwiJ6G2kMkHVKPe0nIKgvrU5xf5CBqdoMGBjbsdmHm5Bw2nu898yBzs5DWuDIrteZv4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MvmFwO2S; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MvmFwO2S"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BBBEFC4CEF5
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 13:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765717973;
	bh=4VU8FlPWR8+QEbQtrWWhIoy403GqKfi27BismW4UKCA=;
	h=To:Subject:From:Date:From;
	b=MvmFwO2S2hBWVkfxtUctfLiWEHfNYIMHVUNSdY3Pb0ue5+E4mNenX2O6hmRIjzbv/
	 jshWUxEPnzkR9s4ml6armGBxmRdehOe/EEeesPCx4Ur9+b+ip7GSbJceo2baNh6by2
	 BfzVukraIsndJjZdmrkp0Lg4rMcXNoVym+yGrSX94gVIF6m8//muuRva6iWAZ7trMN
	 kJW5PLYnjS7adyAzOvvrNNDhULF56fn4r+pwS5TVoDx8/qnuir/is8fGs8CrfUeyb2
	 8FVi62xIh+mPokXbawAgeXo1ALUZmqyOTz4gbcauNnqHXSXormrEeNA7vEFEB1tbf4
	 I50u4eqdQeqbQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3A74D59D99
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 13:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176571797362.3075.7986864999588491483.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4f6687947ba76c1028f0ac4fa5cf841e5b1cb3fe98ceb2fa8b781241c4f07c34
Date: Sun, 14 Dec 2025 13:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765717973
