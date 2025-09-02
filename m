Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F95532F76C
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 00:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756773594; cv=none; b=ZSQt32CeF1W3PWG6KAh21D/NWq+abxVvm6kqqpZ4/SaADdyTFaL9uaCKIVkOkO7fdkW6QIp2O44Bfv3EfgExTOTEinwMjo6vdgTsgWhs08M7toqsgsaxoLNii//LwjRTKxXPvUspS114F9hjlg3f2XfzxJwWTmS/Z+xdIb5f7Nk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756773594; c=relaxed/simple;
	bh=UXuLoVOtwUDsgGZAJjxBE24eD9BdiRoVdk52qE+1jFY=;
	h=To:Subject:From:Message-Id:Date; b=feQ4e2vaBiLgOHGA1kd/wL6zhhLcrv/t8Bm4tQZIcD8Czi6kB5Jeim4Mg6Nq2X8+Ca7S0wko8duIY8ZBXNXRCUa/wZ8RjboYocpErlV4ynOLw2YSqpHzXS/A8p448BuzdfRZYAqmKTGuTvaoedgk4wvz3XOZ/DXsi+tMaTa6RZ4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gldAGs+u; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gldAGs+u"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4E8FC4CEF0
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 00:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756773593;
	bh=UXuLoVOtwUDsgGZAJjxBE24eD9BdiRoVdk52qE+1jFY=;
	h=To:Subject:From:Date:From;
	b=gldAGs+uF1YLhnfz63xHWFPrI9T/g4xG5Zfg2cyMOVpIPraI+Dih0cfyBGuuMlrpv
	 Jm2cEl+C++pXHG2WJUKPHhIzWJT1BWrN8WzlVVYngafS5d1lRP4+k3rpcNWQBM8gmy
	 gLJRg028ycYwaUB44efxRGhN8vDFWmJIQBE5hMMzC9pPun0c7cGVEjmhDpb1l/jzsZ
	 s7/8x5CjtpekIdSDmK1NZCcgsj5PGtlrcWHyCwFj/9KRBDEZ16vori40PBoPGxK0jz
	 Jh61Dz6vjt9tHJH7yLHLsdje6cU+1J1LoREzywEeSF2MBHK2F10mqcmx15FtUA4HnT
	 4BlQcrYoQILZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91B93CA1002
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 00:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175677359357.7565.9993157095055525073.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f5abc6db7f312e98d52f5b6266b878b52db760e642ecfb4a08e9683f6c568fa8
Date: Tue, 02 Sep 2025 00:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756773593
