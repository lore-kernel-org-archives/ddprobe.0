Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49C2133F5BF
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 21:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786654834; cv=none; b=rCWntNUCLuGpoJ3vQry/LdT2rpn/ZD+kN9uNiNwkeWmjRHc/cT1ja5z5GJMvCQkhGSWqQQVnBLAQRb1ba57asmWJ48FWkSL+2DKLLDQRvFZn4eORwrk3AK71koZjNZ8xs/PYZupLPLZF5fQYO2SxoDBy1i1g0kxBcIm6E1Bomhk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786654834; c=relaxed/simple;
	bh=BybtbBND98ecnEBzOXCOXM9nFujVXOmYoKqp1FhWtzs=;
	h=To:Subject:From:Message-Id:Date; b=CAzI4RVfEHuG/4TVRH2dTUigy9ITBaoLp40mD4Mlt4PdyARe8cSRDYZgQKoBsYUzx6GsWPvRPXoF8DfTr0Tdw+LQl85g6aqFz3QyRjbrH8tXwsjEd/Ym8LWmGPIRq5cW+1KO0IVvWlhBp4Iu0yryIC+9PgytzGpYno5veoJZ/GU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kw/dbGbR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kw/dbGbR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFC24C2BCC7
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 21:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786654833;
	bh=BybtbBND98ecnEBzOXCOXM9nFujVXOmYoKqp1FhWtzs=;
	h=To:Subject:From:Date:From;
	b=kw/dbGbR+ZqmQFc75o4d5SKApBM4WuGZFp+0FQwBRAGMBEhz1g0SWAKjiIxuzWKCP
	 D2DuDQj5zqw2uQUgZZSodxOlvcotaBCNzSkiprL4aDUIYxpdRckL7m3EAXVrjpZh/t
	 zTH7YeUmgWOL39EFNJ/y8TvGkK8rMNLeQohFOziOZvnR1GUCbrDTal8m8Z73Su7oGs
	 daD7rPVAs9v6qrkEmLl+fWNnnlWMH+bZOKxPwgxgOmqJ4JQ26BpP0B+0XBlu2LMUEc
	 waQycoBT3WouvblJhZa46B34vK/7BTYHlQTiI8m1C7AD/gsa5BpaRozYjAw+XEBDq4
	 i3EcRcmwb0m+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB739C5B572
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 21:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178665483369.20753.8968286743980553964.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 45e99d15fbc327b9f1f0f3f281930a5bb41cafc4f7e147c8d946fe4f916405e6
Date: Thu, 13 Aug 2026 21:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786654833
