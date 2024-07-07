Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 61B15F51B
	for <ddprobe@lists.linux.dev>; Sun,  7 Jul 2024 08:56:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720342583; cv=none; b=Heb94Nd2CDWJgqNq+BP+0/7oLhRE9yUtb8ECYe967AHGuZJ1LzxQOB4yUFJDdnp4WszSSP0spC0cBoThsyAxZpTkXocsm2PSD2ubr/1WXGLml6OSKArVKLOonzBER/Ap+TVoKvzGab3gBVENzFN1dIPoQxcgD4pnTEEiTChRTmM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720342583; c=relaxed/simple;
	bh=4Krz8VDEbFF7FGkR4qPO1YUpvWoBDY+53TffwKQffoA=;
	h=To:Subject:From:Message-Id:Date; b=cOxZ6Y+ncVncyF7aYPK3RzeRoCSq2Dkx9VmYwupX255Xk+QLtnJVm7IQIPY/IReexndlt49+PQ/6ucnbdYjs9zRb+YCchh5MIEKhz6L5AcQjM0lkMzWq1xCl8lhJXjXQ5eQu1Cwd/iClG86YHnk/NHn5XhuYb5SXpjz5GaEwbpg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HY89Eo/Q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HY89Eo/Q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E92CDC3277B
	for <ddprobe@lists.linux.dev>; Sun,  7 Jul 2024 08:56:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720342582;
	bh=4Krz8VDEbFF7FGkR4qPO1YUpvWoBDY+53TffwKQffoA=;
	h=To:Subject:From:Date:From;
	b=HY89Eo/QygdZuanQbMTxPn1gy59zSUQy5a0LU2qPVAHl1aiGXiFZNDzFu9oTUymmM
	 yrPvD5vE+0CIk6eHoPAujeyljZCnjpxcFWQ0T+Xd+aASEsVW/XYrsP71SdALTFsxmo
	 4j63qo9gQVcAWuDUpe+GFt9ku1fJha3affNRkadwkefYOuTtogx9cBtbQn1itB32dq
	 XsngjsEQy9M6gE7TBmkoDnFhQ0bcMUHIJqC705ka0oe/AyQwRrmLyK30A44CFkcZCM
	 Lj0EvKm1n+MIFedRatC9RqehET+5iD4Px7VPU8PaGg+se6Uy9l4AKYxYpRta550so6
	 h88dCYagJfD5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D1ACAC30653
	for <ddprobe@lists.linux.dev>; Sun,  7 Jul 2024 08:56:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172034258281.9802.244978143680552581.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 71c6c1b0553b8075d0a5d3036d15743ad492eea39def13b95780a19d42287233
Date: Sun, 07 Jul 2024 08:56:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720342582
