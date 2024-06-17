Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5CACD1E878
	for <ddprobe@lists.linux.dev>; Mon, 17 Jun 2024 02:48:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718592503; cv=none; b=o5s+Mw7aYFwaM7SeOYDWJmgTobvsnvBmJVUXVWeJ8dtSnmg0FuIGUguaKYCwUey05bpICvJ5mAikCFJ7b5J1WhbTeplvqGQrZDWsWxPU6RRgylVyh/FLm0TPX7IS6QIXDsGm2AMtEnlbY6yso8A1J3VYqOnNk2FoCZmamZOlMro=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718592503; c=relaxed/simple;
	bh=wp7NJvKmbxBDB8nbD4GzGu8DB6HSUqS7yvpeU2Ioh+4=;
	h=To:Subject:From:Message-Id:Date; b=PYgYhi8Tj/Vi6cLk8J+bM8GgIqWdbBOIMgsttD6xHPlnRu8riPECiwpjC5W/jzXL+hyTz3OfLvbnmbrniXjSOV1gCF++EwaLm0DJBHaBoTZsgJahy/++6pbS0KftJm8+sWSds3xP4Dom79eIzfouTmGon84/YaI9rhpZPRmGHhI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C//Z9hEY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C//Z9hEY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC5CBC2BBFC
	for <ddprobe@lists.linux.dev>; Mon, 17 Jun 2024 02:48:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718592502;
	bh=wp7NJvKmbxBDB8nbD4GzGu8DB6HSUqS7yvpeU2Ioh+4=;
	h=To:Subject:From:Date:From;
	b=C//Z9hEY721NRZ1ReVwwcohkG8xqKp9jUDOwGqxYakk1/4+s6zyGTklnAH/GquW5B
	 szv/hGEYgJakMfEnYQLLjdiZ+wHhAm1eS7rkTW52gVZnfEkMhjzROLDXL2dsrM4fks
	 pmjRHdnXBvT/NHe+wJZKRonUpC4UGh9/7bI+wooT+V9VI91P/lHxK+3kiTFLLioXgn
	 rm0SyA7PneEFefRH8CqgLIduYG+9/Lm3uuHhi8SxzDoqEr+YAPib8fp5FLKyRNwaPk
	 1/gBF0B1+8VHwqsWFKZt8PjolDk4cyZoe2P0AZr7W0iKVZ1r4l0APEPSppEddqsEvC
	 Vj9X2QyoJ4Gyw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C545DC27C77
	for <ddprobe@lists.linux.dev>; Mon, 17 Jun 2024 02:48:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171859250279.10566.4902429309180480824.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 69e7a9355dfe3a115818d3f52f12020add28da1e5a9f44ab4b8c63648aa26919
Date: Mon, 17 Jun 2024 02:48:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718592502
