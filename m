Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6779242E42B
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 09:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790156434; cv=none; b=L+CGcg5kLkUG6JtnVQXj5VH4McviGERs7giKlqirqC/DErafSMMgI29OBNtFToUe/SNvOrrJxcZzG4OsEY8xuJ0954jQUvo070AqEZPxOQN3qYywUvg+riNu1WTeSfSS5RzbSOqpsng7WrSOkm3j9mffX+MBLbd/R09zeOOc24E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790156434; c=relaxed/simple;
	bh=cU26AIuYP2gqbvGF7rZSLK36Y2skdM8n6r/19AsdFXg=;
	h=To:Subject:From:Message-Id:Date; b=t4biqmJ4Zj0C45m1BCe5PyNjsCkVBS4wai7HAGmVMdzjegdYTXFtgrshgeJFqfkI03WegG3M7pmKIT9D3ekjHpG7GCPh9UgStvKm/pbDnmiGbjRXT2WecO4s2nmX24OGt/N1qgSUzpmdvj/tiQH9RFgcesuuX2DK+m1iEWHso4k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cR5cPibt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cR5cPibt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA1E1C2BCF5
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 09:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790156433;
	bh=cU26AIuYP2gqbvGF7rZSLK36Y2skdM8n6r/19AsdFXg=;
	h=To:Subject:From:Date:From;
	b=cR5cPibtPnBmvPYB4RdF5xSQIsu5/Il0lQknbqmHS4KDuiY1V4eVSpLgW1DinvL2n
	 9HqodUE5VwIXJOmiU4YO0cfQ/ylbko1YZjHdFS/E/ggf/OGXNYMk1MvbtjWeVy4CQ+
	 8XzT3/f6m640Fss/oV7zp6cVuibWB4tAxG672hHluOXtwY9RUYdjdc3s86t/GDh/2I
	 u0Rt4ENKztFAAjKJt0qwKsLjICn/b1UbFTYgdiBNAWj1vBFC8Ka9ymsH5kEDJHAW6m
	 tfmHyS753saNNISOsKElJXTneFpwUsrwP+WvLtO9rUIPF466fkMDPTl5HaA67GUAEu
	 NdsrZmiQ21T8A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2C28C982EA
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 09:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179015643372.18399.1624012404228811778.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 878a53cd0d2fa4f4bc70b0521a0fc19eca8e205b61fe904135f10c5ced1d7c38
Date: Wed, 23 Sep 2026 09:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790156433
