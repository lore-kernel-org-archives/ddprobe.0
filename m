Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FBDC273FD
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 07:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752652194; cv=none; b=RoHFFMkGnaXOpsmN5OZSK0M4q9Sso8bpxRzsPzemLvSWzpQSdeGzUG3EwzcFk4VAdAzlRlM9986KzrdUP6JlfNtbe6qYJwd8+oUF+NzQEyPBcbr8RcTPiiPUsVQzqAektkhsinHHcItPyHu0x3HBf3wFgpb8KiCzGNOoDqgUA5I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752652194; c=relaxed/simple;
	bh=Zie/f+AeJ5qzr3j90kVIN2XhHjDpNz3VD0Y6EXltbmQ=;
	h=To:Subject:From:Message-Id:Date; b=NkpjozFcRYvQtgUR8acYchIOyOVGmjFc140lx7Vlw1LFOPDQ8PQruSdndMnZp1GIBiH39BOr2MLS/oUqMt8UYxCNIEKz+2GslyEE/ozLcTYql7KGW3gVUrqdMT/nk52A+eKsgQKCLwgmxgYjWmKRVqyWc/RCzzv4OvN94sV+4c0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bizi0hOR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bizi0hOR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F250C4CEF0
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 07:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752652193;
	bh=Zie/f+AeJ5qzr3j90kVIN2XhHjDpNz3VD0Y6EXltbmQ=;
	h=To:Subject:From:Date:From;
	b=bizi0hORdyelSel8D+svgzz0r59n16S/+q2pqptHWeKCkWE4xapHCirWlEPTKK1b7
	 EFJgtFfHe/rs/C1hYioKtDAzNd4+E7gMgLm6wcq4X0tfzYHdS7l2iftOuWshZNfEJ7
	 XvbZhLA7GTOTAdnTJ3pEa9Ze/Nw2csz1beWRZdLEZZKaV8aG2zaxHAXslE48dECVWV
	 rfO7fQxEHwsGZ0hD0CJG0u8swjVbulhImGwScS0av8xNlWr9oDBSvono9ccOagE/Te
	 sxRAX/XTTYF8KqAoo1PJDh3faiXMxILNXTmN2rI3QHTL0SE0wBWdfWWdQnwayQBPcO
	 qC7pCV0dnYcpA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ECFCC83F27
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 07:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175265219357.7656.3649601336503598466.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: becb0a6b493883fbfffd19043f0db7f202c57096cbddc95e8800d12a2ac0ae48
Date: Wed, 16 Jul 2025 07:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752652193
