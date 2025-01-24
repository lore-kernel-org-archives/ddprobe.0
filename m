Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C8191F7907
	for <ddprobe@lists.linux.dev>; Fri, 24 Jan 2025 08:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737708954; cv=none; b=kGx0mL3kXvhaEdUIZnSk9RFZR9zlUC87W/lGCVFKJvBey8eJVE3mPFUaLztGeQL/ak3KdhDVpyQ/izIe9UoKIPu1CiRERVMb/Dj7knXO4uo/xYOSMLo65U8b/2xMXvyLEa0Z1wifdkW1vxeFfWeIO01yvD9hDEZ18Vcazo+Pa8U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737708954; c=relaxed/simple;
	bh=ZfLDci/fHhCfUBP16o1nD4e9PgTP3CEDCc3tKpBAPdM=;
	h=To:Subject:From:Message-Id:Date; b=rs60d8XWtFexa6l5Zgd+UGlol2aISk6Uf35xzVVpINiMmb35YANowDp1KVx457k3TbHG1PcuhBInISke3sth2/lj3wnk4mGbdBgoxowSWaXavmUV4/bTLJn52QXcYm/TNNU71C4KpzuwKbQ37yxpwuWPi4pF84YpX/QnxlT7S0E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hZVXSa5N; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hZVXSa5N"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4791C4CED2
	for <ddprobe@lists.linux.dev>; Fri, 24 Jan 2025 08:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737708953;
	bh=ZfLDci/fHhCfUBP16o1nD4e9PgTP3CEDCc3tKpBAPdM=;
	h=To:Subject:From:Date:From;
	b=hZVXSa5NOii347vWZsQZlxBYqO0r8bRl+xltxmAr0BpN8gTbecJAjvPwwBvzPcGPB
	 W6QlOygnvQLlo2l11KtBZ95GDrn8B5lhmr/1TU8LjPOOR+vwNRt9lI1UlzGc5KEV88
	 d+7/KTnBXDfDcau6i8rTXrzQOaXcD974GH3jW5c3JlsgC/VrW2gYDUioURKlHX7Pzz
	 p0bvqLvCvVRRgQ8ep7s69JezIXVpVp/aAHdcdktA83vBcR75jeIMJxVH4n025SJmqp
	 uec9FGg9gRn+I/jkRIKeclwRP/f9cbinNNKHuSNjZCdvVBhtthI6y0fgmLj5THuMfo
	 rltmPcNQFdxIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A5075C02181
	for <ddprobe@lists.linux.dev>; Fri, 24 Jan 2025 08:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173770895366.15328.6537181491536639821.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e8c473017de0b62dc6d33f1aa49cac5b5567dd57c70ba47741132df09afd1aec
Date: Fri, 24 Jan 2025 08:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737708953
