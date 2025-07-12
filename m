Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C6521F4C87
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 10:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752316194; cv=none; b=PJAoJdgCqxWJNgC8OYUn4sRKztNH/JXAGlUlYPBbyuWAEXY6bZoCwqBi/U0BaxEEOd1hNQn+nCFvd602vqlNDbRnhqaG1pITrSJYusHv/e49C1IZqwqnR004IPQ0DnRfpVgIAdNFOE7vfZlHtrcHuuBsFIUqQlW6q/FOb3yJswI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752316194; c=relaxed/simple;
	bh=Gk5Dg9Sj4lEehfB+iaaZZVK4zfZG/FdPdTfcCToCdzM=;
	h=To:Subject:From:Message-Id:Date; b=MR6RoYXNkkpFNMsZAZMvtJN8OBqPkvk5bCoq9mZAgqGonH3LNg2cdqHDPCvtZMYWgihoZT2f1iu/3QeqK9RGz2/b+f1c5EpWrKfm8UwieEeCTW4Mue1vhDnqTlQtkouzCM5By12S6nYRTxyJsSxlqOrYyDVxhmt17bc5QiSPu8c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nA3YVTfN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nA3YVTfN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FCB1C4CEEF
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 10:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752316193;
	bh=Gk5Dg9Sj4lEehfB+iaaZZVK4zfZG/FdPdTfcCToCdzM=;
	h=To:Subject:From:Date:From;
	b=nA3YVTfN8DJoaj+tPYDCyiO74Bx7S+3I4klxPxVRuL0824hbYHt3bsh1LPyjZdR52
	 bScmZ6hGgNClwBnjfGNUz+TUwFOg7QKaV8ofG/zZjG8Cq/Rd8QLEFALdfyTBZhkPvZ
	 LdwEhDa1i1p4YGisTaZWYC+AfHRlIVtZfdfTp5GyXHL+CRzzPxdrqEwBdoBqvfQ3jF
	 AzGC4siCg+8mJLK/cBwiVH5TBYN7nI8+BFwuTLFkomh8tsk/xioGh2omPBfmMJ5v6I
	 ZTI2oO0uFIKY65SpKtGl5jN7df1HqlhStBlrL7eXYqPjbwDx9OBXJD7iuFEHAWgL5g
	 XObkBVqXZKEQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9054CC83F20
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 10:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175231619358.22215.5694586154048189874.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f14cb8222f7416e58090c99815fc9844a33934efd28ee2d8b16fdf62a818cb11
Date: Sat, 12 Jul 2025 10:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752316193
