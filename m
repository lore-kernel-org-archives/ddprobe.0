Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FB3A42048
	for <ddprobe@lists.linux.dev>; Thu,  2 Oct 2025 02:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759373396; cv=none; b=h7yG6gp5X3InjBdqsteCRC8v5lfanymC+Ramz9ms0GpBBMv3zDmM0v+IzGTMny2BEY3PMUE0/DGGimlTJ4JlYJezX7d+Q7YWlFvjG3ZeGDHYfP3n0cUUJ3lB3ScFTlBT3UhmjM7wUT0Zjs89jwu1qqtNIRURl7It6LXjf+RevwE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759373396; c=relaxed/simple;
	bh=Dk1J+t4Cnnetoa2KDpc3/XO4qzufEG4pZWlLF/tYLpE=;
	h=To:Subject:From:Message-Id:Date; b=GJeB3Y3knSKaa7SMSJWLD1OUhrOVdIFvJzPYp39qot1dNfagROrgfTtdNLgq5xU7ADQ61xjNBSEqt8FcXMbDF0Sy/xXjYrg4Qa/Bp1XXxVGqqsx1zINYvh9NuOtYn2zChAOxQ3mrB0RRaMTvm6jYWHNdQR9/dd4oOl21TBwTlGA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NLb5yzwx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NLb5yzwx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4D15C4CEFA
	for <ddprobe@lists.linux.dev>; Thu,  2 Oct 2025 02:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759373393;
	bh=Dk1J+t4Cnnetoa2KDpc3/XO4qzufEG4pZWlLF/tYLpE=;
	h=To:Subject:From:Date:From;
	b=NLb5yzwxrS1Z01TYUBjd4ZfWeMk285Uj3kOUjXpBoHQ1nIIf4uiOujPRN5JDfgT6Y
	 4n3cIlMrK+8UWEuAAzDjjwbW0vQG37LigyjBO8TXdD6+8DEm7VBKuw+ViBg+mMmAry
	 eovVI4gIi0CG2rtywelnlTZkquXVfabRAEVtGwfPgFa1sfNNGTkQq/W/8jNMCNERcD
	 1unhI/PcaBdns9KZ1pDRAtWHU78XL3Xy9iH2DYp+w+KfIYJCb2Zff2ef4OCoAlbqHh
	 op0xwv/0Z1toOytC9ob5umr2+5ZuQdyrmSqocit/W4pijbOAMiMD41gujqO0GiUgbF
	 qa5wu40vAKiNA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93D6ECCA470
	for <ddprobe@lists.linux.dev>; Thu,  2 Oct 2025 02:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175937339358.19793.7819677980088531770.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 007a2cef630d472324b05f136bf3dbebbae5436e732f38120658d63fe475b186
Date: Thu, 02 Oct 2025 02:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759373393
