Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 539361DED5C
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 12:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786278634; cv=none; b=ZapJow8Dbno4CcxwrtC3iMR/M9JMSUCiTgL2uVYq6KgE23roiMw4ezYLPxybz0zJsZdb7vr6A+naUk1a63VNZy0AGy7t1KQRESsJEWEsRgrjPSSyqH9luJiVIACmqe9IX5LdESihiNFKNCuXGBMxMEG6kx4y6jWHqaHhi5zY7n0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786278634; c=relaxed/simple;
	bh=VrkPBQ1V7o7fr+q58tf5ka9gscWfUD0wLpI4oF01QAE=;
	h=To:Subject:From:Message-Id:Date; b=mmh79eBPv2S+IzFMNdRvrLo/Zd+3t1AqZHfeHvwCtxrZqHtOtJNa07A6U1RxtPa4Y1zIP94eTHzu7YhfZev+cQkquUTBqWVrB2XFb+1MAed4paHWann5htkxxcuDLGL4SU7neNleHiYHftCHCzL4YGP2RNLP7v04HA9qFN2ivBs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=j9aA+8Qo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="j9aA+8Qo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA0E3C2BCF6
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 12:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786278633;
	bh=VrkPBQ1V7o7fr+q58tf5ka9gscWfUD0wLpI4oF01QAE=;
	h=To:Subject:From:Date:From;
	b=j9aA+8Qo52TrZkUYm5dUsexiqhrdJJ7aODme4Lzeo+JN5laaQl901N6UKqs57MF9e
	 tBUCHbyZNBKELADWlHmYV2mwEAWwV+C3/iX7IJ/LSSO0RzE39C52YmImOlui0YUxzO
	 Lj70yA388xH6IKMBTB7sOUIQ3iRsqGBVwDwIgX3Hs+5VgZWKeYkhm48Q73irsNFtfD
	 MGR3QBKgskuhaDoEoC8ke+qgnuJ+LCzkwOtMK9IZHZMPIMiIMfG6w3/3iKEZT7Vief
	 c1xYZfR59h4f6Ih7BqEk4ZVz3TqsgbmT8FZCRSa90eLBLO5t3cgfU8+GeeI8Ba5llh
	 NROVUka/SaAxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B40D1C5AD2C
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 12:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178627863371.30995.3304467390665232772.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 89ffb71a0707b81cb7fc87cc9dd855aa49ec6494c9c5f92d26de429e737c92b5
Date: Sun, 09 Aug 2026 12:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786278633
