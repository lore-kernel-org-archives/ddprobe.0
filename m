Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4813A23BF9F
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 01:58:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784339914; cv=none; b=q9U2+LIqJBDgH0CxLZNhXjLjHZjooMIeG1ckHYmBDPd2+AAGjyY8/z2nLNGg4P58KkVe0U/1CzHgr3u+KJVWmzsv2rWHl8u51j9c0W8PuPAG6HOjRoG7PkJopXnIeJ5ubPZ4zGPe46SzeeTnF8hqmdQKZxhvllJm2krC2QF1LGs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784339914; c=relaxed/simple;
	bh=NkTuJ+Z2WdR/Gu2eA6qARW+/hJMakQeW+AEsSDJHNbI=;
	h=To:Subject:From:Message-Id:Date; b=F4VTj5tczCRA4jLZdB6SXHpdAusTmfFwhClVGFYyJZKngfuTYMbZyUtUPJX1qKLtVDUkFAuuhIDpTAPkuSnGwDQPz1zvOOXljnfhR/o/JmH6fU8YzBde+B6cdQtVztNLISyPz5EMbLpZz9qGU6XJrQ1CC6vlffic9ZOWBZvu+3Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KLzCI08X; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KLzCI08X"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA294C2BCB8
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 01:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784339913;
	bh=NkTuJ+Z2WdR/Gu2eA6qARW+/hJMakQeW+AEsSDJHNbI=;
	h=To:Subject:From:Date:From;
	b=KLzCI08XGVZ4gSVAlN7rGUwjhRAA1WVdh3jvWdM0gwmR46onFYIvl5Ax494u+Vqoc
	 rqGkDBENlPI9Vfejc/moAzSXVxHy/oZ2urh8VPV1XpN8Ap0EQaXkw9U8OrCu5yqTkq
	 rizTyEP2BSa45I8DbFmucX1EGEOC3JQOIVe1Ocqj3JqsoGb1nV2b6sIei+dttN6wO1
	 OG2ZX50EGuqtAgfqfFfk+FQubIgthF+frIhq9NhL4eTyoI7detiYDHVC6kYUlPZNeX
	 mOWtbfrrQ8R4Yx0ZgcNTKI7uf2/c2QeCw1f4Hp9/XVDa5LV5UrjeKSvcP1J864nt9D
	 sGMamFtbtsuog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9EACC4451B
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 01:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178433991372.27321.2563026737901740314.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cff9dbb6cddc2d912fe12760a17d08fd664800f7e4bfbfdf0a5b719fbf035c0b
Date: Sat, 18 Jul 2026 01:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784339913
