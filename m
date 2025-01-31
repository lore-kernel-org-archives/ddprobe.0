Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 709FF2AD11
	for <ddprobe@lists.linux.dev>; Fri, 31 Jan 2025 11:45:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738323954; cv=none; b=VtzxVjnYBhK+1WtT37Vjiwi6pZX8RdFt6vdLS9CaqEvqtU9Fx+pcoy00fS6BqEIhjQ48iwZeymspqmBfp98KIqKOXEwytY6rYpqFrDTrYsaRx1Bmq2iw63cGFc7uvhduPa84Wlf25YL18aO69DGHb9Lqgz+qUyuNdtNynPqme/M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738323954; c=relaxed/simple;
	bh=Ok1tG9X+P1RkDqp3BUABOGWmHWUYQPN7DfcsTBsgA3E=;
	h=To:Subject:From:Message-Id:Date; b=UVfQpujyOn250UDl8A+zEgaJEWDErgljRicwf6pqw4ONAY46y7iZfcFkTTlJ4IjeBOUIxEizLltHNS4Uq+RoD2dbNySZCwogWMw80Wspkql69LNwQzsMZ5EA2FAJtlsLvrV/NcHD+xoVdRue/1vp3l+PD00u1HrvbzKPPqTU9Q0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=q7b+JeJ3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q7b+JeJ3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDEF4C4CED1
	for <ddprobe@lists.linux.dev>; Fri, 31 Jan 2025 11:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738323953;
	bh=Ok1tG9X+P1RkDqp3BUABOGWmHWUYQPN7DfcsTBsgA3E=;
	h=To:Subject:From:Date:From;
	b=q7b+JeJ3kKib3HbKdNaMLrZTqRq28dJbKZKQDRQXI0sDOXArwykW1o3jdKeX8qg4M
	 Y5gCtisLoJn8LpkU3/z+72TcmqqttrsJqaqnNX9rtdF1MITARKWh9ofs0YcGoumZBn
	 eb9gwkbVYezl+pt5fiiD/1xmP/NRlo0QTaCDwxE/yqQGhrYQbACiT0iF67kVv5Vh91
	 +kOpoFaOIW+J6KFffS/TIN0OXgnkOZ/Nh1c5Qve8tjWT2jZt8q74yg079BTa7V5/yt
	 VkV5tov53Tl38IHYawdIkyUgjrZyNsuRyTnLRkE09pTF9yGhhwU47SZJbuH+MAP/ct
	 PKRFNygMJ+baw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9DFDC0218D
	for <ddprobe@lists.linux.dev>; Fri, 31 Jan 2025 11:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173832395365.9064.16574296011457951432.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7c2e879b0e042cfec4504db0e5de9a1db52e89ac0620c557383293e8e0683a54
Date: Fri, 31 Jan 2025 11:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738323953
