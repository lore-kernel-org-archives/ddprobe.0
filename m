Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B85E1C6BE
	for <ddprobe@lists.linux.dev>; Mon, 21 Apr 2025 04:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745208594; cv=none; b=f7z/LLrJxufrzlMUXNsbE/bZnK8OSBsuRoRoUFQHV36NNiwJmQ1BGNd2BHZ748NnG/I4uV9Rt0NZzrdcqpKrqEJzUVv/7hvoWS2c3OVozAuo3KHxfVnDjFSMIjwkGsoOvvZMuJ0smS6C/MMOdvtYDs245SRwf8gYkWWbt8h8TWU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745208594; c=relaxed/simple;
	bh=CIXQyGme/yuBKp5XDmtzHNfWdSOmyPgyRp8Wx/jIfbI=;
	h=To:Subject:From:Message-Id:Date; b=e63UqozDzQB2LE3g3wV3KMCfug2QP3Qzxj1+p+GlHHj3Z/UWXbR/7EeI6lMJ7RMDlnpkL8eXmu8n+0sRTfVvM570C5fGaPptv4V/fllDNoNHnASbRBdoN4Mc/v80+jm1p4jOaaC7Uxdq7TloQHTwpiRriYMkNXvFPJW7Pg+XgGs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VoosjKCT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VoosjKCT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6CD9C4CEEB
	for <ddprobe@lists.linux.dev>; Mon, 21 Apr 2025 04:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745208593;
	bh=CIXQyGme/yuBKp5XDmtzHNfWdSOmyPgyRp8Wx/jIfbI=;
	h=To:Subject:From:Date:From;
	b=VoosjKCTjyDS3ehwGmJeIISxwfbk1PsqWpOwHhKdbn1Lhch8A91kalahmNVbZAvgf
	 EGjSWZm3NE9Eq/u5b0mWhaYwp0kGubWf+QTS3C4m5VobcSwocJpa2RMD6m0iNHAz/N
	 RtexDVr9MBKsT7w+M8segntMQCzOz4n/YWFKoBs4SIoBFebt+BxcUl4fJdHHV0OKV/
	 ghwdlNZK6WFouT1lx7A1+6zwdhnA1Y688FRRQGf2G1RkFGOdtTQ+vS/ypB/ahsFz4V
	 njXtSJtg0sr8gCXKZilDt51DHVI8T0rvHbc/VQIn+N8T4qZNkM2GUAV8rd1Rf2Rnn0
	 KiBT6KkgaV/4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 925A3C369AB
	for <ddprobe@lists.linux.dev>; Mon, 21 Apr 2025 04:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174520859359.25262.5862173287557292782.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e35c6f19facab327603f49e4257a1399ab1e9399cf1093aa65562c24659d0b6c
Date: Mon, 21 Apr 2025 04:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745208593
