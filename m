Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B9B52DA76C
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 07:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767426834; cv=none; b=PF+oqGRDmkpNghCxppaKxzrOXVLQSs5Lhovrs72Sk9EiRGZYsNKEG6hRCkARSfSPTiUQDx2XIZeOzLbWHSfl6vmtn8Kp0D/2dhQMQwLEkn5CigZoP06wz9j16bhVrIbq6ie1RUtf3KxGJho0XWONxbrTk/7thtse0Z9VofB8Vx0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767426834; c=relaxed/simple;
	bh=6cVgYbBTqKXcYT2TJkn97dLpKcc9foz25ehScFTpo28=;
	h=To:Subject:From:Message-Id:Date; b=pGl07yKuT846/9x6+40ylpnMHC45rbnTdi1bBH1MbHjF7iJAIQH4PoC/Ywthn+2Xab2kXYtLjKccR49E8d+fDQ/CHFd/GUobSjc/R9eIAvkB1RiT5RpXdf5GVnjRO0+eHkgIPlCeZwLpeGXGCUXrvLcALXH2esE4eUhitCjfbko=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RESA9OPu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RESA9OPu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7107C113D0
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 07:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767426833;
	bh=6cVgYbBTqKXcYT2TJkn97dLpKcc9foz25ehScFTpo28=;
	h=To:Subject:From:Date:From;
	b=RESA9OPugV9uPCB6kTj3ge0AOdEKFyVYLrPXyFw4hHdLONRjo/fqyS3YN8f4VVyBY
	 0t+ZaIDAPZgUd2GTllhER2O6/pkgFCHghZWeeRkGcdmAFMagcORhlT3R8UaNMUex2I
	 rjf1zueMob0BvJOAQuR8ARbqd6llAgKCKo5nwi7BmloNHF9Tuhx4orQwv8SHhP/6OS
	 xNKrI2MKVZFHp/uV3IsHnrDVwlgby2z7kltrSChw0vBHCl6vljcLIU1mRXR601qLMQ
	 4P3JO5OIUW0dD9sdHKysUhRuJ0mDq3S4xFSqgx2k5MAAFhSb1dJJ8NEHxTMt9HvaNw
	 SjcBcpFxjXkvQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9353AFC6174
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 07:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176742683358.14715.5146027360567770301.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d7c0a09a50945a965f7a149c40934018b1b27a6e60d3912fed2dfd46510db753
Date: Sat, 03 Jan 2026 07:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767426833
