Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51335284690
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 09:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789722034; cv=none; b=h7eUDDtgWX4nfdehh5fncn47s1IS73Dzki0JlcRV9yIqEShI2zwN3UGSO6PwJCLL40SYPzMkOP65BV7XdUTDxlM3DUcDO5VR9f/2cBgzUwSpTbwKyveMHYpWfoDBNw/3IhH7BCIsw+nCcSa3SVmAq7NSlQ/qEUtXkONuS2R5UPo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789722034; c=relaxed/simple;
	bh=wfXq5uP8itNNRL3AtpGHsC2CWtRWXdh9m1pjtQUyYkI=;
	h=To:Subject:From:Message-Id:Date; b=ak/0wtvD3yUzGVRemhuzQ2rr7kFD1UpyeupJyAsrD216yJZQZuJqVgSg2ynTsg++nL26/0sIz2JCgrfrvBe0La4Bswdn35/DYpSqsRQM4fizwNcSInjxR4595+mPlDswni+lVoz9UPtGJsr+hRkILmbXtfaVSERtyEOfdexRsGE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WGOilOh+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WGOilOh+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE0B8C2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 09:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789722033;
	bh=wfXq5uP8itNNRL3AtpGHsC2CWtRWXdh9m1pjtQUyYkI=;
	h=To:Subject:From:Date:From;
	b=WGOilOh+O+pICAFKOTvNAPIkcT/937K+pySCC+8ekTZnOHg+V/dewQ4z+xmy+dhh7
	 5zRrwWH3kA7Wb9MBNCMv2EliCXjSciMA2aOZZ6rj8wZ99oMdmosHhAG4J8It0txGC2
	 NXiwjGGaFZNibanBW0rVODg26nAkLvr5nkiO8D4drhHYqi0ODYsYGjXdpcVZxsNTke
	 AGF8PDggEhtJUvJhM9smEIJPpGklhyAR+NtdcviettV1DVN4SiZV8JFtxSTK0Djbaa
	 Tq0HinQW7t/WcgNDVu0qHTouFzV5mrKtHnaWVHqlE6MGhe/W4i8JBkpdgZhHFjc4nU
	 qzgYoHsGwGtHg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABF15C982D7
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 09:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178972203369.8473.5912685026525800483.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6e76f08663d5a22e277b88623fa4a06c8a7e96c64375fa94cc90cffa7740bb5a
Date: Fri, 18 Sep 2026 09:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789722033
