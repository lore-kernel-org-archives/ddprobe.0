Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 526371E88D
	for <ddprobe@lists.linux.dev>; Sat,  4 May 2024 22:32:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714861943; cv=none; b=P/WX7y+o0fvXZuSMFz8+rQktIvO8Z6TQ6mtROgzQ12Kp7/sKCjKtEnjRgr+yosMQ+o7VllS4hqCs/03XajWNDAbzpS4RrhFtdpacNzEiw0rvJw1nwua2gp4b+babU0h/YNBwYI38pdnMhf7EewTXrdXHoqgqtqMuNvvU1pBaccs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714861943; c=relaxed/simple;
	bh=vOuPIMfjwK6EFK+tuBRW31Ttgy1BU8FiOM++Q7YzH7U=;
	h=To:Subject:From:Message-Id:Date; b=lqrgTskDUUfI7sV0QxCLwMFEJEJPlWugaZnylK+6FM9P8H//WXgj46pajLKoMX5zuO6vKiNHaMFo4lLOh6xhVHP6hgdteT3CumZlhKVOQKpZksyy8COj22/fMomT9i3Zeqa2Rp2CIU91+2jt1UOw+zXlmgAnJ+7WcmDGzDOYggo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Yz/W+JyL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Yz/W+JyL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6AA2C072AA
	for <ddprobe@lists.linux.dev>; Sat,  4 May 2024 22:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714861942;
	bh=vOuPIMfjwK6EFK+tuBRW31Ttgy1BU8FiOM++Q7YzH7U=;
	h=To:Subject:From:Date:From;
	b=Yz/W+JyLYFvXlwF8blAUDT47uXev6aEyv6toX+BQw3rBC6DtuHhT0NpWlPFi6UHws
	 yP1oBuQuzEzYFvy+6zxvO5NihV79CkrnfBe1hiXmC/NrAvOHoHaElbMhVCnjzn+YxZ
	 LJXDNvC+SWyfyKbRhhT6qaCqaPRN37SZYjQzS6mxa9KAB1z+UMJsSDry/lFXQ7fa7J
	 TIv8a284iDP5OJ4MEgsH6jYTA20s6KtiU78LembJ5/TbDH5gPKa8zQwYmG/cjwd/zj
	 fNksu9UWahFuIY94Pvmztp1WrQ579R3rH2UPy1V8Ez6s0c2Llbtm8mcC8PY3jtmujl
	 ice5IOh1bdYJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2E6BC10F1A
	for <ddprobe@lists.linux.dev>; Sat,  4 May 2024 22:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171486194276.31409.8613397657278318077.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d3c84d73610530a965787af717b0490c32bfb2b4665a2909ad498e052a281689
Date: Sat, 04 May 2024 22:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714861942
