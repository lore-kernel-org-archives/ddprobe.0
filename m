Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CE4E18B48E
	for <ddprobe@lists.linux.dev>; Tue, 13 Aug 2024 10:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723543554; cv=none; b=NWvRmkhuA/Lr7FngRaaQykSwhxpr4uRims0/u/Z1SHRN/PS6PsZflEVHaq6BNOJ+57JIsdOv/5KSnQpOQsDsX54oAMIpGjsFtouHGbk5YTorbG5o1djTQN8cc5rGZTkbdRodBvP5FeAcfoXqXT8zeTNcaG0+omIJttMgNrtRL/U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723543554; c=relaxed/simple;
	bh=+OEXCL14CFavRp7OGuFxewsA7deUYhyuZjeC6umUoPA=;
	h=To:Subject:From:Message-Id:Date; b=PavN1kTdzM1pfMOY6RYZ7Gm/kE8UJbTS3rhdD4SZvWQO0FAzgaamJUAgoYiHPn+gysOTcaozlcpLlvO+u+vpybAAyGmNPJ2P+W7poJdw1DdJdF6i5p0sCEQ4tBZch9z1ABuP4yyb6Dv0sUJJEOiVGQX651ACUSPaWksoRA69z1E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GH/oysOn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GH/oysOn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A27D3C4AF0B
	for <ddprobe@lists.linux.dev>; Tue, 13 Aug 2024 10:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723543553;
	bh=+OEXCL14CFavRp7OGuFxewsA7deUYhyuZjeC6umUoPA=;
	h=To:Subject:From:Date:From;
	b=GH/oysOnWogD/DKnA71v8WxTRNpILm8QGGP09sv/7kU0wZ0FIcLt0lTNJTHOdZBAq
	 YXgSD/WIT/OdYStf13jqFcQ8ywYG4yHruxUF/36t1/6A0lfkbOyBVTIUNkU9HDm24j
	 RF/Fjn4wBqrcjD4aNhZU5VzKs8lk2T90wPyVTqc7ykmpOem8Q1SVFnOR3X6ce/PQhL
	 TDzkkWK/8+tCJ1bB0LZQXSVObaMe/FCYD7E8V7LzJaMoec/GDQRUkq0H5HzhVlC/EN
	 yXPtLlowk+u0TLdNyRNJSJNyBVt4G7V6YhgvPS9Vkp/REU8bZtzmjWZs0iTp4/mXzl
	 cyS/rAFc1vWYA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 956F8C52D7C
	for <ddprobe@lists.linux.dev>; Tue, 13 Aug 2024 10:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172354355360.25345.530515071371063450.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 40a4d3ff9a680c850b6330a5655c5d136c1492c1c1d513035dab7adfb24945ee
Date: Tue, 13 Aug 2024 10:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723543553
