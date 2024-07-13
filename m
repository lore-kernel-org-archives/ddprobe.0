Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7218C47F64
	for <ddprobe@lists.linux.dev>; Sat, 13 Jul 2024 10:20:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720866023; cv=none; b=ZVoko05YeNosZ/Qetmr+XBJJ0rJ2Dgz0jrLEPtC/2u+2mK9LvkBjkgQaPE7ZuDg8kpO+xk3O8am9mcLvqP8x7scObN+Q8kkPvj7KEzAtzjRsfgxRIV6jKEqi/jrTAenf892s5VE0RJrTLDns6CNCjFk4zaIs+LPi8ZYEeWkPHrE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720866023; c=relaxed/simple;
	bh=EnxcvULPpUQ2HpPfxw2ytvxbDQwmMe/SadF6ngd/tr0=;
	h=To:Subject:From:Message-Id:Date; b=McnLelLdXuRiLVcat+WW8yHoWEYbO2MAc2+A9CI4ign4alQW/PVYovylLu2UjrTX+RuUB/xmN6qfCohQJ4M23QGdKM1ia4CNa66palbVL8RsumvzNgeSZYhnRUeWpC3BcgP3pAjx7Ok6C99tmP0vDF1NrDnzUHBitjtqRRZJ86Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=knxVwDsa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="knxVwDsa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ECFEEC32781
	for <ddprobe@lists.linux.dev>; Sat, 13 Jul 2024 10:20:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720866023;
	bh=EnxcvULPpUQ2HpPfxw2ytvxbDQwmMe/SadF6ngd/tr0=;
	h=To:Subject:From:Date:From;
	b=knxVwDsaJinOyrBexOlnQbueLmEzKR2LHx4aXMD7ovAs0KWObzNTU5aDa/+9g3DT9
	 HGAoJzN5gZYRaHt8h+tIjes8h9ngRi87V/KuO8Mza22NbLpiil1MHKa2/xXBSkzk6X
	 xGejfjdKLIiUXjTOVzbaBfoZMk8rsv74HX/cvIAC24BtmC0WuwU+9JVPDr1Lq+l5eB
	 FYyrZ1EkZTnlyG5XnXxBnFk5CZZFY1hJWg27pcGQjUQ08c3+Xm/QndLxU1a73w07oo
	 R+D4jJhpZjbaPAKOfMNIZJCoMV5Oy/YkK7A6QqB2cpjbyqRI4bL9GbTnyb+fyQOww1
	 2d7c8vpF3ETPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CF6F6C3DA45
	for <ddprobe@lists.linux.dev>; Sat, 13 Jul 2024 10:20:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172086602282.20941.1183899695989535124.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 345f0efafac55ece516d618112d20d798b66db963ddde0c78a69e583a58c7b54
Date: Sat, 13 Jul 2024 10:20:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720866022
