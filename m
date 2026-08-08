Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 680471C5D59
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 21:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786222834; cv=none; b=l/XVugm7zt/sTb0Rj8W3ypDbIm3cjL0HdKlTJglOMdmz71LPhhycgHk1LwPS8mq+lIdpmGVvFdZE/el6g9hUiA5iS5zBEj9EPmiTo4Cy25kjyeBY84ln+kmCYGFC6ICWFkCo3fXA8S7Fz31WxtWPfH4T/Xl65C/igX+Q7euc9vM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786222834; c=relaxed/simple;
	bh=JsepFpZ9w+bVWf6cOC1YMlVGMeQ7WzlFMCGxpdbSKrw=;
	h=To:Subject:From:Message-Id:Date; b=Fj8JpFJBJnNHtZvCWgsvbyKJevOmqECCXzkiDTykEiUznz0LRZzvax1XGTqWsQZ8EtANonoTfFsrDcTfxAAQpoH2JlCRGJg0i0JYkaN78VrGYf2SYkD3rtrXA/NlNFjHAaDWWCeffnn3hq883sFwLpWdSLkJeEkZS/i4anAYuJI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jFdo3sjh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jFdo3sjh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id F3D89C2BCB8
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 21:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786222834;
	bh=JsepFpZ9w+bVWf6cOC1YMlVGMeQ7WzlFMCGxpdbSKrw=;
	h=To:Subject:From:Date:From;
	b=jFdo3sjh/neSC/LdJcTjG0ImMCcLRn7l7k8XCAcczwUusXtvCzzEqVU+2tsNBqp3W
	 h8eDuVwE6fIrcnnYvTne3dQtzKEsBvfXZdA+ztkq8JQClasD2+Y1CDCyLikUewhdm4
	 PuRgtddtcRWxQO6xoaPrfjJbaLBdUqcS4M+mAxlCaqbPvZS0X/Qp+ns9tImtdLXIaE
	 GTbC5QLDTS1wq97OEo1/wBa1vmzj/S9yXnXf6Uh5TX3VkupF5YAHizvQz8X22qiklB
	 kX8NqNVH/oex85orJRy9IHUvEGxdfZalU0NQ2vmk4lQQo3UHlLxMhdndiRWBk/SrBC
	 HNUuHHykwNc+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0220C5AD4E
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 21:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178622283369.10255.3684231535523740697.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: acdc5afb616986d9fb42810524c125403e635c8a9a90575ac3630e6c707331f7
Date: Sat, 08 Aug 2026 21:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786222833
