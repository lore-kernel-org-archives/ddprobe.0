Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11C12524C
	for <ddprobe@lists.linux.dev>; Mon, 28 Oct 2024 01:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730080554; cv=none; b=uMQKFqOJRH6zjTsMuNthjvdJkBukrMOwiIPZkSe2F78Tmy3XuIdGeayQMG/r4Qf8OPbeAqWKAEfFnCCggBcq4bxyPhZ9P9n0tBdCcTi1wnd6LsWt60oXkboVbxCKUGs7fgk4X/8DUIIFJ8x1DA2mfNxUisOYnZjBcPZYe6Qu9lE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730080554; c=relaxed/simple;
	bh=1pyaB8bvr5WrP4/RlDhoxjw1nmE4d2dO8YAPPiMf5s0=;
	h=To:Subject:From:Message-Id:Date; b=I8um4eWblwfIQBi0sJq018ooFQGS6xE8TUncPtUqgh2A1P6CWYh0NIcojHOFZZCWbMRAxjBCfD87NbgDGH7PUaKIFc1cGDZiDCEw8fdiHy0k1aO7vxAP6l7FjuribIifVkR08/LblBjYO1vALdY7fBzZYYmKFmOmg4plitWCP1M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sI/jM0ov; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sI/jM0ov"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3C17C4CEC3
	for <ddprobe@lists.linux.dev>; Mon, 28 Oct 2024 01:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730080553;
	bh=1pyaB8bvr5WrP4/RlDhoxjw1nmE4d2dO8YAPPiMf5s0=;
	h=To:Subject:From:Date:From;
	b=sI/jM0ovOJChVIu0yR45GZkMDhBTGJuiG4/QvXaXKRJEyRUKuXiBN68Yzcvy3AK0n
	 6KWJQDcqbeheo1htHd61c7ZeVKQ2ljaZv0HZiNfYAoBVyBwvnkUxLzIzvupIv4cNXW
	 JCSLmTwgv/pWOeH8KQf1kR5pGN56rbMry6ogHSvxExDoFPnK20/V8XDWLFmdO/eu3J
	 T68MmxGepcdmWDA9khRtOu5M2Yn7kP8qYQQMlRbOxcFsg0rLow2rxBfG/N0xkV38nG
	 0I6G8gUofUZPL9ciW5Dk4wMbH60khIyeCVbSQr4EkeSyV5C6P3MzVnxWz+om4NAvoq
	 Me6r4shu5LawQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95480D13591
	for <ddprobe@lists.linux.dev>; Mon, 28 Oct 2024 01:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173008055360.9069.5697675558866204175.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b81e46972455ecfe329ea5a6de6a427bf1b7eabf23d8f442aa7b9f8ff97c188e
Date: Mon, 28 Oct 2024 01:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730080553
