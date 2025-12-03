Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3953C21CC5B
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 06:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764743574; cv=none; b=ghXtto3sB/iXxCEYcp+h9dj7ErW0mJ5KGAcIPO967awiUjzfLGXK09WNJJozikeuBqBfdyMq9iuoGku0pHxI13s4eTmH2YAi6mpd+XQWtYXd1BKqvSAwIxwiiBHjx+dCX9E++Gf85sn3VDKVrzm4ED8TMYDG0ZV0VpRgVD2/MEQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764743574; c=relaxed/simple;
	bh=helFCYdVbNMp1zG5aUM5Z6gso9zU3v2NzIscfTc+vdM=;
	h=To:Subject:From:Message-Id:Date; b=F+1FpCuj4+O2LRPFUukfGuCFiziQpSmXD/oDF8z3ReibnpER9mwoiYEXx8JXqA19Sqf0tBkxrWPZbjVU1ndTSozw8FKT1axM4k8jg8UNCXnJBCLV4NM+ycGuAl02hjAHoNiI/vaQnIo+oJCYeEpTdJ7dtHoqqs1XwMz9Yyohu2s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nYsTCXHc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nYsTCXHc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEE9AC16AAE
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 06:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764743573;
	bh=helFCYdVbNMp1zG5aUM5Z6gso9zU3v2NzIscfTc+vdM=;
	h=To:Subject:From:Date:From;
	b=nYsTCXHcZ3XFq5VfjDLbb9SBY1Ls8lYzZqGvY0q4o5yJniCWRqwHWNPyHgfx8hjAI
	 5xTALp6agCecJnEtglQ+qLaMVC/ufCqEwjkvFasrTsLVkbRh+F4Sda9LT3QFIJoLQg
	 6nAG4aAp3v4qFJdyysp8cdy96dAMvVeDHGbhqJotaWJi/3YLun2UUzP9oKjYZvOaI/
	 DOzvbxaOaAJXceq1Ab17Xw7cGHNK3RvEJA+eMSAkj6p70+F8MNpVU8EsSGvPbZvkpA
	 Bq2pf8+We45WFIbaIqu+yDFfKhHOG1G4LyHybVeT2+w0Vou442pk5FAZUgdPiuff69
	 udPC6xiOuV6mA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AB85D1266D
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 06:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176474357360.4337.3851686040505492907.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b62f9fec7e3da4e9003f7108a398bb31bb95fecc09897c97cff44cf837d518a9
Date: Wed, 03 Dec 2025 06:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764743573
